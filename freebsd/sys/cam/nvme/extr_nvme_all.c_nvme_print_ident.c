
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;
struct nvme_namespace_data {int dummy; } ;
struct nvme_controller_data {int sn; int fr; int mn; } ;


 int cam_strvis_sbuf (struct sbuf*,int ,int,int ) ;
 int sbuf_printf (struct sbuf*,char*) ;

void
nvme_print_ident(const struct nvme_controller_data *cdata,
    const struct nvme_namespace_data *data, struct sbuf *sb)
{

 sbuf_printf(sb, "<");
 cam_strvis_sbuf(sb, cdata->mn, sizeof(cdata->mn), 0);
 sbuf_printf(sb, " ");
 cam_strvis_sbuf(sb, cdata->fr, sizeof(cdata->fr), 0);
 sbuf_printf(sb, " ");
 cam_strvis_sbuf(sb, cdata->sn, sizeof(cdata->sn), 0);
 sbuf_printf(sb, ">\n");
}
