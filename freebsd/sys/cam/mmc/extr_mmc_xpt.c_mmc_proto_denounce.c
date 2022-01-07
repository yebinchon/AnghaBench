
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_ed {int mmc_ident_data; } ;


 int mmc_print_ident (int *) ;

__attribute__((used)) static void
mmc_proto_denounce(struct cam_ed *device)
{
 mmc_print_ident(&device->mmc_ident_data);
}
