
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {char* value; char* name; } ;


 int FREEPTR (char*) ;
 int fprintf (int ,char*,char const*,...) ;
 char* ftp_strdup (char const*) ;
 struct option* getoption (char const*) ;
 int ttyout ;
 scalar_t__ verbose ;

void
set_option(const char * option, const char * value, int doverbose)
{
 struct option *o;

 o = getoption(option);
 if (o == ((void*)0)) {
  fprintf(ttyout, "No such option `%s'.\n", option);
  return;
 }
 FREEPTR(o->value);
 o->value = ftp_strdup(value);
 if (verbose && doverbose)
  fprintf(ttyout, "Setting `%s' to `%s'.\n",
      o->name, o->value);
}
