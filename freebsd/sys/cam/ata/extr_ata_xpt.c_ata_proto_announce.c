
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_ed {int ident_data; } ;


 int ata_print_ident (int *) ;

__attribute__((used)) static void
ata_proto_announce(struct cam_ed *device)
{
 ata_print_ident(&device->ident_data);
}
