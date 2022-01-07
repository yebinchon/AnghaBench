
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gotsig_close ;

void
sig_close(int sig)
{
 gotsig_close = 1;
}
