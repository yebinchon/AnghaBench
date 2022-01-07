
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pmon_makeb64 (int,char*,int,unsigned int*) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static int
pmon_zeroset (int recsize, char **buff, int *amount, unsigned int *chksum)
{
  int count;

  sprintf (*buff, "/Z");
  count = pmon_makeb64 (*amount, (*buff + 2), 12, chksum);
  *buff += (count + 2);
  *amount = 0;
  return (recsize + count + 2);
}
