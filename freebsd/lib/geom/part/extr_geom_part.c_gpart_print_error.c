
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strtol (char const*,char**,int ) ;
 int warnc (int,char*,...) ;
 int warnx (char*,char*) ;

__attribute__((used)) static void
gpart_print_error(const char *errstr)
{
 char *errmsg;
 int error;

 error = strtol(errstr, &errmsg, 0);
 if (errmsg != errstr) {
  while (errmsg[0] == ' ')
   errmsg++;
  if (errmsg[0] != '\0')
   warnc(error, "%s", errmsg);
  else
   warnc(error, ((void*)0));
 } else
  warnx("%s", errmsg);
}
