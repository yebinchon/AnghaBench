
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int s; } ;
typedef int glob_t ;
typedef scalar_t__ Char ;


 scalar_t__ EOS ;
 int glob2 (struct strbuf*,scalar_t__*,int *,int) ;
 struct strbuf strbuf_INIT ;
 int xfree (int ) ;

__attribute__((used)) static int
glob1(Char *pattern, glob_t *pglob, int no_match)
{
    struct strbuf pathbuf = strbuf_INIT;
    int err;




    if (*pattern == EOS)
 return (0);
    err = glob2(&pathbuf, pattern, pglob, no_match);
    xfree(pathbuf.s);
    return err;
}
