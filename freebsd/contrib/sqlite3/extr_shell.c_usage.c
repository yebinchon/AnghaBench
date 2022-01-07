
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Argv0 ;
 int exit (int) ;
 int raw_printf (int ,char*) ;
 int stderr ;
 int utf8_printf (int ,char*,int ) ;
 int zOptions ;

__attribute__((used)) static void usage(int showDetail){
  utf8_printf(stderr,
      "Usage: %s [OPTIONS] FILENAME [SQL]\n"
      "FILENAME is the name of an SQLite database. A new database is created\n"
      "if the file does not previously exist.\n", Argv0);
  if( showDetail ){
    utf8_printf(stderr, "OPTIONS include:\n%s", zOptions);
  }else{
    raw_printf(stderr, "Use the -help option for additional information\n");
  }
  exit(1);
}
