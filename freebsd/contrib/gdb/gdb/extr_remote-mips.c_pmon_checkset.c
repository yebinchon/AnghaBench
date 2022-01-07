
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pmon_makeb64 (int,char*,int,int *) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static int
pmon_checkset (int recsize, char **buff, int *value)
{
  int count;


  sprintf (*buff, "/C");
  count = pmon_makeb64 (*value, (*buff + 2), 12, ((void*)0));
  *buff += (count + 2);
  sprintf (*buff, "\n");
  *buff += 2;

  *value = 0;
  return (recsize + count + 3);
}
