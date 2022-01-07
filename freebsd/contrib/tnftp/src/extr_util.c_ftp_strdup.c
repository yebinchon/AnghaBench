
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*) ;
 int errx (int,char*) ;
 char* strdup (char const*) ;

char *
ftp_strdup(const char *str)
{
 char *s;

 if (str == ((void*)0))
  errx(1, "ftp_strdup: called with NULL argument");
 s = strdup(str);
 if (s == ((void*)0))
  err(1, "Unable to allocate memory for string copy");
 return (s);
}
