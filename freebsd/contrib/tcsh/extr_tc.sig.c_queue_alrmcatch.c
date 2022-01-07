
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int USE (int) ;
 int alrmcatch_pending ;

void
queue_alrmcatch(int sig)
{
    USE(sig);
    alrmcatch_pending = 1;
}
