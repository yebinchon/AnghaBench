
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;
struct ata_params {int revision; int model; } ;


 int cam_strvis_sbuf (struct sbuf*,int ,int,int ) ;
 int sbuf_printf (struct sbuf*,char*) ;

void
ata_print_ident_short_sbuf(struct ata_params *ident_data, struct sbuf *sb)
{

 sbuf_printf(sb, "<");
 cam_strvis_sbuf(sb, ident_data->model, sizeof(ident_data->model), 0);
 sbuf_printf(sb, " ");
 cam_strvis_sbuf(sb, ident_data->revision, sizeof(ident_data->revision), 0);
 sbuf_printf(sb, ">");
}
