
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct amdvi_softc {int cmp_data; } ;
struct amdvi_cmd {int word0; int word1; int addr; int opcode; } ;


 int AMDVI_CMP_WAIT_OPCODE ;
 int AMDVI_CMP_WAIT_STORE ;
 int KASSERT (int ,char*) ;
 struct amdvi_cmd* amdvi_get_cmd_tail (struct amdvi_softc*) ;
 int amdvi_update_cmd_tail (struct amdvi_softc*) ;
 int vtophys (int *) ;

__attribute__((used)) static void
amdvi_cmd_cmp(struct amdvi_softc *softc, const uint64_t data)
{
 struct amdvi_cmd *cmd;
 uint64_t pa;

 cmd = amdvi_get_cmd_tail(softc);
 KASSERT(cmd != ((void*)0), ("Cmd is NULL"));

 pa = vtophys(&softc->cmp_data);
 cmd->opcode = AMDVI_CMP_WAIT_OPCODE;
 cmd->word0 = (pa & 0xFFFFFFF8) |
     (AMDVI_CMP_WAIT_STORE);

 cmd->word1 = (pa >> 32) & 0xFFFFF;
 cmd->addr = data;

 amdvi_update_cmd_tail(softc);
}
