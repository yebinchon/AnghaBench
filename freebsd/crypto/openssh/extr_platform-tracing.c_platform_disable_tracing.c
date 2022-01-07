
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PR_SET_DUMPABLE ;
 int PT_DENY_ATTACH ;
 int __PROC_PROTECT ;
 int fatal (char*) ;
 scalar_t__ prctl (int ,int ) ;
 int ptrace (int ,int ,int ,int ) ;
 scalar_t__ setpflags (int ,int) ;

void
platform_disable_tracing(int strict)
{
}
