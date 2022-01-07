
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const u_char ;
struct gctl_req {int dummy; } ;
struct g_bde_softc {char const* sha2; } ;


 int O_RDONLY ;
 int SHA512_DIGEST_LENGTH ;
 int close (int) ;
 int err (int,char*,char const*) ;
 int errx (int,char*,char const*,char const*) ;
 int exit (int ) ;
 struct gctl_req* gctl_get_handle () ;
 char* gctl_issue (struct gctl_req*) ;
 int gctl_ro_param (struct gctl_req*,char*,int,char const*) ;
 int open (char const*,int ,int ) ;
 int read (int,char const*,int) ;

__attribute__((used)) static void
cmd_attach(const struct g_bde_softc *sc, const char *dest, const char *lfile)
{
 int ffd;
 u_char buf[16];
 struct gctl_req *r;
 const char *errstr;

 r = gctl_get_handle();
 gctl_ro_param(r, "verb", -1, "create geom");
 gctl_ro_param(r, "class", -1, "BDE");
 gctl_ro_param(r, "provider", -1, dest);
 gctl_ro_param(r, "pass", SHA512_DIGEST_LENGTH, sc->sha2);
 if (lfile != ((void*)0)) {
  ffd = open(lfile, O_RDONLY, 0);
  if (ffd < 0)
   err(1, "%s", lfile);
  read(ffd, buf, 16);
  gctl_ro_param(r, "key", 16, buf);
  close(ffd);
 }
 errstr = gctl_issue(r);
 if (errstr != ((void*)0))
  errx(1, "Attach to %s failed: %s", dest, errstr);

 exit (0);
}
