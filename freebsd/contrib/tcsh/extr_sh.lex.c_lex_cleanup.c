
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wordent {int dummy; } ;


 int freelex (struct wordent*) ;

void
lex_cleanup(void *xvp)
{
    struct wordent *vp;

    vp = xvp;
    freelex(vp);
}
