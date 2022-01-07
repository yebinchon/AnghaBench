
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;
struct cam_ed {int ident_data; } ;


 int ata_print_ident_short_sbuf (int *,struct sbuf*) ;

__attribute__((used)) static void
ata_proto_denounce_sbuf(struct cam_ed *device, struct sbuf *sb)
{
 ata_print_ident_short_sbuf(&device->ident_data, sb);
}
