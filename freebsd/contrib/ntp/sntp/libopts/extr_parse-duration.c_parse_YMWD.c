
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
typedef scalar_t__ cch_t ;


 scalar_t__ BAD_TIME ;
 int EINVAL ;
 scalar_t__ NUL ;
 int SEC_PER_DAY ;
 int SEC_PER_MONTH ;
 int SEC_PER_WEEK ;
 int SEC_PER_YEAR ;
 int errno ;
 scalar_t__ isspace (unsigned char) ;
 scalar_t__ parse_scaled_value (scalar_t__,scalar_t__**,scalar_t__*,int ) ;
 scalar_t__* strchr (scalar_t__*,char) ;

__attribute__((used)) static time_t
parse_YMWD (cch_t * pz)
{
  time_t res = 0;
  cch_t * ps = strchr (pz, 'Y');
  if (ps != ((void*)0))
    {
      res = parse_scaled_value (0, &pz, ps, SEC_PER_YEAR);
      pz++;
    }

  ps = strchr (pz, 'M');
  if (ps != ((void*)0))
    {
      res = parse_scaled_value (res, &pz, ps, SEC_PER_MONTH);
      pz++;
    }

  ps = strchr (pz, 'W');
  if (ps != ((void*)0))
    {
      res = parse_scaled_value (res, &pz, ps, SEC_PER_WEEK);
      pz++;
    }

  ps = strchr (pz, 'D');
  if (ps != ((void*)0))
    {
      res = parse_scaled_value (res, &pz, ps, SEC_PER_DAY);
      pz++;
    }

  while (isspace ((unsigned char)*pz))
    pz++;
  if (*pz != NUL)
    {
      errno = EINVAL;
      return BAD_TIME;
    }

  return res;
}
