
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_buf {int dummy; } ;
typedef int Char ;


 int Dcp ;
 int * const* Dvp ;
 scalar_t__ Dword (struct blk_buf*) ;
 int STRNULL ;
 struct blk_buf* bb_alloc () ;
 int ** bb_finish (struct blk_buf*) ;
 int bb_free ;
 int cleanup_ignore (struct blk_buf*) ;
 int cleanup_push (struct blk_buf*,int ) ;
 int cleanup_until (struct blk_buf*) ;
 scalar_t__ dolcnt ;
 scalar_t__ dolp ;
 int unDgetC (int ) ;
 int unDredc (int ) ;
 int xfree (struct blk_buf*) ;

__attribute__((used)) static Char **
Dfix2(Char *const *v)
{
    struct blk_buf *bb = bb_alloc();
    Char **vec;

    Dvp = v;
    Dcp = STRNULL;
    unDgetC(0);
    unDredc(0);
    dolp = 0;
    dolcnt = 0;
    cleanup_push(bb, bb_free);
    while (Dword(bb))
 continue;
    cleanup_ignore(bb);
    cleanup_until(bb);
    vec = bb_finish(bb);
    xfree(bb);
    return vec;
}
