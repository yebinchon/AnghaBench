
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int USE (int) ;
 int pintr_pending ;

void
queue_pintr(int sig)
{
    USE(sig);
    pintr_pending = 1;
}
