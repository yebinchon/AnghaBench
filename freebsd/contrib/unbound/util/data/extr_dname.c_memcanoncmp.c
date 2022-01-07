
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int memlowercmp (scalar_t__*,scalar_t__*,scalar_t__) ;

__attribute__((used)) static int
memcanoncmp(uint8_t* p1, uint8_t len1, uint8_t* p2, uint8_t len2)
{
 uint8_t min = (len1<len2)?len1:len2;
 int c = memlowercmp(p1, p2, min);
 if(c != 0)
  return c;

 if(len1 < len2)
  return -1;
 if(len1 > len2)
  return 1;
 return 0;
}
