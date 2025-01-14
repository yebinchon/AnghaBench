
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv {int dummy; } ;


 int nv_get_int16 (struct nv*,char*,unsigned int) ;
 char* nv_get_string (struct nv*,char*,unsigned int) ;
 int pjdlog_debug (int,char*,char const*,...) ;
 int pjdlog_prefix_set (char*,char const*) ;
 int pjdlog_warning (char*,int) ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static int
control_set_role(struct nv *nv, const char *newrole)
{
 const char *res, *oldrole;
 unsigned int ii;
 int error, ret;

 ret = 0;

 for (ii = 0; ; ii++) {
  res = nv_get_string(nv, "resource%u", ii);
  if (res == ((void*)0))
   break;
  pjdlog_prefix_set("[%s] ", res);
  error = nv_get_int16(nv, "error%u", ii);
  if (error != 0) {
   if (ret == 0)
    ret = error;
   pjdlog_warning("Received error %d from hastd.", error);
   continue;
  }
  oldrole = nv_get_string(nv, "role%u", ii);
  if (strcmp(oldrole, newrole) == 0)
   pjdlog_debug(2, "Role unchanged (%s).", oldrole);
  else {
   pjdlog_debug(1, "Role changed from %s to %s.", oldrole,
       newrole);
  }
 }
 pjdlog_prefix_set("%s", "");
 return (ret);
}
