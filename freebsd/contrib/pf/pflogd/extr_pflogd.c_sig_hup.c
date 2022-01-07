
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gotsig_hup ;

void
sig_hup(int sig)
{
 gotsig_hup = 1;
}
