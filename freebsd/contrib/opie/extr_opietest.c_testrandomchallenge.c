
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPIE_CHALLENGE_MAX ;
 int opierandomchallenge (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

int testrandomchallenge()
{
  char buffer[OPIE_CHALLENGE_MAX+1];

  opierandomchallenge(buffer);

  if (strncmp(buffer, "otp-", 4))
    return -1;

  return 0;
}
