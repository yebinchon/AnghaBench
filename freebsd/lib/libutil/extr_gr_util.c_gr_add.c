
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {int dummy; } ;


 struct group* grcopy (struct group const*,char*,char const*,int) ;
 size_t grmemlen (struct group const*,char const*,int*) ;
 char* malloc (size_t) ;

struct group *
gr_add(const struct group *gr, const char *newmember)
{
 char *mem;
 size_t len;
 int num_mem;

 num_mem = 0;
 len = grmemlen(gr, newmember, &num_mem);

 if ((mem = malloc(len)) == ((void*)0))
  return (((void*)0));
 return (grcopy(gr, mem, newmember, num_mem));
}
