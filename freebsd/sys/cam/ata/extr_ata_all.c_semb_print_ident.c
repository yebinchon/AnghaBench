
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sep_identify_data {int interface_rev; int interface_id; } ;
typedef int ins ;
typedef int in ;


 int cam_strvis (char*,int ,int,int) ;
 int printf (char*,char*,char*) ;
 int semb_print_ident_short (struct sep_identify_data*) ;

void
semb_print_ident(struct sep_identify_data *ident_data)
{
 char in[7], ins[5];

 semb_print_ident_short(ident_data);
 cam_strvis(in, ident_data->interface_id, 6, sizeof(in));
 cam_strvis(ins, ident_data->interface_rev, 4, sizeof(ins));
 printf(" SEMB %s %s device\n", in, ins);
}
