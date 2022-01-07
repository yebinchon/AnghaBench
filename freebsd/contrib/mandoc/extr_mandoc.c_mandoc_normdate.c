
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_2__ {scalar_t__ macroset; } ;
struct roff_man {TYPE_1__ meta; scalar_t__ quick; } ;


 scalar_t__ MACROSET_MDOC ;
 int MANDOCERR_DATE_BAD ;
 int MANDOCERR_DATE_FUTURE ;
 int MANDOCERR_DATE_LEGACY ;
 int MANDOCERR_DATE_MISSING ;
 int MANDOCERR_DATE_NORM ;
 scalar_t__ a2time (scalar_t__*,char*,char*) ;
 int mandoc_msg (int ,int,int,char*,...) ;
 char* mandoc_strdup (char*) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ time (int *) ;
 char* time2a (scalar_t__) ;

char *
mandoc_normdate(struct roff_man *man, char *in, int ln, int pos)
{
 char *cp;
 time_t t;

 if (man->quick)
  return mandoc_strdup(in == ((void*)0) ? "" : in);



 if (in == ((void*)0) || *in == '\0')
  mandoc_msg(MANDOCERR_DATE_MISSING, ln, pos, ((void*)0));
 if (in == ((void*)0) || *in == '\0' || strcmp(in, "$" "Mdocdate$") == 0)
  return time2a(time(((void*)0)));



 if (a2time(&t, "$" "Mdocdate: %b %d %Y $", in) ||
     a2time(&t, "%b %d, %Y", in)) {
  cp = time2a(t);
  if (t > time(((void*)0)) + 86400)
   mandoc_msg(MANDOCERR_DATE_FUTURE, ln, pos, "%s", cp);
  else if (*in != '$' && strcmp(in, cp) != 0)
   mandoc_msg(MANDOCERR_DATE_NORM, ln, pos, "%s", cp);
  return cp;
 }



 if (a2time(&t, "%Y-%m-%d", in) == 0)
  mandoc_msg(MANDOCERR_DATE_BAD, ln, pos, "%s", in);
 else if (t > time(((void*)0)) + 86400)
  mandoc_msg(MANDOCERR_DATE_FUTURE, ln, pos, "%s", in);
 else if (man->meta.macroset == MACROSET_MDOC)
  mandoc_msg(MANDOCERR_DATE_LEGACY, ln, pos, "Dd %s", in);



 return mandoc_strdup(in);
}
