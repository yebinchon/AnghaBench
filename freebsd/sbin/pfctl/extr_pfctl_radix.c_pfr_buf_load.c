
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfr_buffer {int dummy; } ;
typedef int FILE ;


 int BUF_SIZE ;
 int fclose (int *) ;
 int * pfctl_fopen (char*,char*) ;
 int pfr_next_token (char*,int *) ;
 int * stdin ;
 int strcmp (char*,char*) ;

int
pfr_buf_load(struct pfr_buffer *b, char *file, int nonetwork,
    int (*append_addr)(struct pfr_buffer *, char *, int))
{
 FILE *fp;
 char buf[BUF_SIZE];
 int rv;

 if (file == ((void*)0))
  return (0);
 if (!strcmp(file, "-"))
  fp = stdin;
 else {
  fp = pfctl_fopen(file, "r");
  if (fp == ((void*)0))
   return (-1);
 }
 while ((rv = pfr_next_token(buf, fp)) == 1)
  if (append_addr(b, buf, nonetwork)) {
   rv = -1;
   break;
  }
 if (fp != stdin)
  fclose(fp);
 return (rv);
}
