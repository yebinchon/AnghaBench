
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dev_t ;


 char* iMajorError ;
 char* iMinorError ;
 scalar_t__ major_netbsd (int ) ;
 int makedev_netbsd (unsigned long,unsigned long) ;
 scalar_t__ minor_netbsd (int ) ;
 char* tooManyFields ;

__attribute__((used)) static dev_t
pack_netbsd(int n, unsigned long numbers[], const char **error)
{
 dev_t dev = 0;

 if (n == 2) {
  dev = makedev_netbsd(numbers[0], numbers[1]);
  if ((unsigned long)major_netbsd(dev) != numbers[0])
   *error = iMajorError;
  else if ((unsigned long)minor_netbsd(dev) != numbers[1])
   *error = iMinorError;
 } else
  *error = tooManyFields;
 return (dev);
}
