
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Strbuf {int dummy; } ;
typedef int Char ;


 int PATHSEP ;
 int STRKPATH ;
 int STRRparen ;
 struct Strbuf Strbuf_INIT ;
 int Strbuf_append (struct Strbuf*,int ) ;
 int Strbuf_append1 (struct Strbuf*,int ) ;
 int * Strbuf_finish (struct Strbuf*) ;
 int cleanup_push (int *,int ) ;
 int cleanup_until (int *) ;
 scalar_t__ eq (int *,int ) ;
 int tsetenv (int ,int *) ;
 int xfree ;

__attribute__((used)) static void
exportpath(Char **val)
{
    struct Strbuf buf = Strbuf_INIT;
    Char *exppath;

    if (val)
 while (*val) {
     Strbuf_append(&buf, *val++);
     if (*val == 0 || eq(*val, STRRparen))
  break;
     Strbuf_append1(&buf, PATHSEP);
 }
    exppath = Strbuf_finish(&buf);
    cleanup_push(exppath, xfree);
    tsetenv(STRKPATH, exppath);
    cleanup_until(exppath);
}
