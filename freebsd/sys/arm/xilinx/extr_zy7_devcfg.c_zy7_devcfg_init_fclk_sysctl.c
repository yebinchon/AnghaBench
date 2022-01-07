
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct zy7_devcfg_softc {int sysctl_tree; struct sysctl_oid* sysctl_tree_top; } ;
struct sysctl_oid {int dummy; } ;
typedef int fclk_num ;
struct TYPE_3__ {int actual_frequency; } ;


 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int CTLTYPE_STRING ;
 int FCLK_NUM ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (int *,int ,int ,char*,int ,int *,int,char*) ;
 void* SYSCTL_ADD_NODE (int *,int ,int ,char*,int ,int ,char*) ;
 int SYSCTL_ADD_PROC (int *,int ,int ,char*,int,TYPE_1__*,int,int ,char*,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int SYSCTL_STATIC_CHILDREN (int ) ;
 int _hw_fpga ;
 TYPE_1__* fclk_configs ;
 int snprintf (char*,int,char*,int) ;
 int sysctl_ctx_free (int *) ;
 int sysctl_ctx_init (int *) ;
 int zy7_devcfg_fclk_sysctl_freq ;
 int zy7_devcfg_fclk_sysctl_source ;

__attribute__((used)) static int
zy7_devcfg_init_fclk_sysctl(struct zy7_devcfg_softc *sc)
{
 struct sysctl_oid *fclk_node;
 char fclk_num[4];
 int i;

 sysctl_ctx_init(&sc->sysctl_tree);
 sc->sysctl_tree_top = SYSCTL_ADD_NODE(&sc->sysctl_tree,
     SYSCTL_STATIC_CHILDREN(_hw_fpga), OID_AUTO, "fclk",
     CTLFLAG_RD, 0, "");
 if (sc->sysctl_tree_top == ((void*)0)) {
  sysctl_ctx_free(&sc->sysctl_tree);
  return (-1);
 }

 for (i = 0; i < FCLK_NUM; i++) {
  snprintf(fclk_num, sizeof(fclk_num), "%d", i);
  fclk_node = SYSCTL_ADD_NODE(&sc->sysctl_tree,
      SYSCTL_CHILDREN(sc->sysctl_tree_top), OID_AUTO, fclk_num,
      CTLFLAG_RD, 0, "");

  SYSCTL_ADD_INT(&sc->sysctl_tree,
      SYSCTL_CHILDREN(fclk_node), OID_AUTO,
      "actual_freq", CTLFLAG_RD,
      &fclk_configs[i].actual_frequency, i,
      "Actual frequency");
  SYSCTL_ADD_PROC(&sc->sysctl_tree,
      SYSCTL_CHILDREN(fclk_node), OID_AUTO,
      "freq", CTLFLAG_RW | CTLTYPE_INT,
      &fclk_configs[i], i,
      zy7_devcfg_fclk_sysctl_freq,
      "I", "Configured frequency");
  SYSCTL_ADD_PROC(&sc->sysctl_tree,
      SYSCTL_CHILDREN(fclk_node), OID_AUTO,
      "source", CTLFLAG_RW | CTLTYPE_STRING,
      &fclk_configs[i], i,
      zy7_devcfg_fclk_sysctl_source,
      "A", "Clock source");
 }

 return (0);
}
