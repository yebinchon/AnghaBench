
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptid_t ;
typedef enum target_signal { ____Placeholder_target_signal } target_signal ;


 scalar_t__ MON_LSI ;
 scalar_t__ mips_monitor ;
 int mips_receive_wait ;
 int mips_request (char,int,int,int*,int ,int *) ;

__attribute__((used)) static void
mips_resume (ptid_t ptid, int step, enum target_signal siggnal)
{
  int err;



  mips_request (step ? 's' : 'c', 1, siggnal,
  mips_monitor == MON_LSI && step ? &err : (int *) ((void*)0),
  mips_receive_wait, ((void*)0));
}
