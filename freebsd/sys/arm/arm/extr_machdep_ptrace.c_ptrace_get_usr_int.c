
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int u_int ;
struct thread {int dummy; } ;


 int ptrace_read_int (struct thread*,int ,int *) ;

__attribute__((used)) static u_int
ptrace_get_usr_int(void* cookie, vm_offset_t offset, u_int* val)
{
 struct thread *td = cookie;
 u_int error;

 error = ptrace_read_int(td, offset, val);

 return (error);
}
