
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int valid; int * pw; } ;
struct TYPE_5__ {int chanid; int self; int * pw; TYPE_2__* authctxt; } ;
typedef TYPE_1__ Session ;
typedef TYPE_2__ Authctxt ;


 int debug (char*,int,...) ;
 int error (char*) ;
 int fatal (char*,int ) ;
 TYPE_1__* session_new () ;

int
session_open(Authctxt *authctxt, int chanid)
{
 Session *s = session_new();
 debug("session_open: channel %d", chanid);
 if (s == ((void*)0)) {
  error("no more sessions");
  return 0;
 }
 s->authctxt = authctxt;
 s->pw = authctxt->pw;
 if (s->pw == ((void*)0) || !authctxt->valid)
  fatal("no user for session %d", s->self);
 debug("session_open: session %d: link with channel %d", s->self, chanid);
 s->chanid = chanid;
 return 1;
}
