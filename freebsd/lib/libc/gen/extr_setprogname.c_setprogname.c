
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* __progname ;
 char* strrchr (char const*,char) ;

void
setprogname(const char *progname)
{
 const char *p;

 p = strrchr(progname, '/');
 if (p != ((void*)0))
  __progname = p + 1;
 else
  __progname = progname;
}
