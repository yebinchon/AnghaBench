
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isspace (unsigned char) ;

__attribute__((used)) static int
is_comment_line(const char *s, size_t n)
{
 const char *eom;

 eom = &s[n];

 for (; s < eom; s++)
  if (*s == '#' || !isspace((unsigned char)*s))
   break;
 return (*s == '#' || s == eom);
}
