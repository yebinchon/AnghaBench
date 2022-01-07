
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef char u_char ;
typedef int token ;
struct TYPE_6__ {scalar_t__ ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 int MAX_TOKEN ;
 int ND_PRINT (TYPE_1__*) ;
 scalar_t__ RESP_CODE_SECOND_TOKEN ;
 scalar_t__ ascii_strcasecmp (char const*,char const*) ;
 scalar_t__ fetch_token (TYPE_1__*,char const*,scalar_t__,scalar_t__,char*,int) ;
 scalar_t__ isdigit (char) ;
 scalar_t__ print_txt_line (TYPE_1__*,char const*,char*,char const*,scalar_t__,scalar_t__) ;
 int toupper (char) ;

void
txtproto_print(netdissect_options *ndo, const u_char *pptr, u_int len,
    const char *protoname, const char **cmds, u_int flags)
{
 u_int idx, eol;
 u_char token[MAX_TOKEN+1];
 const char *cmd;
 int is_reqresp = 0;
 const char *pnp;

 if (cmds != ((void*)0)) {





  idx = fetch_token(ndo, pptr, 0, len, token, sizeof(token));
  if (idx != 0) {

   while ((cmd = *cmds++) != ((void*)0)) {
    if (ascii_strcasecmp((const char *)token, cmd) == 0) {

     is_reqresp = 1;
     break;
    }
   }







   if (flags & RESP_CODE_SECOND_TOKEN) {



    idx = fetch_token(ndo, pptr, idx, len, token,
        sizeof(token));
   }
   if (idx != 0) {
    if (isdigit(token[0]) && isdigit(token[1]) &&
        isdigit(token[2]) && token[3] == '\0') {

     is_reqresp = 1;
    }
   }
  }
 } else {






  is_reqresp = 1;
 }


 for (pnp = protoname; *pnp != '\0'; pnp++)
  ND_PRINT((ndo, "%c", toupper((u_char)*pnp)));

 if (is_reqresp) {
  if (ndo->ndo_vflag) {





   ND_PRINT((ndo, ", length: %u", len));
   for (idx = 0;
       idx < len && (eol = print_txt_line(ndo, protoname, "\n\t", pptr, idx, len)) != 0;
       idx = eol)
    ;
  } else {



   print_txt_line(ndo, protoname, ": ", pptr, 0, len);
  }
 }
}
