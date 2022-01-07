
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_linenum_t ;
typedef int svn_boolean_t ;


 int FALSE ;
 int parse_offset (int*,char*) ;
 scalar_t__ strlen (char*) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static svn_boolean_t
parse_range(svn_linenum_t *start, svn_linenum_t *length, char *range)
{
  char *comma;

  if (*range == 0)
    return FALSE;

  comma = strstr(range, ",");
  if (comma)
    {
      if (strlen(comma + 1) > 0)
        {

          if (! parse_offset(length, comma + 1))
            return FALSE;




          *comma = '\0';
        }
       else

         return FALSE;
    }
  else
    {
      *length = 1;
    }


  return parse_offset(start, range);
}
