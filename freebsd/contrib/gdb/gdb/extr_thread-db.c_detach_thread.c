
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptid_t ;


 int printf_unfiltered (char*,int ) ;
 int target_pid_to_str (int ) ;

__attribute__((used)) static void
detach_thread (ptid_t ptid, int verbose)
{
  if (verbose)
    printf_unfiltered ("[%s exited]\n", target_pid_to_str (ptid));
}
