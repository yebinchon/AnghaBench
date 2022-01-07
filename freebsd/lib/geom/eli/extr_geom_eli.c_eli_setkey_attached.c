
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int dummy; } ;
struct g_eli_metadata {int md_iterations; } ;
typedef int key ;
typedef int intmax_t ;


 int G_ELI_USERKEYLEN ;
 int assert (int) ;
 int * eli_genkey (struct gctl_req*,struct g_eli_metadata*,unsigned char*,int) ;
 int explicit_bzero (unsigned char*,int) ;
 int gctl_change_param (struct gctl_req*,char*,int,int*) ;
 int gctl_get_intmax (struct gctl_req*,char*) ;
 int gctl_issue (struct gctl_req*) ;
 int gctl_ro_param (struct gctl_req*,char*,int,unsigned char*) ;

__attribute__((used)) static void
eli_setkey_attached(struct gctl_req *req, struct g_eli_metadata *md)
{
 unsigned char key[G_ELI_USERKEYLEN];
 intmax_t val, old = 0;
 int error;

 val = gctl_get_intmax(req, "iterations");

 if (val != -1)
  md->md_iterations = val;
 else
  old = md->md_iterations;


 if (eli_genkey(req, md, key, 1) == ((void*)0)) {
  explicit_bzero(key, sizeof(key));
  return;
 }




 if (val == -1 && md->md_iterations != old) {
  error = gctl_change_param(req, "iterations", sizeof(intmax_t),
      &md->md_iterations);
  assert(error == 0);
 }

 gctl_ro_param(req, "key", sizeof(key), key);
 gctl_issue(req);
 explicit_bzero(key, sizeof(key));
}
