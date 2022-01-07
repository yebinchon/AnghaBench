
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varent {int const* v_name; struct varent* v_right; struct varent* v_left; } ;
typedef int Char ;


 int Strcmp (int const*,int const*) ;

struct varent *
adrof1(const Char *name, struct varent *v)
{
    int cmp;

    v = v->v_left;
    while (v && ((cmp = *name - *v->v_name) != 0 ||
   (cmp = Strcmp(name, v->v_name)) != 0))
 if (cmp < 0)
     v = v->v_left;
 else
     v = v->v_right;
    return v;
}
