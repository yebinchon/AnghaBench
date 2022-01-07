
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int testout ;


 int buffer ;
 scalar_t__ memcmp (int ,char*,int) ;
 scalar_t__ opiegenerator (char*,char*,int ) ;

int testgenerator()
{
  static char testin1[] = "otp-md5 123 ke1234";
  static char testin2[] = "this is a test";

  static char testout[] = "11D4 C147 E227 C1F1";

  if (opiegenerator(testin1, testin2, buffer))
    return -1;

  if (memcmp(buffer, testout, sizeof(testout)))
    return -1;

  return 0;
}
