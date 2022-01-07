
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ourpty ;
 scalar_t__ really_stream ;
 int tcgetattr (int ,int *) ;
 int termbuf ;
 int termbuf2 ;
 int ttyfd ;

void
     init_termbuf(void)
{





 tcgetattr(ourpty, &termbuf);
    termbuf2 = termbuf;
}
