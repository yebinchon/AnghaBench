
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct _citrus_mapper_area {int ma_cache; int * ma_dir; } ;


 int CM_HASH_SIZE ;
 int PATH_MAX ;
 int UNLOCK (int *) ;
 int WLOCK (int *) ;
 int _CITRUS_HASH_INIT (int *,int ) ;
 char* _CITRUS_MAPPER_DIR ;
 int cm_lock ;
 int errno ;
 int free (struct _citrus_mapper_area*) ;
 struct _citrus_mapper_area* malloc (int) ;
 int snprintf (char*,size_t,char*,char const*,char*) ;
 int stat (char*,struct stat*) ;
 int * strdup (char const*) ;

int
_citrus_mapper_create_area(
    struct _citrus_mapper_area *__restrict *__restrict rma,
    const char *__restrict area)
{
 struct _citrus_mapper_area *ma;
 struct stat st;
 char path[PATH_MAX];
 int ret;

 WLOCK(&cm_lock);

 if (*rma != ((void*)0)) {
  ret = 0;
  goto quit;
 }

 snprintf(path, (size_t)PATH_MAX, "%s/%s", area, _CITRUS_MAPPER_DIR);

 ret = stat(path, &st);
 if (ret)
  goto quit;

 ma = malloc(sizeof(*ma));
 if (ma == ((void*)0)) {
  ret = errno;
  goto quit;
 }
 ma->ma_dir = strdup(area);
 if (ma->ma_dir == ((void*)0)) {
  ret = errno;
  free(ma);
  goto quit;
 }
 _CITRUS_HASH_INIT(&ma->ma_cache, CM_HASH_SIZE);

 *rma = ma;
 ret = 0;
quit:
 UNLOCK(&cm_lock);

 return (ret);
}
