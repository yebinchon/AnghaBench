
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
typedef scalar_t__ cch_t ;


 scalar_t__ BAD_TIME ;
 int EINVAL ;
 scalar_t__ NUL ;
 int SEC_PER_HR ;
 int SEC_PER_MIN ;
 int errno ;
 scalar_t__ isspace (unsigned char) ;
 scalar_t__ parse_scaled_value (scalar_t__,scalar_t__**,scalar_t__*,int) ;
 scalar_t__* strchr (scalar_t__*,char) ;

__attribute__((used)) static time_t
parse_HMS (cch_t * pz)
{
  time_t res = 0;
  cch_t * ps = strchr (pz, 'H');
  if (ps != ((void*)0))
    {
      res = parse_scaled_value (0, &pz, ps, SEC_PER_HR);
      pz++;
    }

  ps = strchr (pz, 'M');
  if (ps != ((void*)0))
    {
      res = parse_scaled_value (res, &pz, ps, SEC_PER_MIN);
      pz++;
    }

  ps = strchr (pz, 'S');
  if (ps != ((void*)0))
    {
      res = parse_scaled_value (res, &pz, ps, 1);
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
