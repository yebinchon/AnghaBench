
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;
struct cam_path {int dummy; } ;


 int SBUF_FIXEDLEN ;
 int XPT_PRINT_LEN ;
 int printf (char*,char*) ;
 char* sbuf_data (struct sbuf*) ;
 int sbuf_delete (struct sbuf*) ;
 int sbuf_finish (struct sbuf*) ;
 int sbuf_new (struct sbuf*,char*,int,int ) ;
 int xpt_path_sbuf (struct cam_path*,struct sbuf*) ;

void
xpt_print_path(struct cam_path *path)
{
 struct sbuf sb;
 char buffer[XPT_PRINT_LEN];

 sbuf_new(&sb, buffer, XPT_PRINT_LEN, SBUF_FIXEDLEN);
 xpt_path_sbuf(path, &sb);
 sbuf_finish(&sb);
 printf("%s", sbuf_data(&sb));
 sbuf_delete(&sb);
}
