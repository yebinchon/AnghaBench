
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
typedef int cch_t ;


 scalar_t__ BAD_TIME ;
 int EINVAL ;
 int SEC_PER_DAY ;
 int SEC_PER_MONTH ;
 int SEC_PER_YEAR ;
 int errno ;
 scalar_t__ parse_scaled_value (scalar_t__,int **,int *,int ) ;
 int * strchr (int *,char) ;
 int strlen (int *) ;

__attribute__((used)) static time_t
parse_year_month_day (cch_t * pz, cch_t * ps)
{
  time_t res = 0;

  res = parse_scaled_value (0, &pz, ps, SEC_PER_YEAR);

  pz++;
  ps = strchr (pz, '-');
  if (ps == ((void*)0))
    {
      errno = EINVAL;
      return BAD_TIME;
    }
  res = parse_scaled_value (res, &pz, ps, SEC_PER_MONTH);

  pz++;
  ps = pz + strlen (pz);
  return parse_scaled_value (res, &pz, ps, SEC_PER_DAY);
}
