
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct KeyFuncs {scalar_t__ func; scalar_t__ name; } ;
struct TYPE_3__ {int len; scalar_t__* buf; } ;
typedef scalar_t__ KEYCMD ;
typedef scalar_t__ Char ;
typedef TYPE_1__ CStr ;


 int CGETS (int,int,char*) ;
 scalar_t__* CcAltMap ;
 scalar_t__* CcKeyMap ;
 scalar_t__ F_UNASSIGNED ;
 struct KeyFuncs* FuncNames ;
 int STRQQ ;
 int cleanup_push (unsigned char*,int ) ;
 int cleanup_until (unsigned char*) ;
 unsigned char* unparsestring (TYPE_1__*,int ) ;
 int xfree ;
 int xprintf (char*,...) ;

__attribute__((used)) static void
printkeys(KEYCMD *map, int first, int last)
{
    struct KeyFuncs *fp;
    Char firstbuf[2], lastbuf[2];
    CStr fb, lb;
    unsigned char *unparsed;
    fb.buf = firstbuf;
    lb.buf = lastbuf;

    firstbuf[0] = (Char) first;
    firstbuf[1] = 0;
    lastbuf[0] = (Char) last;
    lastbuf[1] = 0;
    fb.len = 1;
    lb.len = 1;

    unparsed = unparsestring(&fb, STRQQ);
    cleanup_push(unparsed, xfree);
    if (map[first] == F_UNASSIGNED) {
 if (first == last)
     xprintf(CGETS(20, 10, "%-15s->  is undefined\n"), unparsed);
 cleanup_until(unparsed);
 return;
    }

    for (fp = FuncNames; fp->name; fp++) {
 if (fp->func == map[first]) {
     if (first == last)
  xprintf("%-15s->  %s\n", unparsed, fp->name);
     else {
  unsigned char *p;

  p = unparsestring(&lb, STRQQ);
  cleanup_push(p, xfree);
  xprintf("%-4s to %-7s->  %s\n", unparsed, p, fp->name);
     }
     cleanup_until(unparsed);
     return;
 }
    }
    xprintf(CGETS(20, 11, "BUG!!! %s isn't bound to anything.\n"), unparsed);
    if (map == CcKeyMap)
 xprintf("CcKeyMap[%d] == %d\n", first, CcKeyMap[first]);
    else
 xprintf("CcAltMap[%d] == %d\n", first, CcAltMap[first]);
    cleanup_until(unparsed);
}
