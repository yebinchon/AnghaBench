
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memset (void*,int ,size_t) ;

void
bzero(void *b, size_t n)
{
 (void)memset(b, 0, n);
}
