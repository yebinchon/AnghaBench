
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct env_lst {int var; } ;


 int TELOPT_NEW_ENVIRON ;
 int TELOPT_OLD_ENVIRON ;
 struct env_lst* env_find (unsigned char*) ;
 int env_opt_add (int ) ;
 int env_opt_end (int ) ;
 int env_opt_start_info () ;
 int fprintf (int ,char*,unsigned char*) ;
 scalar_t__ my_state_is_wont (int ) ;
 int stderr ;

void
env_send(unsigned char *var)
{
 struct env_lst *ep;

 if (my_state_is_wont(TELOPT_NEW_ENVIRON)



  ) {
  fprintf(stderr,
      "Cannot send '%s': Telnet ENVIRON option not enabled\r\n",
         var);
  return;
 }
 ep = env_find(var);
 if (ep == 0) {
  fprintf(stderr, "Cannot send '%s': variable not defined\r\n",
         var);
  return;
 }
 env_opt_start_info();
 env_opt_add(ep->var);
 env_opt_end(0);
}
