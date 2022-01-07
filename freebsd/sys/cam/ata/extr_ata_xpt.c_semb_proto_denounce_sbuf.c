
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sep_identify_data {int dummy; } ;
struct sbuf {int dummy; } ;
struct cam_ed {int ident_data; } ;


 int semb_print_ident_short_sbuf (struct sep_identify_data*,struct sbuf*) ;

__attribute__((used)) static void
semb_proto_denounce_sbuf(struct cam_ed *device, struct sbuf *sb)
{
 semb_print_ident_short_sbuf((struct sep_identify_data *)&device->ident_data, sb);
}
