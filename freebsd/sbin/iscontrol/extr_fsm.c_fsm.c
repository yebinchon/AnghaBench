
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int state_t ;
struct TYPE_12__ {int pgt; int port; int address; } ;
struct TYPE_13__ {int fd; int soc; int flags; TYPE_1__ target; TYPE_3__* op; } ;
typedef TYPE_2__ isess_t ;
struct TYPE_14__ {int targetPortalGroupTag; int port; int targetAddress; } ;
typedef TYPE_3__ isc_opt_t ;


 int LOG_INFO ;







 int SESS_INITIALLOGIN ;
 int SESS_INITIALLOGIN1 ;
 TYPE_2__* calloc (int,int) ;
 int doLogin (TYPE_2__*) ;
 int fprintf (int ,char*) ;
 int inLogout (TYPE_2__*) ;
 int startLogout (TYPE_2__*) ;
 int startSession (TYPE_2__*) ;
 int stderr ;
 int strdup (int ) ;
 int supervise (TYPE_2__*) ;
 int syslog (int ,char*) ;
 int tcpConnect (TYPE_2__*) ;

int
fsm(isc_opt_t *op)
{
     state_t state;
     isess_t *sess;

     if((sess = calloc(1, sizeof(isess_t))) == ((void*)0)) {

   fprintf(stderr, "no memory!\n");
   return -1;
     }

     state = 149;
     sess->op = op;
     sess->fd = -1;
     sess->soc = -1;
     sess->target.address = strdup(op->targetAddress);
     sess->target.port = op->port;
     sess->target.pgt = op->targetPortalGroupTag;

     sess->flags = SESS_INITIALLOGIN | SESS_INITIALLOGIN1;

     do {
   switch(state) {

   case 149:
        switch(tcpConnect(sess)) {
        case 142: state = 148; break;
        default: state = 143; break;
        }
        break;

   case 148:
        switch(startSession(sess)) {
        case 133: state = 149; break;
        case 132: state = 147; break;
        default: state = 143; break;
        }
        break;

   case 147:
        switch(doLogin(sess)) {
        case 130: state = 149; break;
        case 131: state = 146; break;
        default: state = 143; break;
        }
        break;

   case 146:
        switch(supervise(sess)) {
        case 129: state = 149; break;
        case 128: state = 145; break;
        case 140: state = 144; break;
        case 136: state = 143; break;
        default: state = 143; break;
        }
        break;

   case 145:
        switch(startLogout(sess)) {
        case 138: state = 149; break;
        case 137: state = 145; break;
        case 135: state = 143; break;
        default: state = 143; break;
        }
        break;

   case 144:
        switch(inLogout(sess)) {
        case 134: state = 149; break;
        case 141: state = 145; break;
        case 139: state = 144; break;
        case 135: state = 143; break;
        default: state = 143; break;
        }
        break;

   case 143:

        syslog(LOG_INFO, "terminated");
        return 0;
   }
     } while(1);
}
