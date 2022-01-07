
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptid_t ;
typedef enum target_signal { ____Placeholder_target_signal } target_signal ;


 scalar_t__ event_loop_p ;
 int inferior_event_handler ;
 int remote_resume (int ,int,int) ;
 int target_async (int ,int ) ;
 scalar_t__ target_can_async_p () ;
 int target_executing ;
 scalar_t__ target_is_async_p () ;

__attribute__((used)) static void
remote_async_resume (ptid_t ptid, int step, enum target_signal siggnal)
{
  remote_resume (ptid, step, siggnal);
  if (event_loop_p && target_can_async_p ())
    target_async (inferior_event_handler, 0);





  if (target_is_async_p ())
    target_executing = 1;
}
