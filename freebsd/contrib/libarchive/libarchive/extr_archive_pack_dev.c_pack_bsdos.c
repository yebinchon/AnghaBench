
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dev_t ;


 char* iMajorError ;
 char* iMinorError ;
 scalar_t__ major_12_12_8 (int ) ;
 scalar_t__ major_12_20 (int ) ;
 int makedev_12_12_8 (unsigned long,unsigned long,unsigned long) ;
 int makedev_12_20 (unsigned long,unsigned long) ;
 scalar_t__ minor_12_20 (int ) ;
 scalar_t__ subunit_12_12_8 (int ) ;
 char* tooManyFields ;
 scalar_t__ unit_12_12_8 (int ) ;

__attribute__((used)) static dev_t
pack_bsdos(int n, unsigned long numbers[], const char **error)
{
 dev_t dev = 0;

 if (n == 2) {
  dev = makedev_12_20(numbers[0], numbers[1]);
  if ((unsigned long)major_12_20(dev) != numbers[0])
   *error = iMajorError;
  if ((unsigned long)minor_12_20(dev) != numbers[1])
   *error = iMinorError;
 } else if (n == 3) {
  dev = makedev_12_12_8(numbers[0], numbers[1], numbers[2]);
  if ((unsigned long)major_12_12_8(dev) != numbers[0])
   *error = iMajorError;
  if ((unsigned long)unit_12_12_8(dev) != numbers[1])
   *error = "invalid unit number";
  if ((unsigned long)subunit_12_12_8(dev) != numbers[2])
   *error = "invalid subunit number";
 } else
  *error = tooManyFields;
 return (dev);
}
