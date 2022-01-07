
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int * Strsave (int const*) ;
 int cleanup_ignore (int *) ;
 int cleanup_push (int *,int ) ;
 int cleanup_until (int *) ;
 int setv (int const*,int *,int) ;
 int xfree ;

void
setcopy(const Char *var, const Char *val, int flags)
{
    Char *copy;

    copy = Strsave(val);
    cleanup_push(copy, xfree);
    setv(var, copy, flags);
    cleanup_ignore(copy);
    cleanup_until(copy);
}
