
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct KeyFuncs {unsigned char* name; int func; } ;
struct TYPE_3__ {int cmd; int str; } ;
typedef TYPE_1__ XmapVal ;
typedef unsigned char Char ;


 unsigned char* CGETS (int,int,char*) ;
 struct KeyFuncs* FuncNames ;
 int STRBB ;
 int STRQQ ;



 int abort () ;
 int cleanup_push (unsigned char*,int ) ;
 int cleanup_until (unsigned char*) ;
 unsigned char* unparsestring (int *,int ) ;
 int xfree ;
 int xprintf (char const*,unsigned char const*) ;

void
printOne(const Char *key, const XmapVal *val, int ntype)
{
    struct KeyFuncs *fp;
    static const char *fmt = "%s\n";

    xprintf("%-15S-> ", key);
    if (val != ((void*)0))
 switch (ntype) {
 case 128:
 case 129: {
     unsigned char *p;

     p = unparsestring(&val->str, ntype == 128 ? STRQQ : STRBB);
     cleanup_push(p, xfree);
     xprintf(fmt, p);
     cleanup_until(p);
     break;
 }
 case 130:
     for (fp = FuncNames; fp->name; fp++)
  if (val->cmd == fp->func)
      xprintf(fmt, fp->name);
  break;
 default:
     abort();
     break;
 }
    else
 xprintf(fmt, CGETS(9, 7, "no input"));
}
