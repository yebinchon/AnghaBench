
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptrace_io_desc {size_t piod_len; void* piod_offs; void* piod_addr; int piod_op; } ;
struct proc_handle {int dummy; } ;
typedef int caddr_t ;


 int PIOD_READ_D ;
 int PT_IO ;
 int proc_getpid (struct proc_handle*) ;
 scalar_t__ ptrace (int ,int ,int ,int ) ;

int
proc_read(struct proc_handle *phdl, void *buf, size_t size, size_t addr)
{
 struct ptrace_io_desc piod;

 if (phdl == ((void*)0))
  return (-1);
 piod.piod_op = PIOD_READ_D;
 piod.piod_len = size;
 piod.piod_addr = (void *)buf;
 piod.piod_offs = (void *)addr;

 if (ptrace(PT_IO, proc_getpid(phdl), (caddr_t)&piod, 0) < 0)
  return (-1);
 return (piod.piod_len);
}
