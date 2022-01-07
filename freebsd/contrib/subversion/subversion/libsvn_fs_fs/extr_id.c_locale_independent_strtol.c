
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;


 int FALSE ;
 unsigned long LONG_MAX ;
 int TRUE ;
 int ULONG_MAX ;

__attribute__((used)) static svn_boolean_t
locale_independent_strtol(long *result_p,
                          const char* buffer,
                          const char** end)
{



  unsigned long result = 0;
  while (1)
    {
      unsigned long c = (unsigned char)*buffer - (unsigned char)'0';
      unsigned long next;


      if (c > 9)
        break;




      if (result > ULONG_MAX / 10)
        return FALSE;

      next = result * 10 + c;






      if (next < result)
        return FALSE;

      result = next;
      ++buffer;
    }

  *end = buffer;
  if (result > LONG_MAX)
    return FALSE;

  *result_p = (long)result;

  return TRUE;
}
