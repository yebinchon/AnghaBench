
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
struct TYPE_4__ {int func_code; } ;
struct ccb_immediate_notify {TYPE_2__ ccb_h; } ;
struct TYPE_3__ {struct atio_descr* targ_descr; int func_code; } ;
struct ccb_accept_tio {TYPE_1__ ccb_h; } ;
struct atio_descr {int dummy; } ;


 int MAX_INITIATORS ;
 int XPT_ACCEPT_TARGET_IO ;
 int XPT_IMMEDIATE_NOTIFY ;
 int free (struct ccb_accept_tio*) ;
 scalar_t__ malloc (int) ;
 int send_ccb (union ccb*,int) ;
 int warn (char*) ;

__attribute__((used)) static int
init_ccbs()
{
 int i;

 for (i = 0; i < MAX_INITIATORS; i++) {
  struct ccb_accept_tio *atio;
  struct atio_descr *a_descr;
  struct ccb_immediate_notify *inot;

  atio = (struct ccb_accept_tio *)malloc(sizeof(*atio));
  if (atio == ((void*)0)) {
   warn("malloc ATIO");
   return (-1);
  }
  a_descr = (struct atio_descr *)malloc(sizeof(*a_descr));
  if (a_descr == ((void*)0)) {
   free(atio);
   warn("malloc atio_descr");
   return (-1);
  }
  atio->ccb_h.func_code = XPT_ACCEPT_TARGET_IO;
  atio->ccb_h.targ_descr = a_descr;
  send_ccb((union ccb *)atio, 1);

  inot = (struct ccb_immediate_notify *)malloc(sizeof(*inot));
  if (inot == ((void*)0)) {
   warn("malloc INOT");
   return (-1);
  }
  inot->ccb_h.func_code = XPT_IMMEDIATE_NOTIFY;
  send_ccb((union ccb *)inot, 1);
 }

 return (0);
}
