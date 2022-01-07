
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct bcmsc_softc {int dev; } ;


 int CTLFLAG_RW ;
 int CTLTYPE_UINT ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,struct bcmsc_softc*,int,int ,char*,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int bcm_fb_resync_sysctl ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;

__attribute__((used)) static void
bcm_fb_sysctl_init(struct bcmsc_softc *sc)
{
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid *tree_node;
 struct sysctl_oid_list *tree;




 ctx = device_get_sysctl_ctx(sc->dev);
 tree_node = device_get_sysctl_tree(sc->dev);
 tree = SYSCTL_CHILDREN(tree_node);
 SYSCTL_ADD_PROC(ctx, tree, OID_AUTO, "resync",
     CTLFLAG_RW | CTLTYPE_UINT, sc, sizeof(*sc),
     bcm_fb_resync_sysctl, "IU", "Set to resync framebuffer with VC");
}
