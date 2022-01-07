
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int USE (int) ;
 int pchild_pending ;

void
queue_pchild(int sig)
{
    USE(sig);
    pchild_pending = 1;
}
