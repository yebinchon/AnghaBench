
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct recvbuf {int dummy; } ;
struct ctl_var {int flags; char* text; } ;
struct TYPE_2__ {int status; } ;


 int CAN_WRITE ;
 int CERR_BADFMT ;
 int CERR_BADVALUE ;
 int CERR_PERMISSION ;
 int CERR_UNKNOWNVAR ;
 int CERR_UNSPEC ;
 int EOV ;
 long LEAP_NOTINSYNC ;
 scalar_t__ atoint (char*,long*) ;
 int ctl_error (int ) ;
 int ctl_flushpkt (int ) ;
 struct ctl_var* ctl_getitem (int ,char**) ;
 int ctlsysstatus () ;
 char* emalloc (size_t) ;
 int ext_sys_var ;
 int free (char*) ;
 int htons (int ) ;
 int memcpy (char*,char*,int) ;
 scalar_t__ res_associd ;
 TYPE_1__ rpkt ;
 int set_sys_var (char*,int,int) ;
 int strlen (char*) ;
 int sys_var ;

__attribute__((used)) static void
write_variables(
 struct recvbuf *rbufp,
 int restrict_mask
 )
{
 const struct ctl_var *v;
 int ext_var;
 char *valuep;
 long val;
 size_t octets;
 char *vareqv;
 const char *t;
 char *tt;

 val = 0;



 if (res_associd != 0) {
  ctl_error(CERR_PERMISSION);
  return;
 }




 rpkt.status = htons(ctlsysstatus());





 while ((v = ctl_getitem(sys_var, &valuep)) != ((void*)0)) {
  ext_var = 0;
  if (v->flags & EOV) {
   v = ctl_getitem(ext_sys_var, &valuep);
   if (v != ((void*)0)) {
    if (v->flags & EOV) {
     ctl_error(CERR_UNKNOWNVAR);
     return;
    }
    ext_var = 1;
   } else {
    break;
   }
  }
  if (!(v->flags & CAN_WRITE)) {
   ctl_error(CERR_PERMISSION);
   return;
  }



  if (valuep == ((void*)0)) {
   ctl_error(CERR_BADFMT);
   return;
  }
  if (!ext_var) {
   if ( !(*valuep && atoint(valuep, &val))) {
    ctl_error(CERR_BADFMT);
    return;
   }
   if ((val & ~LEAP_NOTINSYNC) != 0) {
    ctl_error(CERR_BADVALUE);
    return;
   }
  }

  if (ext_var) {
   octets = strlen(v->text) + strlen(valuep) + 2;
   vareqv = emalloc(octets);
   tt = vareqv;
   t = v->text;
   while (*t && *t != '=')
    *tt++ = *t++;
   *tt++ = '=';
   memcpy(tt, valuep, 1 + strlen(valuep));
   set_sys_var(vareqv, 1 + strlen(vareqv), v->flags);
   free(vareqv);
  } else {
   ctl_error(CERR_UNSPEC);
   return;
  }
 }
 ctl_flushpkt(0);
}
