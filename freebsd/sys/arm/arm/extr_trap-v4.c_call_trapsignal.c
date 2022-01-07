
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_long ;
struct thread {int dummy; } ;
struct TYPE_4__ {int ksi_signo; int ksi_code; } ;
typedef TYPE_1__ ksiginfo_t ;


 int ksiginfo_init_trap (TYPE_1__*) ;
 int trapsignal (struct thread*,TYPE_1__*) ;

__attribute__((used)) static __inline void
call_trapsignal(struct thread *td, int sig, u_long code)
{
 ksiginfo_t ksi;

 ksiginfo_init_trap(&ksi);
 ksi.ksi_signo = sig;
 ksi.ksi_code = (int)code;
 trapsignal(td, &ksi);
}
