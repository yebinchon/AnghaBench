
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;
struct cam_ed {int nvme_data; int nvme_cdata; } ;
typedef int buffer ;


 int SBUF_FIXEDLEN ;
 int nvme_print_ident (int ,int ,struct sbuf*) ;
 int sbuf_finish (struct sbuf*) ;
 int sbuf_new (struct sbuf*,char*,int,int ) ;
 int sbuf_putbuf (struct sbuf*) ;

__attribute__((used)) static void
nvme_proto_announce(struct cam_ed *device)
{
 struct sbuf sb;
 char buffer[120];

 sbuf_new(&sb, buffer, sizeof(buffer), SBUF_FIXEDLEN);
 nvme_print_ident(device->nvme_cdata, device->nvme_data, &sb);
 sbuf_finish(&sb);
 sbuf_putbuf(&sb);
}
