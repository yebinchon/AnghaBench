
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_iconv_shared {int ci_used_count; } ;
typedef int convname ;


 int PATH_MAX ;
 int TAILQ_REMOVE (int *,struct _citrus_iconv_shared*,int ) ;
 int UNLOCK (int *) ;
 int WLOCK (int *) ;
 int _CITRUS_HASH_INSERT (int *,struct _citrus_iconv_shared*,int ,int) ;
 int _CITRUS_HASH_SEARCH (int *,struct _citrus_iconv_shared*,int ,int ,char*,int) ;
 int ci_hash_entry ;
 int ci_lock ;
 int ci_tailq_entry ;
 int hash_func (char*) ;
 int match_func ;
 int open_shared (struct _citrus_iconv_shared**,char*,char const*,char const*) ;
 int shared_num_unused ;
 int shared_pool ;
 int shared_unused ;
 int snprintf (char*,int,char*,char const*,char const*) ;

__attribute__((used)) static int
get_shared(struct _citrus_iconv_shared * __restrict * __restrict rci,
    const char *src, const char *dst)
{
 struct _citrus_iconv_shared * ci;
 char convname[PATH_MAX];
 int hashval, ret = 0;

 snprintf(convname, sizeof(convname), "%s/%s", src, dst);

 WLOCK(&ci_lock);


 hashval = hash_func(convname);
 _CITRUS_HASH_SEARCH(&shared_pool, ci, ci_hash_entry, match_func,
     convname, hashval);
 if (ci != ((void*)0)) {

  if (ci->ci_used_count == 0) {
   TAILQ_REMOVE(&shared_unused, ci, ci_tailq_entry);
   shared_num_unused--;
  }
  ci->ci_used_count++;
  *rci = ci;
  goto quit;
 }


 ret = open_shared(&ci, convname, src, dst);
 if (ret)
  goto quit;

 _CITRUS_HASH_INSERT(&shared_pool, ci, ci_hash_entry, hashval);
 ci->ci_used_count = 1;
 *rci = ci;

quit:
 UNLOCK(&ci_lock);

 return (ret);
}
