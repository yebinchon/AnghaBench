
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct twl_vreg_softc {int sc_vreg_list; int sc_dev; } ;
struct twl_regulator_entry {char* name; int oid; int num_supp_voltages; int const* supp_voltages; int fixed_voltage; void* reg_off; void* sub_dev; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;


 int CTLFLAG_RD ;
 int CTLTYPE_INT ;
 int LIST_INSERT_HEAD (int *,struct twl_regulator_entry*,int ) ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,int ,int ,char const*,int,struct twl_vreg_softc*,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int TWL_VREG_MAX_NAMELEN ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int entries ;
 struct twl_regulator_entry* malloc (int,int ,int) ;
 int strncpy (char*,char const*,int) ;
 int twl_vreg_sysctl_voltage ;

__attribute__((used)) static struct twl_regulator_entry*
twl_vreg_add_regulator(struct twl_vreg_softc *sc, const char *name,
 uint8_t nsub, uint8_t regbase, uint16_t fixed_voltage,
 const uint16_t *voltages, uint32_t num_voltages)
{
 struct sysctl_ctx_list *ctx = device_get_sysctl_ctx(sc->sc_dev);
 struct sysctl_oid *tree = device_get_sysctl_tree(sc->sc_dev);
 struct twl_regulator_entry *new;

 new = malloc(sizeof(struct twl_regulator_entry), M_DEVBUF, M_NOWAIT | M_ZERO);
 if (new == ((void*)0))
  return (((void*)0));


 strncpy(new->name, name, TWL_VREG_MAX_NAMELEN);
 new->name[TWL_VREG_MAX_NAMELEN - 1] = '\0';

 new->sub_dev = nsub;
 new->reg_off = regbase;

 new->fixed_voltage = fixed_voltage;

 new->supp_voltages = voltages;
 new->num_supp_voltages = num_voltages;



 new->oid = SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO, name,
     CTLTYPE_INT | CTLFLAG_RD, sc, 0,
     twl_vreg_sysctl_voltage, "I", "voltage regulator");


 LIST_INSERT_HEAD(&sc->sc_vreg_list, new, entries);

 return (new);
}
