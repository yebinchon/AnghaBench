
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Strbuf {char* s; size_t len; } ;
typedef int eChar ;
typedef char Char ;


 int SPELL ;
 scalar_t__ StrQcmp (char*,char*) ;
 struct Strbuf Strbuf_INIT ;
 int Strbuf_append (struct Strbuf*,char*) ;
 int Strbuf_append1 (struct Strbuf*,char const) ;
 int Strbuf_cleanup ;
 int Strbuf_terminate (struct Strbuf*) ;
 int TW_COMMAND ;
 int cleanup_ignore (struct Strbuf*) ;
 int cleanup_push (struct Strbuf*,int ) ;
 int cleanup_until (struct Strbuf*) ;
 int t_search (struct Strbuf*,int ,int,int,char*,int ) ;
 int xfree (char*) ;

int
spell_me(struct Strbuf *oldname, int looking, Char *pat, eChar suf)
{
    struct Strbuf guess = Strbuf_INIT, newname = Strbuf_INIT;
    const Char *old = oldname->s;
    size_t ws;
    int foundslash = 0;
    int retval;

    cleanup_push(&guess, Strbuf_cleanup);
    cleanup_push(&newname, Strbuf_cleanup);
    for (;;) {
 while (*old == '/') {
     Strbuf_append1(&newname, *old++);
     foundslash = 1;
 }

 if (*old != '\0' && old[1] == '\0')
     Strbuf_append1(&newname, *old++);
 Strbuf_terminate(&newname);
 if (*old == '\0') {
     retval = (StrQcmp(oldname->s, newname.s) != 0);
     cleanup_ignore(&newname);
     xfree(oldname->s);
     *oldname = newname;
     cleanup_until(&guess);
     return retval;
 }
 guess.len = 0;
 Strbuf_append(&guess, newname.s);
 ws = guess.len;
 for (; *old != '/' && *old != '\0'; old++)
     Strbuf_append1(&guess, *old);
 Strbuf_terminate(&guess);






 retval = t_search(&guess, SPELL,
     looking == TW_COMMAND && (foundslash || *old != '/') ?
     TW_COMMAND : looking, 1, pat, suf);
 if (retval >= 4 || retval < 0) {
     cleanup_until(&guess);
     return -1;
 }
 Strbuf_append(&newname, guess.s + ws);
    }




}
