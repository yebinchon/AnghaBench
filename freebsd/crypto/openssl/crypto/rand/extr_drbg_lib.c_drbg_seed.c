
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int drbg_add (void const*,int,int) ;

__attribute__((used)) static int drbg_seed(const void *buf, int num)
{
    return drbg_add(buf, num, num);
}
