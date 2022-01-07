
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct amdvi_softc {int dev; } ;
struct amdvi_cmd {int word0; int opcode; } ;


 int AMDVI_INVD_DTE_OPCODE ;
 int KASSERT (int ,char*) ;
 struct amdvi_cmd* amdvi_get_cmd_tail (struct amdvi_softc*) ;
 int amdvi_update_cmd_tail (struct amdvi_softc*) ;
 int device_printf (int ,char*,int ) ;

__attribute__((used)) static void
amdvi_cmd_inv_dte(struct amdvi_softc *softc, uint16_t devid)
{
 struct amdvi_cmd *cmd;

 cmd = amdvi_get_cmd_tail(softc);
 KASSERT(cmd != ((void*)0), ("Cmd is NULL"));
 cmd->opcode = AMDVI_INVD_DTE_OPCODE;
 cmd->word0 = devid;
 amdvi_update_cmd_tail(softc);



}
