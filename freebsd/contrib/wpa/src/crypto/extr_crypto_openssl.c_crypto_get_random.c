
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RAND_bytes (void*,size_t) ;

int crypto_get_random(void *buf, size_t len)
{
 if (RAND_bytes(buf, len) != 1)
  return -1;
 return 0;
}
