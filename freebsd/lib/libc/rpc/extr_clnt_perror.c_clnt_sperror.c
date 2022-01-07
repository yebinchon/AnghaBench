
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int s1; int s2; } ;
struct TYPE_3__ {int low; int high; } ;
struct rpc_err {int re_status; TYPE_2__ re_lb; TYPE_1__ re_vers; scalar_t__ re_why; int re_errno; } ;
typedef int CLIENT ;


 int CLNT_GETERR (int *,struct rpc_err*) ;
 int CLNT_PERROR_BUFLEN ;
 char* _buf () ;
 int assert (int ) ;
 char* auth_errmsg (scalar_t__) ;
 int clnt_sperrno (int) ;
 size_t snprintf (char*,size_t,char*,...) ;
 char* strerror (int ) ;
 size_t strlen (char*) ;
 int strncpy (char*,int ,size_t) ;

char *
clnt_sperror(CLIENT *rpch, const char *s)
{
 struct rpc_err e;
 char *err;
 char *str;
 char *strstart;
 size_t len, i;

 assert(rpch != ((void*)0));
 assert(s != ((void*)0));

 str = _buf();
 if (str == ((void*)0))
  return (0);
 len = CLNT_PERROR_BUFLEN;
 strstart = str;
 CLNT_GETERR(rpch, &e);

 if ((i = snprintf(str, len, "%s: ", s)) > 0) {
  str += i;
  len -= i;
 }

 (void)strncpy(str, clnt_sperrno(e.re_status), len - 1);
 i = strlen(str);
 str += i;
 len -= i;

 switch (e.re_status) {
 case 133:
 case 142:
 case 143:
 case 131:
 case 135:
 case 137:
 case 144:
 case 132:
 case 130:
 case 129:
 case 138:
 case 136:
 case 139:
  break;

 case 140:
 case 141:
  i = snprintf(str, len, "; errno = %s", strerror(e.re_errno));
  if (i > 0) {
   str += i;
   len -= i;
  }
  break;

 case 128:
  i = snprintf(str, len, "; low version = %u, high version = %u",
   e.re_vers.low, e.re_vers.high);
  if (i > 0) {
   str += i;
   len -= i;
  }
  break;

 case 145:
  err = auth_errmsg(e.re_why);
  i = snprintf(str, len, "; why = ");
  if (i > 0) {
   str += i;
   len -= i;
  }
  if (err != ((void*)0)) {
   i = snprintf(str, len, "%s",err);
  } else {
   i = snprintf(str, len,
    "(unknown authentication error - %d)",
    (int) e.re_why);
  }
  if (i > 0) {
   str += i;
   len -= i;
  }
  break;

 case 134:
  i = snprintf(str, len, "; low version = %u, high version = %u",
   e.re_vers.low, e.re_vers.high);
  if (i > 0) {
   str += i;
   len -= i;
  }
  break;

 default:
  i = snprintf(str, len, "; s1 = %u, s2 = %u",
   e.re_lb.s1, e.re_lb.s2);
  if (i > 0) {
   str += i;
   len -= i;
  }
  break;
 }
 strstart[CLNT_PERROR_BUFLEN-1] = '\0';
 return(strstart) ;
}
