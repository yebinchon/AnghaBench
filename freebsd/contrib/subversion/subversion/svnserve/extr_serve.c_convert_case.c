
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_boolean_t ;


 scalar_t__ apr_tolower (char) ;
 scalar_t__ apr_toupper (char) ;

__attribute__((used)) static void convert_case(char *text, svn_boolean_t to_uppercase)
{
  char *c = text;
  while (*c)
    {
      *c = (char)(to_uppercase ? apr_toupper(*c) : apr_tolower(*c));
      ++c;
    }
}
