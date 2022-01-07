
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct acpi_asus_softc {int s_brn; int s_disp; int s_lcd; int s_cam; int s_crd; int s_wlan; TYPE_2__* model; int handle; } ;
struct TYPE_12__ {int Length; TYPE_4__* Pointer; } ;
struct TYPE_8__ {int Value; } ;
struct TYPE_11__ {void* Type; TYPE_1__ Integer; } ;
struct TYPE_10__ {int Count; TYPE_4__* Pointer; } ;
struct TYPE_9__ {int wlan_get; int crd_get; int cam_get; int lcd_get; int name; int disp_get; int brn_dn; int brn_up; int brn_get; } ;
typedef int Obj ;
typedef int ACPI_STATUS ;
typedef TYPE_3__ ACPI_OBJECT_LIST ;
typedef TYPE_4__ ACPI_OBJECT ;
typedef TYPE_5__ ACPI_BUFFER ;
 int ACPI_FAILURE (int ) ;
 int ACPI_SUCCESS (int ) ;
 void* ACPI_TYPE_INTEGER ;
 int AcpiEvaluateObject (int ,int ,TYPE_3__*,TYPE_5__*) ;
 int FALSE ;
 int TRUE ;
 int acpi_GetInteger (int ,int ,int*) ;
 int strncmp (int ,char*,int) ;

__attribute__((used)) static int
acpi_asus_sysctl_init(struct acpi_asus_softc *sc, int method)
{
 ACPI_STATUS status;

 switch (method) {
 case 133:
  if (sc->model->brn_get) {

   status = acpi_GetInteger(sc->handle,
       sc->model->brn_get, &sc->s_brn);
   if (ACPI_SUCCESS(status))
    return (TRUE);
  } else if (sc->model->brn_up) {

   status = AcpiEvaluateObject(sc->handle,
       sc->model->brn_up, ((void*)0), ((void*)0));
   if (ACPI_FAILURE(status))
    return (FALSE);

   status = AcpiEvaluateObject(sc->handle,
       sc->model->brn_dn, ((void*)0), ((void*)0));
   if (ACPI_FAILURE(status))
    return (FALSE);

   return (TRUE);
  }
  return (FALSE);
 case 130:
  if (sc->model->disp_get) {
   status = acpi_GetInteger(sc->handle,
       sc->model->disp_get, &sc->s_disp);
   if (ACPI_SUCCESS(status))
    return (TRUE);
  }
  return (FALSE);
 case 129:
  if (sc->model->lcd_get) {
   if (strncmp(sc->model->name, "L3H", 3) == 0) {
    ACPI_BUFFER Buf;
    ACPI_OBJECT Arg[2], Obj;
    ACPI_OBJECT_LIST Args;


    Arg[0].Type = ACPI_TYPE_INTEGER;
    Arg[0].Integer.Value = 0x02;
    Arg[1].Type = ACPI_TYPE_INTEGER;
    Arg[1].Integer.Value = 0x03;

    Args.Count = 2;
    Args.Pointer = Arg;

    Buf.Length = sizeof(Obj);
    Buf.Pointer = &Obj;

    status = AcpiEvaluateObject(sc->handle,
        sc->model->lcd_get, &Args, &Buf);
    if (ACPI_SUCCESS(status) &&
        Obj.Type == ACPI_TYPE_INTEGER) {
     sc->s_lcd = Obj.Integer.Value >> 8;
     return (TRUE);
    }
   } else {
    status = acpi_GetInteger(sc->handle,
        sc->model->lcd_get, &sc->s_lcd);
    if (ACPI_SUCCESS(status))
     return (TRUE);
   }
  }
  return (FALSE);
 case 132:
  if (sc->model->cam_get) {
   status = acpi_GetInteger(sc->handle,
       sc->model->cam_get, &sc->s_cam);
   if (ACPI_SUCCESS(status))
    return (TRUE);
  }
  return (FALSE);
 case 131:
  if (sc->model->crd_get) {
   status = acpi_GetInteger(sc->handle,
       sc->model->crd_get, &sc->s_crd);
   if (ACPI_SUCCESS(status))
    return (TRUE);
  }
  return (FALSE);
 case 128:
  if (sc->model->wlan_get) {
   status = acpi_GetInteger(sc->handle,
       sc->model->wlan_get, &sc->s_wlan);
   if (ACPI_SUCCESS(status))
    return (TRUE);
  }
  return (FALSE);
 }
 return (FALSE);
}
