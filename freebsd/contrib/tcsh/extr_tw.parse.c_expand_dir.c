
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Strbuf {int len; char const* s; } ;
typedef int DIR ;
typedef char const Char ;
typedef scalar_t__ COMMAND ;


 int CGETS (int,int,char*) ;
 scalar_t__ ENOENT ;
 scalar_t__ ENOTDIR ;
 int NeedsRedraw ;
 scalar_t__ SPELL ;
 char const* STRdot ;
 scalar_t__ SYM_EXPAND ;
 scalar_t__ SYM_IGNORE ;
 scalar_t__ SearchNoDirErr ;
 int Strbuf_append (struct Strbuf*,char const*) ;
 int Strbuf_append1 (struct Strbuf*,char) ;
 int Strbuf_terminate (struct Strbuf*) ;
 int cleanup_push (char const*,int (*) (char const*)) ;
 int cleanup_until (char const*) ;
 char* dnormalize (char const*,int) ;
 char* dollar (char const*) ;
 scalar_t__ errno ;
 int * opendir (int ) ;
 int short2str (char const*) ;
 scalar_t__ symlinks ;
 scalar_t__ tilde (struct Strbuf*,char const*) ;
 int xfree (char const*) ;
 int xprintf (char*,char const*,int ) ;

__attribute__((used)) static int
expand_dir(const Char *dir, struct Strbuf *edir, DIR **dfd, COMMAND cmd)
{
    Char *nd = ((void*)0);
    Char *tdir;

    tdir = dollar(dir);
    cleanup_push(tdir, xfree);
    if (tdir == ((void*)0) ||
 (tilde(edir, tdir) != 0) ||
 !(nd = dnormalize(edir->len ? edir->s : STRdot,
     symlinks == SYM_IGNORE || symlinks == SYM_EXPAND)) ||
 ((*dfd = opendir(short2str(nd))) == ((void*)0))) {
 xfree(nd);
 if (cmd == SPELL || SearchNoDirErr) {
     cleanup_until(tdir);
     return (-2);
 }




 xprintf("\n%S %s\n", edir->len ? edir->s : (tdir ? tdir : dir),
  (errno == ENOTDIR ? CGETS(30, 10, "not a directory") :
  (errno == ENOENT ? CGETS(30, 11, "not found") :
   CGETS(30, 12, "unreadable"))));
 NeedsRedraw = 1;
 cleanup_until(tdir);
 return (-1);
    }
    cleanup_until(tdir);
    if (nd) {
 if (*dir != '\0') {
     int slash;




     slash = edir->len != 0 && edir->s[edir->len - 1] == '/';
     edir->len = 0;
     Strbuf_append(edir, nd);
     if (slash != 0 && edir->s[edir->len - 1] != '/')
  Strbuf_append1(edir, '/');
     Strbuf_terminate(edir);
 }
 xfree(nd);
    }
    return 0;
}
