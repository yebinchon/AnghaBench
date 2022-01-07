
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* efidp ;


 int EINVAL ;
 int ENOMEM ;
 int asprintf (char**,char*,char const*,char*) ;
 size_t efidp_parse_device_path (char*,char*,int) ;
 int free (char*) ;
 char* malloc (int) ;
 char* path_to_file_dp (char*) ;
 char* strdup (char const*) ;

__attribute__((used)) static int
build_dp(const char *efimedia, const char *relpath, efidp *dp)
{
 char *fp, *dptxt = ((void*)0), *cp, *rp;
 int rv = 0;
 efidp out = ((void*)0);
 size_t len;

 rp = strdup(relpath);
 for (cp = rp; *cp; cp++)
  if (*cp == '/')
   *cp = '\\';
 fp = path_to_file_dp(rp);
 free(rp);
 if (fp == ((void*)0)) {
  rv = ENOMEM;
  goto errout;
 }

 asprintf(&dptxt, "%s/%s", efimedia, fp);
 out = malloc(8192);
 len = efidp_parse_device_path(dptxt, out, 8192);
 if (len > 8192) {
  rv = ENOMEM;
  goto errout;
 }
 if (len == 0) {
  rv = EINVAL;
  goto errout;
 }

 *dp = out;
errout:
 if (rv) {
  free(out);
 }
 free(dptxt);
 free(fp);

 return rv;
}
