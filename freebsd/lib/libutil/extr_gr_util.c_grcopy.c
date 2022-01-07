
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {char** gr_mem; char* gr_name; char* gr_passwd; int gr_gid; } ;


 char* stpcpy (char*,char const*) ;

__attribute__((used)) static struct group *
grcopy(const struct group *gr, char *dst, const char *name, int ndx)
{
 int i;
 struct group *newgr;

 newgr = (struct group *)(void *)dst;
 dst += sizeof(*newgr);
 if (ndx != 0) {
  newgr->gr_mem = (char **)(void *)(dst);
  dst += (ndx + 1) * sizeof(*newgr->gr_mem);
 } else
  newgr->gr_mem = ((void*)0);
 if (gr->gr_name != ((void*)0)) {
  newgr->gr_name = dst;
  dst = stpcpy(dst, gr->gr_name) + 1;
 } else
  newgr->gr_name = ((void*)0);
 if (gr->gr_passwd != ((void*)0)) {
  newgr->gr_passwd = dst;
  dst = stpcpy(dst, gr->gr_passwd) + 1;
 } else
  newgr->gr_passwd = ((void*)0);
 newgr->gr_gid = gr->gr_gid;
 i = 0;

 if (gr->gr_mem != ((void*)0)) {
  for (; gr->gr_mem[i] != ((void*)0); i++) {
   newgr->gr_mem[i] = dst;
   dst = stpcpy(dst, gr->gr_mem[i]) + 1;
  }
 }

 if (name != ((void*)0)) {
  newgr->gr_mem[i++] = dst;
  dst = stpcpy(dst, name) + 1;
 }

 if (newgr->gr_mem != ((void*)0))
  newgr->gr_mem[i] = ((void*)0);

 return (newgr);
}
