
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;


 scalar_t__ BAD_TIME ;
 scalar_t__ EINVAL ;
 scalar_t__ ERANGE ;
 int MAX_DURATION ;
 scalar_t__ errno ;

__attribute__((used)) static time_t
scale_n_add (time_t base, time_t val, int scale)
{
  if (base == BAD_TIME)
    {
      if (errno == 0)
        errno = EINVAL;
      return BAD_TIME;
    }

  if (val > MAX_DURATION / scale)
    {
      errno = ERANGE;
      return BAD_TIME;
    }

  val *= scale;
  if (base > MAX_DURATION - val)
    {
      errno = ERANGE;
      return BAD_TIME;
    }

  return base + val;
}
