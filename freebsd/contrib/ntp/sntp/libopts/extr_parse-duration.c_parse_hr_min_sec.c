
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef char cch_t ;


 int BAD_TIME ;
 scalar_t__ EINVAL ;
 char NUL ;
 scalar_t__ errno ;
 scalar_t__ isspace (unsigned char) ;
 int scale_n_add (unsigned long,int ,int) ;
 unsigned long str_const_to_ul (char*,char**,int) ;

__attribute__((used)) static time_t
parse_hr_min_sec (time_t start, cch_t * pz)
{
  int lpct = 0;

  errno = 0;



  while ((*pz == ':') && (lpct++ <= 1))
    {
      unsigned long v = str_const_to_ul (pz+1, &pz, 10);

      if (errno != 0)
        return BAD_TIME;

      start = scale_n_add (v, start, 60);

      if (errno != 0)
        return BAD_TIME;
    }


  while (isspace ((unsigned char)*pz))
    pz++;
  if (*pz != NUL)
    {
      errno = EINVAL;
      return BAD_TIME;
    }

  return start;
}
