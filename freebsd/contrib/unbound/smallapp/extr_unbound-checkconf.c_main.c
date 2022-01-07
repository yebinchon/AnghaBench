
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* CONFIGFILE ;
 int checkconf (char const*,char const*,int) ;
 int checklock_start () ;
 int checklock_stop () ;
 int getopt (int,char**,char*) ;
 int log_ident_set (char*) ;
 int log_init (int *,int ,int *) ;
 char* optarg ;
 scalar_t__ optind ;
 int usage () ;
 char* w_lookup_reg_str (char*,char*) ;

int main(int argc, char* argv[])
{
 int c;
 int final = 0;
 const char* f;
 const char* opt = ((void*)0);
 const char* cfgfile = CONFIGFILE;
 log_ident_set("unbound-checkconf");
 log_init(((void*)0), 0, ((void*)0));
 checklock_start();






 while( (c=getopt(argc, argv, "fho:")) != -1) {
  switch(c) {
  case 'f':
   final = 1;
   break;
  case 'o':
   opt = optarg;
   break;
  case '?':
  case 'h':
  default:
   usage();
  }
 }
 argc -= optind;
 argv += optind;
 if(argc != 0 && argc != 1)
  usage();
 if(argc == 1)
  f = argv[0];
 else f = cfgfile;
 checkconf(f, opt, final);
 checklock_stop();
 return 0;
}
