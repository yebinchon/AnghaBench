
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* outfile; int out; scalar_t__ doXdgOpen; int zTempFile; } ;
typedef TYPE_1__ ShellState ;


 int outputModePop (TYPE_1__*) ;
 int output_file_close (int ) ;
 int pclose (int ) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,char const*,int ) ;
 int sqlite3_sleep (int) ;
 int stderr ;
 int stdout ;
 scalar_t__ system (char*) ;
 int utf8_printf (int ,char*,char*) ;

__attribute__((used)) static void output_reset(ShellState *p){
  if( p->outfile[0]=='|' ){

    pclose(p->out);

  }else{
    output_file_close(p->out);

    if( p->doXdgOpen ){
      const char *zXdgOpenCmd =





      "xdg-open";

      char *zCmd;
      zCmd = sqlite3_mprintf("%s %s", zXdgOpenCmd, p->zTempFile);
      if( system(zCmd) ){
        utf8_printf(stderr, "Failed: [%s]\n", zCmd);
      }
      sqlite3_free(zCmd);
      outputModePop(p);
      p->doXdgOpen = 0;
      sqlite3_sleep(100);
    }

  }
  p->outfile[0] = 0;
  p->out = stdout;
}
