
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread_info {TYPE_1__* private; } ;
struct private_thread_info {int dummy; } ;
typedef int ptid_t ;
struct TYPE_2__ {int stable; int thrid; int lwpid; int mapp; } ;
typedef int CORE_ADDR ;


 struct thread_info* add_thread (int ) ;
 int error (char*) ;
 int printf_unfiltered (char*,int ) ;
 scalar_t__ target_has_execution ;
 int target_pid_to_str (int ) ;
 TYPE_1__* xmalloc (int) ;

__attribute__((used)) static void
add_thread_uw (int thrid, int lwpid, CORE_ADDR mapp, ptid_t ptid)
{
  struct thread_info *newthread;

  if ((newthread = add_thread (ptid)) == ((void*)0))
    error ("failed to create new thread structure");

  newthread->private = xmalloc (sizeof (struct private_thread_info));
  newthread->private->stable = 1;
  newthread->private->thrid = thrid;
  newthread->private->lwpid = lwpid;
  newthread->private->mapp = mapp;

  if (target_has_execution)
    printf_unfiltered ("[New %s]\n", target_pid_to_str (ptid));
}
