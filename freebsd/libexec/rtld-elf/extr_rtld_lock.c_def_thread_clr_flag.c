
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int thread_flag ;

__attribute__((used)) static int
def_thread_clr_flag(int mask)
{
 int old_val = thread_flag;
 thread_flag &= ~mask;
 return (old_val);
}
