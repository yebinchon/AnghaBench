
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ctl_io {int dummy; } ctl_io ;
struct sbuf {int dummy; } ;


 int SBUF_FIXEDLEN ;
 int ctl_io_sbuf (union ctl_io*,struct sbuf*) ;
 char* sbuf_data (struct sbuf*) ;
 int sbuf_finish (struct sbuf*) ;
 int sbuf_new (struct sbuf*,char*,int,int ) ;

char *
ctl_io_string(union ctl_io *io, char *str, int str_len)
{
 struct sbuf sb;

 sbuf_new(&sb, str, str_len, SBUF_FIXEDLEN);
 ctl_io_sbuf(io, &sb);
 sbuf_finish(&sb);
 return (sbuf_data(&sb));
}
