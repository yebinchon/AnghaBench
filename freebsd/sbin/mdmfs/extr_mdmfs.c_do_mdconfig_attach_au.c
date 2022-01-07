
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int linebuf ;
typedef enum md_types { ____Placeholder_md_types } md_types ;
typedef int FILE ;





 unsigned long ULONG_MAX ;
 int abort () ;
 int err (int,char*) ;
 int errx (int,char*,...) ;
 int fclose (int *) ;
 int * fdopen (int,char*) ;
 char* fgetln (int *,size_t*) ;
 int mdname ;
 int mdnamelen ;
 scalar_t__ norun ;
 int path_mdconfig ;
 int run (int*,char*,int ,char const*,char const*) ;
 int run_exitnumber (int) ;
 int run_exitstr (int) ;
 scalar_t__ strncmp (char*,int ,int) ;
 int strncpy (char*,char*,size_t) ;
 unsigned long strtoul (char*,char**,int) ;
 unsigned long unit ;

__attribute__((used)) static void
do_mdconfig_attach_au(const char *args, const enum md_types mdtype)
{
 const char *ta;
 char *linep;
 char linebuf[12];
 int fd;
 FILE *sfd;
 int rv;
 char *p;
 size_t linelen;
 unsigned long ul;

 switch (mdtype) {
 case 129:
  ta = "-t swap";
  break;
 case 128:
  ta = "-t vnode";
  break;
 case 130:
  ta = "-t malloc";
  break;
 default:
  abort();
 }
 rv = run(&fd, "%s -a %s%s", path_mdconfig, ta, args);
 if (rv)
  errx(1, "mdconfig (attach) exited %s %d", run_exitstr(rv),
      run_exitnumber(rv));


 if (norun) {
  unit = 0;
  return;
 }
 sfd = fdopen(fd, "r");
 if (sfd == ((void*)0))
  err(1, "fdopen");
 linep = fgetln(sfd, &linelen);

 if (linep == ((void*)0) || linelen <= mdnamelen + 1 ||
     linelen - mdnamelen >= sizeof(linebuf) ||
     strncmp(linep, mdname, mdnamelen) != 0)
  errx(1, "unexpected output from mdconfig (attach)");
 linep += mdnamelen;
 linelen -= mdnamelen;

 strncpy(linebuf, linep, linelen);
 linebuf[linelen] = '\0';
 ul = strtoul(linebuf, &p, 10);
 if (ul == ULONG_MAX || *p != '\n')
  errx(1, "unexpected output from mdconfig (attach)");
 unit = ul;

 fclose(sfd);
}
