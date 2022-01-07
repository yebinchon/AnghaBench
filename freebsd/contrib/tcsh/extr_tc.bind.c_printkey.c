
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uChar ;
struct KeyFuncs {scalar_t__ const func; int name; } ;
struct TYPE_5__ {int len; scalar_t__* buf; } ;
typedef scalar_t__ KEYCMD ;
typedef TYPE_1__ CStr ;


 struct KeyFuncs* FuncNames ;
 int PrintXkey (TYPE_1__*) ;
 int STRQQ ;
 int cleanup_push (unsigned char*,int ) ;
 int cleanup_until (unsigned char*) ;
 unsigned char* unparsestring (TYPE_1__*,int ) ;
 int xfree ;
 int xprintf (char*,unsigned char*,int ) ;

__attribute__((used)) static void
printkey(const KEYCMD *map, CStr *in)
{
    struct KeyFuncs *fp;

    if (in->len < 2) {
 unsigned char *unparsed;

 unparsed = unparsestring(in, STRQQ);
 cleanup_push(unparsed, xfree);
 for (fp = FuncNames; fp->name; fp++) {
     if (fp->func == map[(uChar) *(in->buf)]) {
  xprintf("%s\t->\t%s\n", unparsed, fp->name);
     }
 }
 cleanup_until(unparsed);
    }
    else
 PrintXkey(in);
}
