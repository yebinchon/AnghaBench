
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sep_identify_data {int interface_rev; int interface_id; } ;
struct sbuf {int dummy; } ;


 int cam_strvis_sbuf (struct sbuf*,int ,int,int ) ;
 int sbuf_printf (struct sbuf*,char*) ;
 int semb_print_ident_short_sbuf (struct sep_identify_data*,struct sbuf*) ;

void
semb_print_ident_sbuf(struct sep_identify_data *ident_data, struct sbuf *sb)
{

 semb_print_ident_short_sbuf(ident_data, sb);

 sbuf_printf(sb, " SEMB ");
 cam_strvis_sbuf(sb, ident_data->interface_id, 6, 0);
 sbuf_printf(sb, " ");
 cam_strvis_sbuf(sb, ident_data->interface_rev, 4, 0);
 sbuf_printf(sb, " device\n");
}
