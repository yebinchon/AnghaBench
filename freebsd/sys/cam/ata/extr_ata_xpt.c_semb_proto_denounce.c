
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sep_identify_data {int dummy; } ;
struct cam_ed {int ident_data; } ;


 int semb_print_ident_short (struct sep_identify_data*) ;

__attribute__((used)) static void
semb_proto_denounce(struct cam_ed *device)
{
 semb_print_ident_short((struct sep_identify_data *)&device->ident_data);
}
