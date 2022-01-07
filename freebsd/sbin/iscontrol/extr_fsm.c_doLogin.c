
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int trans_t ;
struct TYPE_6__ {int flags; TYPE_2__* op; int csg; scalar_t__ tsih; } ;
typedef TYPE_1__ isess_t ;
struct TYPE_7__ {int sessionType; int * tgtChapSecret; int * chapSecret; } ;
typedef TYPE_2__ isc_opt_t ;


 int FF_PHASE ;
 int LOG_DEBUG ;
 int LON_PHASE ;
 int SESS_INITIALLOGIN ;
 int SESS_INITIALLOGIN1 ;
 int SESS_LOGGEDIN ;
 int SESS_NEGODONE ;
 int SESS_REDIRECT ;
 int SN_PHASE ;
 int T5 ;
 int T7 ;
 int debug (int,char*,int,...) ;
 int debug_called (int) ;
 int doDiscovery (TYPE_1__*) ;
 int loginPhase (TYPE_1__*) ;
 int sleep (int) ;
 int strcmp (int ,char*) ;
 int syslog (int ,char*) ;

__attribute__((used)) static trans_t
doLogin(isess_t *sess)
{
     isc_opt_t *op = sess->op;
     int status, count;

     debug_called(3);

     if(op->chapSecret == ((void*)0) && op->tgtChapSecret == ((void*)0))




   sess->csg = LON_PHASE;
     else
   sess->csg = SN_PHASE;

     if(sess->tsih) {
   sess->tsih = 0;
   sess->flags &= ~SESS_NEGODONE;
     }
     count = 10;
     do {
   debug(3, "count=%d csg=%d", count, sess->csg);
   status = loginPhase(sess);
   if(count-- == 0)

        status = -1;
     } while(status == 0 && (sess->csg != FF_PHASE));

     sess->flags &= ~SESS_INITIALLOGIN;
     debug(3, "status=%d", status);

     switch(status) {
     case 0:
   sess->flags |= SESS_LOGGEDIN;
   if(strcmp(sess->op->sessionType, "Discovery") == 0)
        doDiscovery(sess);
   return T5;

     case 1:



   sess->flags &= ~SESS_NEGODONE;
   sess->flags |= (SESS_REDIRECT | SESS_INITIALLOGIN1);
   syslog(LOG_DEBUG, "target sent REDIRECT");
   return T7;

     case 2:
   return 0;
     case 3:
   sleep(5);
   return T7;
     default:
   return 0;
     }
}
