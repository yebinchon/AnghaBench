
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlcat (char*,char const*,size_t) ;

__attribute__((used)) static void
appendstr(
 char *string,
 size_t s,
 const char *new
 )
{
 if (*string != '\0') {
  (void)strlcat(string, ",", s);
 }
 (void)strlcat(string, new, s);

 return;
}
