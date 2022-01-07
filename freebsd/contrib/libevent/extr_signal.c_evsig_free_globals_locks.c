
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVTHREAD_FREE_LOCK (int *,int ) ;
 int * evsig_base_lock ;

__attribute__((used)) static void
evsig_free_globals_locks(void)
{

 if (evsig_base_lock != ((void*)0)) {
  EVTHREAD_FREE_LOCK(evsig_base_lock, 0);
  evsig_base_lock = ((void*)0);
 }

 return;
}
