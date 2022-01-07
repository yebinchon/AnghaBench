
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct KeyFuncs {int desc; scalar_t__ name; } ;


 struct KeyFuncs* FuncNames ;
 int xprintf (char*,scalar_t__,int ) ;

__attribute__((used)) static void
list_functions(void)
{
    struct KeyFuncs *fp;

    for (fp = FuncNames; fp->name; fp++) {
 xprintf("%s\n          %s\n", fp->name, fp->desc);
    }
}
