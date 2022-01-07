
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct amdvi_softc {int dev; } ;
struct amdvi_cmd {int dummy; } ;


 int AMDVI_INVD_PAGE_ALL_ADDR ;
 int KASSERT (int ,char*) ;
 int amdvi_cmd_inv_iommu_pages (struct amdvi_softc*,int ,int ,int,int,int) ;
 struct amdvi_cmd* amdvi_get_cmd_tail (struct amdvi_softc*) ;
 int device_printf (int ,char*,int ) ;

__attribute__((used)) static void
amdvi_inv_domain(struct amdvi_softc *softc, uint16_t domain_id)
{
 struct amdvi_cmd *cmd;

 cmd = amdvi_get_cmd_tail(softc);
 KASSERT(cmd != ((void*)0), ("Cmd is NULL"));





 amdvi_cmd_inv_iommu_pages(softc, domain_id, AMDVI_INVD_PAGE_ALL_ADDR,
    0, 1, 1);





}
