
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
typedef int portdev_t ;


 char* iMajorError ;
 char* iMinorError ;
 scalar_t__ major_14_18 (int ) ;
 int makedev_14_18 (scalar_t__,scalar_t__) ;
 scalar_t__ minor_14_18 (int ) ;
 char* tooManyFields ;

__attribute__((used)) static portdev_t
pack_14_18(int n, u_long numbers[], const char **error)
{
 portdev_t dev = 0;

 if (n == 2) {
  dev = makedev_14_18(numbers[0], numbers[1]);
  if ((u_long)major_14_18(dev) != numbers[0])
   *error = iMajorError;
  if ((u_long)minor_14_18(dev) != numbers[1])
   *error = iMinorError;
 } else
  *error = tooManyFields;
 return (dev);
}
