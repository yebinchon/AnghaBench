
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int dummy; } ;


 size_t INTERPOS_sigaction ;
 scalar_t__* __libc_interposing ;
 int stub1 (int,struct sigaction const*,struct sigaction*) ;

int
sigaction(int sig, const struct sigaction *act, struct sigaction *oact)
{

 return (((int (*)(int, const struct sigaction *, struct sigaction *))
     __libc_interposing[INTERPOS_sigaction])(sig, act, oact));
}
