
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static const char *
ftp_filename(const char *file, int *len, int *type)
{
 const char *s;

 if ((s = strrchr(file, '/')) == ((void*)0))
  s = file;
 else
  s = s + 1;
 *len = strlen(s);
 if (*len > 7 && strncmp(s + *len - 7, ";type=", 6) == 0) {
  *type = s[*len - 1];
  *len -= 7;
 } else {
  *type = '\0';
 }
 return (s);
}
