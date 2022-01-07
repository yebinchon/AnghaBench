
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ddb_capture (int,char**) ;
 int ddb_script (int,char**) ;
 int ddb_scripts (int,char**) ;
 int ddb_unscript (int,char**) ;
 scalar_t__ strcmp (char*,char*) ;
 int usage () ;

void
ddb_main(int argc, char *argv[])
{

 if (argc < 1)
  usage();

 if (strcmp(argv[0], "capture") == 0)
  ddb_capture(argc, argv);
 else if (strcmp(argv[0], "script") == 0)
  ddb_script(argc, argv);
 else if (strcmp(argv[0], "scripts") == 0)
  ddb_scripts(argc, argv);
 else if (strcmp(argv[0], "unscript") == 0)
  ddb_unscript(argc, argv);
 else
  usage();
}
