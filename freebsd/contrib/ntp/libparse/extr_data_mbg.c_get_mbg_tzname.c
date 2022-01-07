
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TZ_NAME ;


 int strlcpy (char*,char*,int) ;

__attribute__((used)) static void
get_mbg_tzname(
 unsigned char **buffpp,
 char *tznamep
 )
{
  strlcpy(tznamep, (char *)*buffpp, sizeof(TZ_NAME));
  *buffpp += sizeof(TZ_NAME);
}
