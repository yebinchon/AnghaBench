
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macalg {int * name; } ;


 int free (char*) ;
 struct macalg* macs ;
 int memcpy (char*,int *,size_t) ;
 char* realloc (char*,size_t) ;
 size_t strlen (int *) ;

char *
mac_alg_list(char sep)
{
 char *ret = ((void*)0), *tmp;
 size_t nlen, rlen = 0;
 const struct macalg *m;

 for (m = macs; m->name != ((void*)0); m++) {
  if (ret != ((void*)0))
   ret[rlen++] = sep;
  nlen = strlen(m->name);
  if ((tmp = realloc(ret, rlen + nlen + 2)) == ((void*)0)) {
   free(ret);
   return ((void*)0);
  }
  ret = tmp;
  memcpy(ret + rlen, m->name, nlen + 1);
  rlen += nlen;
 }
 return ret;
}
