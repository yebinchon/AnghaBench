
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int LOG_NOTICE ;
 int SESS_DISCONNECT ;
 int SESS_RECONNECT ;




 TYPE_1__* currsess ;
 int fprintf (int ,char*,int) ;
 int stderr ;
 int syslog (int ,char*,int) ;

__attribute__((used)) static void
trap(int sig)
{
     syslog(LOG_NOTICE, "trapped signal %d", sig);
     fprintf(stderr, "trapped signal %d\n", sig);

     switch(sig) {
     case 131:
   currsess->flags |= SESS_DISCONNECT;
   break;

     case 128:
   currsess->flags |= SESS_RECONNECT;
   break;

     case 130:
     case 129:
     default:
   return;
     }
}
