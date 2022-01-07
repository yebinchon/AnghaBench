
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ c_status; int * c_ssh; scalar_t__ c_keytype; int * c_data; int * c_output_name; int * c_namebase; } ;


 scalar_t__ CS_KEYS ;
 scalar_t__ CS_UNUSED ;
 int FD_CLR (int,int ) ;
 int TAILQ_REMOVE (int *,TYPE_1__*,int ) ;
 int c_link ;
 int close (int) ;
 int fatal (char*,int) ;
 TYPE_1__* fdcon ;
 int free (int *) ;
 int maxfd ;
 int ncon ;
 int read_wait ;
 int ssh_packet_close (int *) ;
 int tq ;

__attribute__((used)) static void
confree(int s)
{
 if (s >= maxfd || fdcon[s].c_status == CS_UNUSED)
  fatal("confree: attempt to free bad fdno %d", s);
 free(fdcon[s].c_namebase);
 free(fdcon[s].c_output_name);
 if (fdcon[s].c_status == CS_KEYS)
  free(fdcon[s].c_data);
 fdcon[s].c_status = CS_UNUSED;
 fdcon[s].c_keytype = 0;
 if (fdcon[s].c_ssh) {
  ssh_packet_close(fdcon[s].c_ssh);
  free(fdcon[s].c_ssh);
  fdcon[s].c_ssh = ((void*)0);
 } else
  close(s);
 TAILQ_REMOVE(&tq, &fdcon[s], c_link);
 FD_CLR(s, read_wait);
 ncon--;
}
