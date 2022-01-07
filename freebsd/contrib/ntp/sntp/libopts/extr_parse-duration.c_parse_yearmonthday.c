
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
typedef char cch_t ;


 scalar_t__ BAD_TIME ;
 int EINVAL ;
 char NUL ;
 int SEC_PER_DAY ;
 int SEC_PER_MONTH ;
 int SEC_PER_YEAR ;
 int errno ;
 int memcpy (char*,char*,int) ;
 scalar_t__ parse_scaled_value (scalar_t__,char**,char*,int ) ;
 int strlen (char*) ;

__attribute__((used)) static time_t
parse_yearmonthday (cch_t * in_pz)
{
  time_t res = 0;
  char buf[8];
  cch_t * pz;

  if (strlen (in_pz) != 8)
    {
      errno = EINVAL;
      return BAD_TIME;
    }

  memcpy (buf, in_pz, 4);
  buf[4] = NUL;
  pz = buf;
  res = parse_scaled_value (0, &pz, buf + 4, SEC_PER_YEAR);

  memcpy (buf, in_pz + 4, 2);
  buf[2] = NUL;
  pz = buf;
  res = parse_scaled_value (res, &pz, buf + 2, SEC_PER_MONTH);

  memcpy (buf, in_pz + 6, 2);
  buf[2] = NUL;
  pz = buf;
  return parse_scaled_value (res, &pz, buf + 2, SEC_PER_DAY);
}
