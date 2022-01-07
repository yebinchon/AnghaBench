
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; int tv_usec; } ;


 int gettimeofday (struct timeval*,int *) ;

void
DELAY (int i)
{
    struct timeval t;
    long start, stop;

    i *= 4;

    gettimeofday (&t, ((void*)0));
    start = t.tv_sec * 1000000 + t.tv_usec;
    do {
 gettimeofday (&t, ((void*)0));
 stop = t.tv_sec * 1000000 + t.tv_usec;
    } while (start + i > stop);
}
