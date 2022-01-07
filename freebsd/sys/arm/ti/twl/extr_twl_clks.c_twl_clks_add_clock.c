
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint8_t ;
struct twl_clks_softc {int sc_clks_list; int sc_dev; } ;
struct twl_clk_entry {char* name; int oid; void* reg_off; void* sub_dev; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;


 int CTLFLAG_RD ;
 int CTLTYPE_INT ;
 int LIST_INSERT_HEAD (int *,struct twl_clk_entry*,int ) ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,int ,int ,char const*,int,struct twl_clks_softc*,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int TWL_CLKS_ASSERT_LOCKED (struct twl_clks_softc*) ;
 int TWL_CLKS_MAX_NAMELEN ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int link ;
 struct twl_clk_entry* malloc (int,int ,int) ;
 int strncpy (char*,char const*,int) ;
 int twl_clks_sysctl_clock ;

__attribute__((used)) static struct twl_clk_entry*
twl_clks_add_clock(struct twl_clks_softc *sc, const char *name,
 uint8_t nsub, uint8_t regbase)
{
 struct sysctl_ctx_list *ctx = device_get_sysctl_ctx(sc->sc_dev);
 struct sysctl_oid *tree = device_get_sysctl_tree(sc->sc_dev);
 struct twl_clk_entry *new;

 TWL_CLKS_ASSERT_LOCKED(sc);

 new = malloc(sizeof(struct twl_clk_entry), M_DEVBUF, M_NOWAIT | M_ZERO);
 if (new == ((void*)0))
  return (((void*)0));


 strncpy(new->name, name, TWL_CLKS_MAX_NAMELEN);
 new->name[TWL_CLKS_MAX_NAMELEN - 1] = '\0';

 new->sub_dev = nsub;
 new->reg_off = regbase;




 new->oid = SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO, name,
     CTLTYPE_INT | CTLFLAG_RD, sc, 0,
     twl_clks_sysctl_clock, "I", "external clock");


 LIST_INSERT_HEAD(&sc->sc_clks_list, new, link);

 return (new);
}
