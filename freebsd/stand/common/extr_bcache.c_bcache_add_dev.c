
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bcache_numdev ;

void
bcache_add_dev(int devices)
{
    bcache_numdev += devices;
}
