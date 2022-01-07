
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int SIGCANCEL ;
 int SIGDELSET (int ,int ) ;
 scalar_t__ SIGISMEMBER (int ,int ) ;

__attribute__((used)) static inline void
remove_thr_signals(sigset_t *set)
{
 if (SIGISMEMBER(*set, SIGCANCEL))
  SIGDELSET(*set, SIGCANCEL);
}
