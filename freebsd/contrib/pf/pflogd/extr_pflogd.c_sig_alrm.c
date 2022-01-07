
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gotsig_alrm ;

void
sig_alrm(int sig)
{
 gotsig_alrm = 1;
}
