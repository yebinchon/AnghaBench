
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {char const* gr_name; char const* gr_passwd; char const** gr_mem; } ;


 scalar_t__ strlen (char const*) ;

__attribute__((used)) static size_t
grmemlen(const struct group *gr, const char *name, int *num_mem)
{
 size_t len;
 int i;

 if (gr == ((void*)0))
  return (0);

 len = sizeof(*gr);
 if (gr->gr_name != ((void*)0))
  len += strlen(gr->gr_name) + 1;
 if (gr->gr_passwd != ((void*)0))
  len += strlen(gr->gr_passwd) + 1;
 i = 0;
 if (gr->gr_mem != ((void*)0)) {
  for (; gr->gr_mem[i] != ((void*)0); i++) {
   len += strlen(gr->gr_mem[i]) + 1;
   len += sizeof(*gr->gr_mem);
  }
 }
 if (name != ((void*)0)) {
  i++;
  len += strlen(name) + 1;
  len += sizeof(*gr->gr_mem);
 }

 if (i != 0)
  len += sizeof(*gr->gr_mem);
 *num_mem = i;
 return(len);
}
