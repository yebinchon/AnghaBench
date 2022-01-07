
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;
struct cam_path {int dummy; } ;


 int sbuf_finish (struct sbuf*) ;
 int sbuf_new (struct sbuf*,char*,size_t,int ) ;
 int xpt_path_sbuf (struct cam_path*,struct sbuf*) ;

int
xpt_path_string(struct cam_path *path, char *str, size_t str_len)
{
 struct sbuf sb;
 int len;

 sbuf_new(&sb, str, str_len, 0);
 len = xpt_path_sbuf(path, &sb);
 sbuf_finish(&sb);
 return (len);
}
