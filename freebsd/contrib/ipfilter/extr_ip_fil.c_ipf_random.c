
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_32_t ;



u_32_t
ipf_random()
{
 static unsigned int last = 0xa5a5a5a5;
 static int calls = 0;
 int number;

 calls++;





 switch (calls)
 {
 case 1 :
  number = 0;
  break;
 case 2 :
  number = 4;
  break;
 case 3 :
  number = 3999;
  break;
 case 4 :
  number = 4000;
  break;
 case 5 :
  number = 48999;
  break;
 case 6 :
  number = 49000;
  break;
 default :
  number = last;
  last *= calls;
  last++;
  number ^= last;
  break;
 }
 return number;
}
