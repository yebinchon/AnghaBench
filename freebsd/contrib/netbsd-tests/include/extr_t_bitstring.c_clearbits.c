
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ bitstr_t ;


 int bitstr_size (int) ;

__attribute__((used)) static void
clearbits(bitstr_t *b, int n)
{
 int i = bitstr_size(n);

 while(i--)
  *(b + i) = 0;
}
