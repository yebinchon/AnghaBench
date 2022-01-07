
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ fbsd_thread_active ;
 int td_ta_tsd_iter_p (int ,int ,int *) ;
 int thread_agent ;
 int tsd_cb ;

__attribute__((used)) static void
fbsd_thread_tsd_cmd (char *exp, int from_tty)
{
  if (fbsd_thread_active)
    td_ta_tsd_iter_p (thread_agent, tsd_cb, ((void*)0));
}
