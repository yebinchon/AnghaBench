
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int USE (int) ;
 int phup_pending ;

void
queue_phup(int sig)
{
    USE(sig);
    phup_pending = 1;
}
