
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
typedef int portdev_t ;


 char* iMajorError ;
 char* iMinorError ;
 scalar_t__ major_8_24 (int ) ;
 int makedev_8_24 (scalar_t__,scalar_t__) ;
 scalar_t__ minor_8_24 (int ) ;
 char* tooManyFields ;

__attribute__((used)) static portdev_t
pack_8_24(int n, u_long numbers[], const char **error)
{
 portdev_t dev = 0;

 if (n == 2) {
  dev = makedev_8_24(numbers[0], numbers[1]);
  if ((u_long)major_8_24(dev) != numbers[0])
   *error = iMajorError;
  if ((u_long)minor_8_24(dev) != numbers[1])
   *error = iMinorError;
 } else
  *error = tooManyFields;
 return (dev);
}
