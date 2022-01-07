
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t lexleft ;
 int lexptr ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,int ,size_t) ;

__attribute__((used)) static int
looking_at (char const *s)
{
  size_t len;

  len = strlen(s);
  if (lexleft < len)
    return 0;
  return strncmp(s, lexptr, len) == 0;
}
