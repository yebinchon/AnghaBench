
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 int BAD_TIME ;
 int EINVAL ;
 int errno ;
 int isdigit (unsigned char) ;
 scalar_t__ isspace (unsigned char) ;
 int parse_non_iso8601 (char const*) ;
 int parse_period (char const*) ;
 int parse_time (char const*) ;

time_t
parse_duration (char const * pz)
{
  while (isspace ((unsigned char)*pz))
    pz++;

  switch (*pz)
    {
    case 'P':
      return parse_period (pz + 1);

    case 'T':
      return parse_time (pz + 1);

    default:
      if (isdigit ((unsigned char)*pz))
        return parse_non_iso8601 (pz);

      errno = EINVAL;
      return BAD_TIME;
    }
}
