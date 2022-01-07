
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* dofun ) (char*) ;int str; } ;


 int NOFAIL (int ) ;
 int RUMP_DAEMONIZE_SUCCESS ;
 unsigned int __arraycount (TYPE_1__*) ;
 TYPE_1__* actions ;
 int exit (int) ;
 int pause () ;
 int rump_daemonize_begin () ;
 int rump_daemonize_done (int ) ;
 int rump_init () ;
 int rump_init_server (char*) ;
 int rump_schedule () ;
 int rump_unschedule () ;
 scalar_t__ strcmp (int ,char*) ;
 int stub1 (char*) ;

int
main(int argc, char *argv[])
{
 unsigned i;
 bool match;

 if (argc < 2)
  exit(1);

 NOFAIL(rump_daemonize_begin());
 NOFAIL(rump_init());
 NOFAIL(rump_init_server(argv[1]));
 NOFAIL(rump_daemonize_done(RUMP_DAEMONIZE_SUCCESS));

 if (argc > 2) {
  char *arg = ((void*)0);

  if (argc == 4)
   arg = argv[3];

  for (i = 0; i < __arraycount(actions); i++) {
   if (strcmp(actions[i].str, argv[2]) == 0) {
    rump_schedule();
    actions[i].dofun(arg);
    rump_unschedule();
    match = 1;
   }
  }

  if (!match) {
   exit(1);
  }
  pause();
 } else {
  for (;;)
   pause();
 }

 return 0;
}
