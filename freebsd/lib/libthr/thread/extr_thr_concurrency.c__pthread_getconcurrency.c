
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_concurrency ;

int
_pthread_getconcurrency(void)
{
 return current_concurrency;
}
