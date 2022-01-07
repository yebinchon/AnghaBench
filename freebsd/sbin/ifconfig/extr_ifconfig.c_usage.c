
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {char* opt_usage; struct option* next; } ;
typedef int options ;


 int exit (int) ;
 int fprintf (int ,char*,char*,char*,char*) ;
 struct option* opts ;
 int stderr ;
 int strlcat (char*,char*,int) ;

__attribute__((used)) static void
usage(void)
{
 char options[1024];
 struct option *p;


 options[0] = '\0';
 for (p = opts; p != ((void*)0); p = p->next) {
  strlcat(options, p->opt_usage, sizeof(options));
  strlcat(options, " ", sizeof(options));
 }

 fprintf(stderr,
 "usage: ifconfig [-f type:format] %sinterface address_family\n"
 "                [address [dest_address]] [parameters]\n"
 "       ifconfig interface create\n"
 "       ifconfig -a %s[-d] [-m] [-u] [-v] [address_family]\n"
 "       ifconfig -l [-d] [-u] [address_family]\n"
 "       ifconfig %s[-d] [-m] [-u] [-v]\n",
  options, options, options);
 exit(1);
}
