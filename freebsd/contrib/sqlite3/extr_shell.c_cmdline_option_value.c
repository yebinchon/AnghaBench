
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int stderr ;
 int utf8_printf (int ,char*,char*,char*) ;

__attribute__((used)) static char *cmdline_option_value(int argc, char **argv, int i){
  if( i==argc ){
    utf8_printf(stderr, "%s: Error: missing argument to %s\n",
            argv[0], argv[argc-1]);
    exit(1);
  }
  return argv[i];
}
