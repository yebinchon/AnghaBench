
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t INT_MAX ;
 scalar_t__ NI_MAXHOST ;
 scalar_t__ a2port (char*) ;
 scalar_t__ asprintf (char**,char*,char*) ;
 int free (char*) ;
 char* hpdelim (char**) ;
 char* opt_dequote (char const**,char const**) ;
 char** recallocarray (char**,size_t,size_t,int) ;
 int * strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strdup (char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int
handle_permit(const char **optsp, int allow_bare_port,
    char ***permitsp, size_t *npermitsp, const char **errstrp)
{
 char *opt, *tmp, *cp, *host, **permits = *permitsp;
 size_t npermits = *npermitsp;
 const char *errstr = "unknown error";

 if (npermits > INT_MAX) {
  *errstrp = "too many permission directives";
  return -1;
 }
 if ((opt = opt_dequote(optsp, &errstr)) == ((void*)0)) {
  return -1;
 }
 if (allow_bare_port && strchr(opt, ':') == ((void*)0)) {




  if (asprintf(&tmp, "*:%s", opt) < 0) {
   *errstrp = "memory allocation failed";
   return -1;
  }
  free(opt);
  opt = tmp;
 }
 if ((tmp = strdup(opt)) == ((void*)0)) {
  free(opt);
  *errstrp = "memory allocation failed";
  return -1;
 }
 cp = tmp;

 host = hpdelim(&cp);
 if (host == ((void*)0) || strlen(host) >= NI_MAXHOST) {
  free(tmp);
  free(opt);
  *errstrp = "invalid permission hostname";
  return -1;
 }




 if (cp == ((void*)0) ||
     (strcmp(cp, "*") != 0 && a2port(cp) <= 0)) {
  free(tmp);
  free(opt);
  *errstrp = "invalid permission port";
  return -1;
 }

 free(tmp);

 if ((permits = recallocarray(permits, npermits, npermits + 1,
     sizeof(*permits))) == ((void*)0)) {
  free(opt);

  *errstrp = "memory allocation failed";
  return -1;
 }
 permits[npermits++] = opt;
 *permitsp = permits;
 *npermitsp = npermits;
 return 0;
}
