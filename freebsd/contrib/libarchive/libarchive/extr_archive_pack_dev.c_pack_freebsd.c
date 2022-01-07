
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dev_t ;


 char* iMajorError ;
 char* iMinorError ;
 scalar_t__ major_freebsd (int ) ;
 int makedev_freebsd (unsigned long,unsigned long) ;
 scalar_t__ minor_freebsd (int ) ;
 char* tooManyFields ;

__attribute__((used)) static dev_t
pack_freebsd(int n, unsigned long numbers[], const char **error)
{
 dev_t dev = 0;

 if (n == 2) {
  dev = makedev_freebsd(numbers[0], numbers[1]);
  if ((unsigned long)major_freebsd(dev) != numbers[0])
   *error = iMajorError;
  if ((unsigned long)minor_freebsd(dev) != numbers[1])
   *error = iMinorError;
 } else
  *error = tooManyFields;
 return (dev);
}
