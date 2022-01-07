
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct strbuf {scalar_t__* s; int len; } ;
struct stat {int st_mode; } ;
struct TYPE_5__ {int gl_flags; int gl_matchc; } ;
typedef TYPE_1__ glob_t ;
typedef scalar_t__ Char ;


 scalar_t__ const EOS ;
 int GLOB_MARK ;
 scalar_t__ Lstat (scalar_t__*,struct stat*) ;
 scalar_t__ SEP ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ Stat (scalar_t__*,struct stat*) ;
 int glob3 (struct strbuf*,scalar_t__ const*,scalar_t__ const*,scalar_t__ const*,TYPE_1__*,int) ;
 int globextend (scalar_t__*,TYPE_1__*) ;
 scalar_t__ ismeta (scalar_t__ const) ;
 int strbuf_append1 (struct strbuf*,scalar_t__) ;
 int strbuf_terminate (struct strbuf*) ;

__attribute__((used)) static int
glob2(struct strbuf *pathbuf, const Char *pattern, glob_t *pglob, int no_match)
{
    struct stat sbuf;
    int anymeta;
    const Char *p;
    size_t orig_len;





    anymeta = 0;
    for (;;) {
 if (*pattern == EOS) {
     strbuf_terminate(pathbuf);

     if (Lstat(pathbuf->s, &sbuf))
  return (0);

     if (((pglob->gl_flags & GLOB_MARK) &&
   pathbuf->s[pathbuf->len - 1] != SEP) &&
  (S_ISDIR(sbuf.st_mode)





   )) {
  strbuf_append1(pathbuf, SEP);
  strbuf_terminate(pathbuf);
     }
     ++pglob->gl_matchc;
     globextend(pathbuf->s, pglob);
     return 0;
 }


 p = pattern;
 orig_len = pathbuf->len;
 while (*p != EOS && *p != SEP) {
     if (ismeta(*p))
  anymeta = 1;
     strbuf_append1(pathbuf, *p++);
 }

 if (!anymeta) {
     pattern = p;
     while (*pattern == SEP)
  strbuf_append1(pathbuf, *pattern++);
 }
 else {
     pathbuf->len = orig_len;
     return (glob3(pathbuf, pattern, p, pattern, pglob, no_match));
 }
    }

}
