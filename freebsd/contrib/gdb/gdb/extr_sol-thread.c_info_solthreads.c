
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TD_SIGNO_MASK ;
 int TD_THR_ANY_STATE ;
 int TD_THR_ANY_USER_FLAGS ;
 int TD_THR_LOWEST_PRIORITY ;
 int info_cb ;
 int main_ta ;
 int p_td_ta_thr_iter (int ,int ,char*,int ,int ,int ,int ) ;

__attribute__((used)) static void
info_solthreads (char *args, int from_tty)
{
  p_td_ta_thr_iter (main_ta, info_cb, args,
      TD_THR_ANY_STATE, TD_THR_LOWEST_PRIORITY,
      TD_SIGNO_MASK, TD_THR_ANY_USER_FLAGS);
}
