
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int fds ;


 int* nv_malloc (int) ;
 size_t nvlist_ndescriptors (int const*) ;
 int nvlist_xdescriptors (int const*,int*) ;

int *
nvlist_descriptors(const nvlist_t *nvl, size_t *nitemsp)
{
 size_t nitems;
 int *fds;

 nitems = nvlist_ndescriptors(nvl);
 fds = nv_malloc(sizeof(fds[0]) * (nitems + 1));
 if (fds == ((void*)0))
  return (((void*)0));
 if (nitems > 0)
  nvlist_xdescriptors(nvl, fds);
 fds[nitems] = -1;
 if (nitemsp != ((void*)0))
  *nitemsp = nitems;
 return (fds);
}
