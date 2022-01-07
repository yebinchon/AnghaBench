
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OF_milliseconds () ;

void
delay(int usecs)
{
 int msecs, start;

 msecs = usecs / 1000;
 start = OF_milliseconds();

 while (OF_milliseconds() - start < msecs);
}
