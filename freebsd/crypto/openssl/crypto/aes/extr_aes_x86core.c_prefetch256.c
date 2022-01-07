
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t ;



__attribute__((used)) static void prefetch256(const void *table)
{
    volatile unsigned long *t=(void *)table,ret;
    unsigned long sum;
    int i;


    for (sum=0,i=0;i<256/sizeof(t[0]);i+=32/sizeof(t[0])) sum ^= t[i];

    ret = sum;
}
