
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dev_t ;


 int apd_makedev (unsigned long,unsigned long) ;
 char* iMajorError ;
 char* iMinorError ;
 scalar_t__ major (int ) ;
 scalar_t__ minor (int ) ;
 char* tooManyFields ;

dev_t
pack_native(int n, unsigned long numbers[], const char **error)
{
 dev_t dev = 0;

 if (n == 2) {
  dev = apd_makedev(numbers[0], numbers[1]);
  if ((unsigned long)major(dev) != numbers[0])
   *error = iMajorError;
  else if ((unsigned long)minor(dev) != numbers[1])
   *error = iMinorError;
 } else
  *error = tooManyFields;
 return (dev);
}
