
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_mapper_area {int ma_cache; int ma_dir; } ;
struct _citrus_mapper {int cm_refcount; int * cm_key; } ;


 int PATH_MAX ;
 int UNLOCK (int *) ;
 int WLOCK (int *) ;
 int _CITRUS_HASH_INSERT (int *,struct _citrus_mapper*,int ,int) ;
 int _CITRUS_HASH_SEARCH (int *,struct _citrus_mapper*,int ,int ,char const*,int) ;
 int _mapper_close (struct _citrus_mapper*) ;
 int cm_entry ;
 int cm_lock ;
 int errno ;
 int hash_func (char const*) ;
 int lookup_mapper_entry (int ,char const*,char*,size_t,char const**,char const**) ;
 int mapper_open (struct _citrus_mapper_area*,struct _citrus_mapper**,char const*,char const*) ;
 int match_func ;
 int * strdup (char const*) ;

int
_citrus_mapper_open(struct _citrus_mapper_area *__restrict ma,
    struct _citrus_mapper * __restrict * __restrict rcm,
    const char * __restrict mapname)
{
 struct _citrus_mapper *cm;
 char linebuf[PATH_MAX];
 const char *module, *variable;
 int hashval, ret;

 variable = ((void*)0);

 WLOCK(&cm_lock);


 hashval = hash_func(mapname);
 _CITRUS_HASH_SEARCH(&ma->ma_cache, cm, cm_entry, match_func, mapname,
     hashval);
 if (cm) {

  cm->cm_refcount++;
  *rcm = cm;
  ret = 0;
  goto quit;
 }


 ret = lookup_mapper_entry(ma->ma_dir, mapname, linebuf,
     (size_t)PATH_MAX, &module, &variable);
 if (ret)
  goto quit;


 UNLOCK(&cm_lock);
 ret = mapper_open(ma, &cm, module, variable);
 WLOCK(&cm_lock);
 if (ret)
  goto quit;
 cm->cm_key = strdup(mapname);
 if (cm->cm_key == ((void*)0)) {
  ret = errno;
  _mapper_close(cm);
  goto quit;
 }


 cm->cm_refcount = 1;
 _CITRUS_HASH_INSERT(&ma->ma_cache, cm, cm_entry, hashval);

 *rcm = cm;
 ret = 0;
quit:
 UNLOCK(&cm_lock);

 return (ret);
}
