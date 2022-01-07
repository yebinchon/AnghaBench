
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varent {int v_flags; int ** vec; int v_name; } ;
typedef int Char ;


 int ERR_NAME ;
 int ERR_READONLY ;
 int G_APPEND ;
 int VAR_READONLY ;
 int cleanup_push (int *,int ) ;
 int cleanup_until (int *) ;
 struct varent* getvx (int *,int) ;
 int * globone (int *,int ) ;
 int stderror (int,int ) ;
 int xfree ;

__attribute__((used)) static void
asx(Char *vp, int subscr, Char *p)
{
    struct varent *v = getvx(vp, subscr);
    Char *prev;

    if (v->v_flags & VAR_READONLY)
 stderror(ERR_READONLY|ERR_NAME, v->v_name);
    prev = v->vec[subscr - 1];
    cleanup_push(prev, xfree);
    v->vec[subscr - 1] = globone(p, G_APPEND);
    cleanup_until(prev);
}
