
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int re_status; int re_errno; } ;
struct TYPE_4__ {int cf_stat; TYPE_1__ cf_error; } ;


 int CLNT_PERROR_BUFLEN ;
 char* _buf () ;
 int assert (int ) ;
 char* clnt_sperrno (int) ;
 TYPE_2__ rpc_createerr ;
 size_t snprintf (char*,size_t,char*,char const*) ;
 char* strerror (int ) ;
 int strncat (char*,char*,size_t) ;

char *
clnt_spcreateerror(const char *s)
{
 char *str;
 size_t len, i;

 assert(s != ((void*)0));

 str = _buf();
 if (str == ((void*)0))
  return(0);
 len = CLNT_PERROR_BUFLEN;
 i = snprintf(str, len, "%s: ", s);
 if (i > 0)
  len -= i;
 (void)strncat(str, clnt_sperrno(rpc_createerr.cf_stat), len - 1);
 switch (rpc_createerr.cf_stat) {
 case 138:
  (void) strncat(str, " - ", len - 1);
  (void) strncat(str,
      clnt_sperrno(rpc_createerr.cf_error.re_status), len - 4);
  break;

 case 132:
  (void)strncat(str, " - ", len - 1);
  (void)strncat(str, strerror(rpc_createerr.cf_error.re_errno),
      len - 4);
  break;

 case 140:
 case 143:
 case 142:
 case 133:
 case 129:
 case 136:
 case 139:
 case 130:
 case 144:
 case 137:
 case 134:
 case 135:
 case 145:
 case 128:
 case 131:
 case 141:
 default:
  break;
 }
 str[CLNT_PERROR_BUFLEN-1] = '\0';
 return (str);
}
