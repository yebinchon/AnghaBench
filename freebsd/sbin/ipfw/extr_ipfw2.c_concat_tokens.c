
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _s_x {int * s; } ;


 int snprintf (char*,size_t,char*,char*,int *) ;

size_t
concat_tokens(char *buf, size_t bufsize, struct _s_x *table, char *delimiter)
{
 struct _s_x *pt;
 int l;
 size_t sz;

 for (sz = 0, pt = table ; pt->s != ((void*)0); pt++) {
  l = snprintf(buf + sz, bufsize - sz, "%s%s",
      (sz == 0) ? "" : delimiter, pt->s);
  sz += l;
  bufsize += l;
  if (sz > bufsize)
   return (bufsize);
 }

 return (sz);
}
