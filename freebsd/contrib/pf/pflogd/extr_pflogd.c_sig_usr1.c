
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gotsig_usr1 ;

void
sig_usr1(int sig)
{
 gotsig_usr1 = 1;
}
