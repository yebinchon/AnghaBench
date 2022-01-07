
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 scalar_t__ Rflag ;
 int arc4random () ;

__attribute__((used)) static u_int32_t
newfs_random(void)
{
 static int nextnum = 1;

 if (Rflag)
  return (nextnum++);
 return (arc4random());
}
