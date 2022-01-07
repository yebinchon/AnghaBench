
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_2__ {int starved; int available_space; int underruns; int retrieved_samples; int submitted_samples; int callbacks; } ;
struct bcm2835_audio_info {TYPE_1__ pch; int dev; } ;


 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLTYPE_UINT ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,int ,char*) ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,struct bcm2835_audio_info*,int,int ,char*,char*) ;
 int SYSCTL_ADD_UQUAD (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int sysctl_bcm2835_audio_dest ;

__attribute__((used)) static void
vchi_audio_sysctl_init(struct bcm2835_audio_info *sc)
{
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid *tree_node;
 struct sysctl_oid_list *tree;




 ctx = device_get_sysctl_ctx(sc->dev);
 tree_node = device_get_sysctl_tree(sc->dev);
 tree = SYSCTL_CHILDREN(tree_node);
 SYSCTL_ADD_PROC(ctx, tree, OID_AUTO, "dest",
     CTLFLAG_RW | CTLTYPE_UINT, sc, sizeof(*sc),
     sysctl_bcm2835_audio_dest, "IU", "audio destination, "
     "0 - auto, 1 - headphones, 2 - HDMI");
 SYSCTL_ADD_UQUAD(ctx, tree, OID_AUTO, "callbacks",
   CTLFLAG_RD, &sc->pch.callbacks,
   "callbacks total");
 SYSCTL_ADD_UQUAD(ctx, tree, OID_AUTO, "submitted",
   CTLFLAG_RD, &sc->pch.submitted_samples,
   "last play submitted samples");
 SYSCTL_ADD_UQUAD(ctx, tree, OID_AUTO, "retrieved",
   CTLFLAG_RD, &sc->pch.retrieved_samples,
   "last play retrieved samples");
 SYSCTL_ADD_UQUAD(ctx, tree, OID_AUTO, "underruns",
   CTLFLAG_RD, &sc->pch.underruns,
   "callback underruns");
 SYSCTL_ADD_INT(ctx, tree, OID_AUTO, "freebuffer",
   CTLFLAG_RD, &sc->pch.available_space,
   sc->pch.available_space, "callbacks total");
 SYSCTL_ADD_INT(ctx, tree, OID_AUTO, "starved",
   CTLFLAG_RD, &sc->pch.starved,
   sc->pch.starved, "number of starved conditions");
}
