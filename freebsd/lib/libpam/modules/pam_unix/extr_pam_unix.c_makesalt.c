
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SALTSIZE ;
 int arc4random () ;
 int to64 (char*,int ,int) ;

__attribute__((used)) static void
makesalt(char salt[SALTSIZE + 1])
{
 int i;





 for (i = 0; i < SALTSIZE; i += 4)
  to64(&salt[i], arc4random(), 4);
 salt[SALTSIZE] = '\0';
}
