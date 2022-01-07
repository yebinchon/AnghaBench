
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {int ptid; } ;


 char* kgdb_thr_extra_thread_info (int ) ;
 int ptid_get_pid (int ) ;

__attribute__((used)) static char *
kgdb_trgt_extra_thread_info(struct thread_info *ti)
{

 return (kgdb_thr_extra_thread_info(ptid_get_pid(ti->ptid)));
}
