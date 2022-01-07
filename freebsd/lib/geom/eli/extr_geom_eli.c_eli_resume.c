
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct gctl_req {int dummy; } ;
struct g_eli_metadata {scalar_t__ md_provsize; } ;
typedef scalar_t__ off_t ;
typedef int key ;


 int G_ELI_USERKEYLEN ;
 int * eli_genkey (struct gctl_req*,struct g_eli_metadata*,unsigned char*,int) ;
 int eli_metadata_read (struct gctl_req*,char const*,struct g_eli_metadata*) ;
 int explicit_bzero (unsigned char*,int) ;
 scalar_t__ g_get_mediasize (char const*) ;
 int gctl_error (struct gctl_req*,char*) ;
 char* gctl_get_ascii (struct gctl_req*,char*) ;
 int gctl_get_int (struct gctl_req*,char*) ;
 int * gctl_issue (struct gctl_req*) ;
 int gctl_ro_param (struct gctl_req*,char*,int,unsigned char*) ;
 int printf (char*,char const*) ;
 scalar_t__ verbose ;

__attribute__((used)) static void
eli_resume(struct gctl_req *req)
{
 struct g_eli_metadata md;
 unsigned char key[G_ELI_USERKEYLEN];
 const char *prov;
 off_t mediasize;
 int nargs;

 nargs = gctl_get_int(req, "nargs");
 if (nargs != 1) {
  gctl_error(req, "Invalid number of arguments.");
  return;
 }
 prov = gctl_get_ascii(req, "arg0");

 if (eli_metadata_read(req, prov, &md) == -1)
  return;

 mediasize = g_get_mediasize(prov);
 if (md.md_provsize != (uint64_t)mediasize) {
  gctl_error(req, "Provider size mismatch.");
  return;
 }

 if (eli_genkey(req, &md, key, 0) == ((void*)0)) {
  explicit_bzero(key, sizeof(key));
  return;
 }

 gctl_ro_param(req, "key", sizeof(key), key);
 if (gctl_issue(req) == ((void*)0)) {
  if (verbose)
   printf("Resumed %s.\n", prov);
 }
 explicit_bzero(key, sizeof(key));
}
