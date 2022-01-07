
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INFINITY ;

__attribute__((used)) static int
Adjust(int milliseconds, int diff)
{
    if (milliseconds == INFINITY)
 return milliseconds;
    milliseconds -= diff;
    if (milliseconds < 0)
 milliseconds = 0;
    return milliseconds;
}
