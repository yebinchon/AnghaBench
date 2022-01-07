
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptid_t ;


 int * kgdb_thr_lookup_tid (int ) ;
 int ptid_get_pid (int ) ;

__attribute__((used)) static int
kgdb_trgt_thread_alive(ptid_t ptid)
{
 return (kgdb_thr_lookup_tid(ptid_get_pid(ptid)) != ((void*)0));
}
