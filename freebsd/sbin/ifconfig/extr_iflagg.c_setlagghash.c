
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lagg_reqflags {int rf_ifname; int rf_flags; } ;
struct afswtch {int dummy; } ;


 int LAGG_F_HASHL2 ;
 int LAGG_F_HASHL3 ;
 int LAGG_F_HASHL4 ;
 int SIOCSLAGGHASH ;
 int err (int,char*) ;
 int errx (int,char*,...) ;
 int free (char*) ;
 scalar_t__ ioctl (int,int ,struct lagg_reqflags*) ;
 int name ;
 scalar_t__ strcmp (char*,char*) ;
 char* strdup (char const*) ;
 int strlcpy (int ,int ,int) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static void
setlagghash(const char *val, int d, int s, const struct afswtch *afp)
{
 struct lagg_reqflags rf;
 char *str, *tmp, *tok;


 rf.rf_flags = 0;
 str = tmp = strdup(val);
 while ((tok = strsep(&tmp, ",")) != ((void*)0)) {
  if (strcmp(tok, "l2") == 0)
   rf.rf_flags |= LAGG_F_HASHL2;
  else if (strcmp(tok, "l3") == 0)
   rf.rf_flags |= LAGG_F_HASHL3;
  else if (strcmp(tok, "l4") == 0)
   rf.rf_flags |= LAGG_F_HASHL4;
  else
   errx(1, "Invalid lagghash option: %s", tok);
 }
 free(str);
 if (rf.rf_flags == 0)
  errx(1, "No lagghash options supplied");

 strlcpy(rf.rf_ifname, name, sizeof(rf.rf_ifname));
 if (ioctl(s, SIOCSLAGGHASH, &rf))
  err(1, "SIOCSLAGGHASH");
}
