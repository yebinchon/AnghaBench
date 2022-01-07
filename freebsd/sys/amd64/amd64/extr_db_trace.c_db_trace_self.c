
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd64_frame {struct amd64_frame* f_frame; int f_retaddr; } ;
typedef scalar_t__ register_t ;
typedef scalar_t__ db_addr_t ;


 int FALSE ;
 int curthread ;
 int db_backtrace (int ,int *,struct amd64_frame*,scalar_t__,int ,int) ;
 scalar_t__ db_get_value (long,int,int ) ;

void
db_trace_self(void)
{
 struct amd64_frame *frame;
 db_addr_t callpc;
 register_t rbp;

 __asm __volatile("movq %%rbp,%0" : "=r" (rbp));
 frame = (struct amd64_frame *)rbp;
 callpc = (db_addr_t)db_get_value((long)&frame->f_retaddr, 8, FALSE);
 frame = frame->f_frame;
 db_backtrace(curthread, ((void*)0), frame, callpc, 0, -1);
}
