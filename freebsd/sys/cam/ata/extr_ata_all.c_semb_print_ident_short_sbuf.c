
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sep_identify_data {int firmware_rev; int product_rev; int product_id; int vendor_id; } ;
struct sbuf {int dummy; } ;


 int cam_strvis_sbuf (struct sbuf*,int ,int,int ) ;
 int sbuf_printf (struct sbuf*,char*) ;

void
semb_print_ident_short_sbuf(struct sep_identify_data *ident_data, struct sbuf *sb)
{

 sbuf_printf(sb, "<");
 cam_strvis_sbuf(sb, ident_data->vendor_id, 8, 0);
 sbuf_printf(sb, " ");
 cam_strvis_sbuf(sb, ident_data->product_id, 16, 0);
 sbuf_printf(sb, " ");
 cam_strvis_sbuf(sb, ident_data->product_rev, 4, 0);
 sbuf_printf(sb, " ");
 cam_strvis_sbuf(sb, ident_data->firmware_rev, 4, 0);
 sbuf_printf(sb, ">");
}
