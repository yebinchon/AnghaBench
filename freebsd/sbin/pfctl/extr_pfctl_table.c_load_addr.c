
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfr_buffer {int dummy; } ;


 scalar_t__ append_addr (struct pfr_buffer*,int ,int) ;
 scalar_t__ errno ;
 scalar_t__ pfr_buf_load (struct pfr_buffer*,char*,int,scalar_t__ (*) (struct pfr_buffer*,int ,int)) ;
 int warn (char*,char*) ;

int
load_addr(struct pfr_buffer *b, int argc, char *argv[], char *file,
    int nonetwork)
{
 while (argc--)
  if (append_addr(b, *argv++, nonetwork)) {
   if (errno)
    warn("cannot decode %s", argv[-1]);
   return (-1);
  }
 if (pfr_buf_load(b, file, nonetwork, append_addr)) {
  warn("cannot load %s", file);
  return (-1);
 }
 return (0);
}
