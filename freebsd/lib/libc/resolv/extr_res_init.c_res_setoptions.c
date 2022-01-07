
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_short ;
struct __res_state_ext {char* nsuffix; char* nsuffix2; scalar_t__ reload_period; } ;
typedef TYPE_3__* res_state ;
struct TYPE_5__ {struct __res_state_ext* ext; } ;
struct TYPE_6__ {TYPE_1__ _ext; } ;
struct TYPE_7__ {int options; int ndots; int retrans; int retry; TYPE_2__ _u; } ;


 int MIN (int ,int) ;
 int RES_DEBUG ;
 int RES_INSECURE1 ;
 int RES_INSECURE2 ;
 int RES_MAXNDOTS ;
 int RES_MAXRETRANS ;
 int RES_MAXRETRY ;
 int RES_NOCHECKNAME ;
 int RES_NOTLDQUERY ;
 int RES_NO_NIBBLE2 ;
 int RES_ROTATE ;
 int RES_USEVC ;
 int RES_USE_DNAME ;
 int RES_USE_EDNS0 ;
 int RES_USE_INET6 ;
 void* atoi (char const*) ;
 int printf (char*,...) ;
 int strcspn (char const*,char*) ;
 int strncmp (char const*,char*,int) ;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static void
res_setoptions(res_state statp, const char *options, const char *source)
{
 const char *cp = options;
 int i;
 struct __res_state_ext *ext = statp->_u._ext.ext;






 while (*cp) {

  while (*cp == ' ' || *cp == '\t')
   cp++;

  if (!strncmp(cp, "ndots:", sizeof("ndots:") - 1)) {
   i = atoi(cp + sizeof("ndots:") - 1);
   if (i <= RES_MAXNDOTS)
    statp->ndots = i;
   else
    statp->ndots = RES_MAXNDOTS;




  } else if (!strncmp(cp, "timeout:", sizeof("timeout:") - 1)) {
   i = atoi(cp + sizeof("timeout:") - 1);
   if (i <= RES_MAXRETRANS)
    statp->retrans = i;
   else
    statp->retrans = RES_MAXRETRANS;
  } else if (!strncmp(cp, "attempts:", sizeof("attempts:") - 1)){
   i = atoi(cp + sizeof("attempts:") - 1);
   if (i <= RES_MAXRETRY)
    statp->retry = i;
   else
    statp->retry = RES_MAXRETRY;




  } else if (!strncmp(cp, "debug", sizeof("debug") - 1)) {
  } else if (!strncmp(cp, "no_tld_query",
        sizeof("no_tld_query") - 1) ||
      !strncmp(cp, "no-tld-query",
        sizeof("no-tld-query") - 1)) {
   statp->options |= RES_NOTLDQUERY;
  } else if (!strncmp(cp, "inet6", sizeof("inet6") - 1)) {
   statp->options |= RES_USE_INET6;
  } else if (!strncmp(cp, "insecure1", sizeof("insecure1") - 1)) {
         statp->options |= RES_INSECURE1;
  } else if (!strncmp(cp, "insecure2", sizeof("insecure2") - 1)) {
         statp->options |= RES_INSECURE2;
  } else if (!strncmp(cp, "rotate", sizeof("rotate") - 1)) {
   statp->options |= RES_ROTATE;
  } else if (!strncmp(cp, "usevc", sizeof("usevc") - 1)) {
   statp->options |= RES_USEVC;
  } else if (!strncmp(cp, "no-check-names",
        sizeof("no-check-names") - 1)) {
   statp->options |= RES_NOCHECKNAME;
  } else if (!strncmp(cp, "reload-period:",
        sizeof("reload-period:") - 1)) {
   if (ext != ((void*)0)) {
    ext->reload_period = (u_short)
        atoi(cp + sizeof("reload-period:") - 1);
   }
  }






  else if (!strncmp(cp, "dname", sizeof("dname") - 1)) {
   statp->options |= RES_USE_DNAME;
  }
  else if (!strncmp(cp, "nibble:", sizeof("nibble:") - 1)) {
   if (ext == ((void*)0))
    goto skip;
   cp += sizeof("nibble:") - 1;
   i = MIN(strcspn(cp, " \t"), sizeof(ext->nsuffix) - 1);
   strncpy(ext->nsuffix, cp, i);
   ext->nsuffix[i] = '\0';
  }
  else if (!strncmp(cp, "nibble2:", sizeof("nibble2:") - 1)) {
   if (ext == ((void*)0))
    goto skip;
   cp += sizeof("nibble2:") - 1;
   i = MIN(strcspn(cp, " \t"), sizeof(ext->nsuffix2) - 1);
   strncpy(ext->nsuffix2, cp, i);
   ext->nsuffix2[i] = '\0';
  }
  else if (!strncmp(cp, "v6revmode:", sizeof("v6revmode:") - 1)) {
   cp += sizeof("v6revmode:") - 1;

   if (!strncmp(cp, "single", sizeof("single") - 1)) {
    statp->options |= RES_NO_NIBBLE2;
   } else if (!strncmp(cp, "both", sizeof("both") - 1)) {
    statp->options &=
      ~RES_NO_NIBBLE2;
   }
  }

  else {

  }

   skip:


  while (*cp && *cp != ' ' && *cp != '\t')
   cp++;
 }
}
