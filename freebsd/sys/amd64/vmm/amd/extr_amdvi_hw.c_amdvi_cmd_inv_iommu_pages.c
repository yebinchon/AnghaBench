
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint16_t ;
struct amdvi_softc {int dummy; } ;
struct amdvi_cmd {int addr; int word1; int opcode; } ;


 int AMDVI_INVD_PAGE_OPCODE ;
 int AMDVI_INVD_PAGE_PDE ;
 int AMDVI_INVD_PAGE_S ;
 int KASSERT (int ,char*) ;
 struct amdvi_cmd* amdvi_get_cmd_tail (struct amdvi_softc*) ;
 int amdvi_update_cmd_tail (struct amdvi_softc*) ;

__attribute__((used)) static void
amdvi_cmd_inv_iommu_pages(struct amdvi_softc *softc, uint16_t domain_id,
     uint64_t addr, bool guest_nested,
     bool pde, bool page)
{
 struct amdvi_cmd *cmd;

 cmd = amdvi_get_cmd_tail(softc);
 KASSERT(cmd != ((void*)0), ("Cmd is NULL"));


 cmd->opcode = AMDVI_INVD_PAGE_OPCODE;
 cmd->word1 = domain_id;



 cmd->addr = addr;
 cmd->addr |= pde ? AMDVI_INVD_PAGE_PDE : 0;
 cmd->addr |= page ? AMDVI_INVD_PAGE_S : 0;

 amdvi_update_cmd_tail(softc);
}
