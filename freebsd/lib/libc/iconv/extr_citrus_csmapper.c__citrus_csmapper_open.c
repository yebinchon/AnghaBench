
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct _citrus_csmapper {int dummy; } ;
typedef int pivot ;
typedef int key ;
typedef int buf2 ;
typedef int buf1 ;


 int CS_ALIAS ;
 int ENOENT ;
 int PATH_MAX ;
 int _CSMAPPER_F_PREVENT_PIVOT ;
 int _LOOKUP_CASE_IGNORE ;
 int _PATH_CSMAPPER ;
 int _citrus_mapper_create_area (int *,int ) ;
 char* _lookup_alias (int ,char const*,char*,int,int ) ;
 int _mapper_open (int ,struct _citrus_csmapper**,char*) ;
 int find_best_pivot (char const*,char const*,char*,int,unsigned long*) ;
 int get_none (int ,struct _citrus_csmapper**) ;
 int maparea ;
 int open_serial_mapper (int ,struct _citrus_csmapper**,char const*,char*,char const*) ;
 int snprintf (char*,int,char*,char const*,char const*) ;
 int strcmp (char const*,char const*) ;

int
_citrus_csmapper_open(struct _citrus_csmapper * __restrict * __restrict rcsm,
    const char * __restrict src, const char * __restrict dst, uint32_t flags,
    unsigned long *rnorm)
{
 const char *realsrc, *realdst;
 char buf1[PATH_MAX], buf2[PATH_MAX], key[PATH_MAX], pivot[PATH_MAX];
 unsigned long norm;
 int ret;

 norm = 0;

 ret = _citrus_mapper_create_area(&maparea, _PATH_CSMAPPER);
 if (ret)
  return (ret);

 realsrc = _lookup_alias(CS_ALIAS, src, buf1, sizeof(buf1),
     _LOOKUP_CASE_IGNORE);
 realdst = _lookup_alias(CS_ALIAS, dst, buf2, sizeof(buf2),
     _LOOKUP_CASE_IGNORE);
 if (!strcmp(realsrc, realdst)) {
  ret = get_none(maparea, rcsm);
  if (ret == 0 && rnorm != ((void*)0))
   *rnorm = 0;
  return (ret);
 }

 snprintf(key, sizeof(key), "%s/%s", realsrc, realdst);

 ret = _mapper_open(maparea, rcsm, key);
 if (ret == 0) {
  if (rnorm != ((void*)0))
   *rnorm = 0;
  return (0);
 }
 if (ret != ENOENT || (flags & _CSMAPPER_F_PREVENT_PIVOT)!=0)
  return (ret);

 ret = find_best_pivot(realsrc, realdst, pivot, sizeof(pivot), &norm);
 if (ret)
  return (ret);

 ret = open_serial_mapper(maparea, rcsm, realsrc, pivot, realdst);
 if (ret == 0 && rnorm != ((void*)0))
  *rnorm = norm;

 return (ret);
}
