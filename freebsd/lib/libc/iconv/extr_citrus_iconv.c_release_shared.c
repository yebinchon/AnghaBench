
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_iconv_shared {scalar_t__ ci_used_count; } ;


 struct _citrus_iconv_shared* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct _citrus_iconv_shared*,int ) ;
 int TAILQ_REMOVE (int *,struct _citrus_iconv_shared*,int ) ;
 int UNLOCK (int *) ;
 int WLOCK (int *) ;
 int _CITRUS_HASH_REMOVE (struct _citrus_iconv_shared*,int ) ;
 int ci_hash_entry ;
 int ci_lock ;
 int ci_tailq_entry ;
 int close_shared (struct _citrus_iconv_shared*) ;
 scalar_t__ shared_max_reuse ;
 scalar_t__ shared_num_unused ;
 int shared_unused ;

__attribute__((used)) static void
release_shared(struct _citrus_iconv_shared * __restrict ci)
{

 WLOCK(&ci_lock);
 ci->ci_used_count--;
 if (ci->ci_used_count == 0) {

  shared_num_unused++;
  TAILQ_INSERT_TAIL(&shared_unused, ci, ci_tailq_entry);

  while (shared_num_unused > shared_max_reuse) {
   ci = TAILQ_FIRST(&shared_unused);
   TAILQ_REMOVE(&shared_unused, ci, ci_tailq_entry);
   _CITRUS_HASH_REMOVE(ci, ci_hash_entry);
   shared_num_unused--;
   close_shared(ci);
  }
 }

 UNLOCK(&ci_lock);
}
