
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* malloc (size_t) ;
 int strlcat (char*,char* const,size_t) ;
 int strlcpy (char*,char* const,size_t) ;
 scalar_t__ strlen (char* const) ;

char *
copy_argv(char * const *argv)
{
 size_t len = 0, n;
 char *buf;

 if (argv == ((void*)0))
  return (((void*)0));

 for (n = 0; argv[n]; n++)
  len += strlen(argv[n])+1;
 if (len == 0)
  return (((void*)0));

 buf = malloc(len);
 if (buf == ((void*)0))
  return (((void*)0));

 strlcpy(buf, argv[0], len);
 for (n = 1; argv[n]; n++) {
  strlcat(buf, " ", len);
  strlcat(buf, argv[n], len);
 }
 return (buf);
}
