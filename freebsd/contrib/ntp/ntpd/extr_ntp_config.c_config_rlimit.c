
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int rlim_t ;
struct TYPE_7__ {int rlimit; } ;
typedef TYPE_2__ config_tree ;
struct TYPE_6__ {int i; } ;
struct TYPE_8__ {int attr; TYPE_1__ value; struct TYPE_8__* link; } ;
typedef TYPE_3__ attr_val ;


 int HAVE_OPT (int ) ;
 TYPE_3__* HEAD_PFIFO (int ) ;
 int LOG_ERR ;
 int LOG_WARNING ;
 int MCL_CURRENT ;
 int MCL_FUTURE ;
 int RLIMIT_MEMLOCK ;
 int RLIMIT_NOFILE ;
 int RLIMIT_STACK ;
 int SAVECONFIGQUIT ;



 int cur_memlock ;
 int fatal_error (char*,int) ;
 int mlockall (int) ;
 int msyslog (int ,char*,...) ;
 int munlockall () ;
 int ntp_rlimit (int ,int ,int,char*) ;

__attribute__((used)) static void
config_rlimit(
 config_tree *ptree
 )
{
 attr_val * rlimit_av;

 rlimit_av = HEAD_PFIFO(ptree->rlimit);
 for (; rlimit_av != ((void*)0); rlimit_av = rlimit_av->link) {
  switch (rlimit_av->attr) {

  default:
   fatal_error("config-rlimit: value-token=%d", rlimit_av->attr);

  case 129:

   if (HAVE_OPT( SAVECONFIGQUIT )) {
    break;
   }
   if (rlimit_av->value.i == -1) {
   } else if (rlimit_av->value.i >= 0) {
    msyslog(LOG_WARNING, "'rlimit memlock' specified but is not available on this system.");

   } else {
    msyslog(LOG_WARNING, "'rlimit memlock' value of %d is unexpected!", rlimit_av->value.i);
   }
   break;

  case 128:







   msyslog(LOG_WARNING, "'rlimit stacksize' specified but is not available on this system.");

   break;

  case 130:







   msyslog(LOG_WARNING, "'rlimit filenum' specified but is not available on this system.");

   break;

  }
 }
}
