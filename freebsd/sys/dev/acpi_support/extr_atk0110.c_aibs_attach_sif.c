
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct sysctl_oid {int dummy; } ;
struct aibs_softc {int sc_dev; struct aibs_sensor* sc_asens_fan; struct aibs_sensor* sc_asens_temp; struct aibs_sensor* sc_asens_volt; int sc_ah; struct sysctl_oid* sc_fan_sysctl; struct sysctl_oid* sc_temp_sysctl; struct sysctl_oid* sc_volt_sysctl; } ;
struct aibs_sensor {int dummy; } ;
struct TYPE_11__ {TYPE_3__* Pointer; int Length; } ;
struct TYPE_9__ {int Count; TYPE_3__* Elements; } ;
struct TYPE_8__ {int Value; } ;
struct TYPE_10__ {scalar_t__ Type; TYPE_2__ Package; TYPE_1__ Integer; } ;
typedef int ACPI_STATUS ;
typedef TYPE_3__ ACPI_OBJECT ;
typedef TYPE_4__ ACPI_BUFFER ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_TYPE_INTEGER ;
 int ACPI_TYPE_PACKAGE ;



 int AcpiEvaluateObjectTyped (int ,char*,int *,TYPE_4__*,int ) ;
 int AcpiOsFree (TYPE_3__*) ;
 int CTLFLAG_RD ;
 int ENXIO ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 struct sysctl_oid* SYSCTL_ADD_NODE (int ,int ,int,char const*,int ,int *,int *) ;
 int SYSCTL_CHILDREN (int ) ;
 int aibs_add_sensor (struct aibs_softc*,TYPE_3__*,struct aibs_sensor*,char const**) ;
 int aibs_sensor_added (struct aibs_softc*,struct sysctl_oid*,char const*,int,struct aibs_sensor*,char const*) ;
 int device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 int device_printf (int ,char*,char*,...) ;
 struct aibs_sensor* malloc (int,int ,int) ;
 int panic (char*,int) ;

__attribute__((used)) static int
aibs_attach_sif(struct aibs_softc *sc, int st)
{
 char name[] = "?SIF";
 ACPI_STATUS s;
 ACPI_BUFFER b;
 ACPI_OBJECT *bp, *o;
 const char *node;
 struct aibs_sensor *as;
 struct sysctl_oid **so;
 int i, n;
 int err;

 switch (st) {
 case 128:
  node = "volt";
  name[0] = 'V';
  so = &sc->sc_volt_sysctl;
  break;
 case 129:
  node = "temp";
  name[0] = 'T';
  so = &sc->sc_temp_sysctl;
  break;
 case 130:
  node = "fan";
  name[0] = 'F';
  so = &sc->sc_fan_sysctl;
  break;
 default:
  panic("Unsupported sensor type %d", st);
 }

 b.Length = ACPI_ALLOCATE_BUFFER;
 s = AcpiEvaluateObjectTyped(sc->sc_ah, name, ((void*)0), &b,
     ACPI_TYPE_PACKAGE);
 if (ACPI_FAILURE(s)) {
  device_printf(sc->sc_dev, "%s not found\n", name);
  return (ENXIO);
 }

 bp = b.Pointer;
 o = bp->Package.Elements;
 if (o[0].Type != ACPI_TYPE_INTEGER) {
  device_printf(sc->sc_dev, "%s[0]: invalid type\n", name);
  AcpiOsFree(b.Pointer);
  return (ENXIO);
 }

 n = o[0].Integer.Value;
 if (bp->Package.Count - 1 < n) {
  device_printf(sc->sc_dev, "%s: invalid package\n", name);
  AcpiOsFree(b.Pointer);
  return (ENXIO);
 } else if (bp->Package.Count - 1 > n) {
  int on = n;




  device_printf(sc->sc_dev, "%s: malformed package: %i/%i"
      ", assume %i\n", name, on, bp->Package.Count - 1, n);
 }
 if (n < 1) {
  device_printf(sc->sc_dev, "%s: no members in the package\n",
      name);
  AcpiOsFree(b.Pointer);
  return (ENXIO);
 }

 as = malloc(sizeof(*as) * n, M_DEVBUF, M_WAITOK | M_ZERO);
 switch (st) {
 case 128:
  sc->sc_asens_volt = as;
  break;
 case 129:
  sc->sc_asens_temp = as;
  break;
 case 130:
  sc->sc_asens_fan = as;
  break;
 }


 *so = SYSCTL_ADD_NODE(device_get_sysctl_ctx(sc->sc_dev),
     SYSCTL_CHILDREN(device_get_sysctl_tree(sc->sc_dev)), st,
     node, CTLFLAG_RD, ((void*)0), ((void*)0));

 for (i = 0, o++; i < n; i++, o++) {
  const char *descr;

  err = aibs_add_sensor(sc, o, &as[i], &descr);
  if (err == 0)
   aibs_sensor_added(sc, *so, node, i, &as[i], descr);
 }

 AcpiOsFree(b.Pointer);
 return (0);
}
