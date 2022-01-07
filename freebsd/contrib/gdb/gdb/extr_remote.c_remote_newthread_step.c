
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int threadref ;
typedef int ptid_t ;


 int add_thread (int ) ;
 int in_thread_list (int ) ;
 int pid_to_ptid (int ) ;
 int threadref_to_int (int *) ;

__attribute__((used)) static int
remote_newthread_step (threadref *ref, void *context)
{
  ptid_t ptid;

  ptid = pid_to_ptid (threadref_to_int (ref));

  if (!in_thread_list (ptid))
    add_thread (ptid);
  return 1;
}
