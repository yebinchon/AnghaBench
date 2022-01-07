
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISC_FALSE ;
 int cleanup_managers () ;
 int * ectx ;
 scalar_t__ hash_active ;
 int isc_entropy_detach (int **) ;
 int isc_hash_destroy () ;
 int isc_log_destroy (int **) ;
 int isc_mem_destroy (int **) ;
 int isc_taskmgr_destroy (int **) ;
 int * lctx ;
 int * mctx ;
 int * taskmgr ;

void
isc_test_end() {
 if (taskmgr != ((void*)0))
  isc_taskmgr_destroy(&taskmgr);
 if (lctx != ((void*)0))
  isc_log_destroy(&lctx);
 if (hash_active) {
  isc_hash_destroy();
  hash_active = ISC_FALSE;
 }
 if (ectx != ((void*)0))
  isc_entropy_detach(&ectx);

 cleanup_managers();

 if (mctx != ((void*)0))
  isc_mem_destroy(&mctx);
}
