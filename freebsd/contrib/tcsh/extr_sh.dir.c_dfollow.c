
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varent {char** vec; } ;
struct Strbuf {char* s; int len; } ;
typedef char Char ;


 int ENOENT ;
 int ENOTDIR ;
 int ERR_SYSTEM ;
 int G_ERROR ;
 int STRcdpath ;
 int STRdotdotsl ;
 int STRdotsl ;
 scalar_t__ SYM_EXPAND ;
 scalar_t__ SYM_IGNORE ;
 struct Strbuf Strbuf_INIT ;
 int Strbuf_append (struct Strbuf*,char*) ;
 int Strbuf_append1 (struct Strbuf*,char) ;
 int Strbuf_terminate (struct Strbuf*) ;
 scalar_t__ Strchr (char*,char) ;
 size_t Strlen (char*) ;
 char* Strsave (char*) ;
 struct varent* adrof (int ) ;
 char* agetcwd () ;
 int bequiet ;
 scalar_t__ chdir (char*) ;
 int cleanup_ignore (char*) ;
 int cleanup_push (char*,int (*) (char*)) ;
 int cleanup_until (char*) ;
 char* dgoto (char*) ;
 char* dnormalize (char*,int) ;
 int errno ;
 char* globone (char*,int ) ;
 int prefix (int ,char*) ;
 int printd ;
 char* short2str (char*) ;
 int stderror (int ,char*,int ) ;
 int strerror (int) ;
 scalar_t__ symlinks ;
 char* varval (char*) ;
 int xfree (char*) ;

__attribute__((used)) static Char *
dfollow(Char *cp, int old)
{
    Char *dp;
    struct varent *c;
    int serrno;

    cp = old ? Strsave(cp) : globone(cp, G_ERROR);
    cleanup_push(cp, xfree);
    dp = dnormalize(cp, symlinks == SYM_IGNORE);
    if (chdir(short2str(dp)) >= 0) {
        cleanup_until(cp);
        return dgoto(dp);
    }
    else {
        xfree(dp);
        if (chdir(short2str(cp)) >= 0) {
     cleanup_ignore(cp);
     cleanup_until(cp);
     return dgoto(cp);
 }
 else if (errno != ENOENT && errno != ENOTDIR) {
     int err;

     err = errno;
     stderror(ERR_SYSTEM, short2str(cp), strerror(err));
 }
 serrno = errno;
    }

    if (cp[0] != '/' && !prefix(STRdotsl, cp) && !prefix(STRdotdotsl, cp)
 && (c = adrof(STRcdpath)) && c->vec != ((void*)0)) {
 struct Strbuf buf = Strbuf_INIT;
 Char **cdp;

 for (cdp = c->vec; *cdp; cdp++) {
     size_t len = Strlen(*cdp);
     buf.len = 0;
     if (len > 0) {
  Strbuf_append(&buf, *cdp);
  if ((*cdp)[len - 1] != '/')
      Strbuf_append1(&buf, '/');
     }
     Strbuf_append(&buf, cp);
     Strbuf_terminate(&buf);




     dp = dnormalize(buf.s, symlinks == SYM_IGNORE ||
       symlinks == SYM_EXPAND);
     if (chdir(short2str(dp)) >= 0) {
  printd = 1;
  xfree(buf.s);
  cleanup_until(cp);
  return dgoto(dp);
     }
     else if (chdir(short2str(cp)) >= 0) {
  printd = 1;
  xfree(dp);
  xfree(buf.s);
  cleanup_ignore(cp);
  cleanup_until(cp);
  return dgoto(cp);
     }
     xfree(dp);
 }
 xfree(buf.s);
    }
    dp = varval(cp);
    if ((dp[0] == '/' || dp[0] == '.') && chdir(short2str(dp)) >= 0) {
 cleanup_until(cp);
 cp = Strsave(dp);
 printd = 1;
 return dgoto(cp);
    }




    if (!bequiet)
 stderror(ERR_SYSTEM, short2str(cp), strerror(serrno));
    cleanup_until(cp);
    return (((void*)0));
}
