
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arc4random_buf (void*,size_t) ;

void
randombytes_buf(void *buf, size_t size)
{
 arc4random_buf(buf, size);
}
