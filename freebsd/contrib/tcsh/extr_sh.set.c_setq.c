
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varent {int const* v_name; int v_flags; int** vec; struct varent* v_parent; scalar_t__ v_right; scalar_t__ v_left; scalar_t__ v_bal; struct varent** v_link; } ;
typedef int Char ;


 int ERR_NAME ;
 int ERR_READONLY ;
 int Strcmp (int const*,int const*) ;
 int const* Strsave (int const*) ;
 int VAR_READONLY ;
 int balance (struct varent*,int,int ) ;
 int blkfree (int**) ;
 int stderror (int,int const*) ;
 int trim (int**) ;
 struct varent* xmalloc (int) ;

void
setq(const Char *name, Char **vec, struct varent *p, int flags)
{
    struct varent *c;
    int f;

    f = 0;
    while ((c = p->v_link[f]) != 0) {
 if ((f = *name - *c->v_name) == 0 &&
     (f = Strcmp(name, c->v_name)) == 0) {
     if (c->v_flags & VAR_READONLY)
  stderror(ERR_READONLY|ERR_NAME, c->v_name);
     blkfree(c->vec);
     c->v_flags = flags;
     trim(c->vec = vec);
     return;
 }
 p = c;
 f = f > 0;
    }
    p->v_link[f] = c = xmalloc(sizeof(struct varent));
    c->v_name = Strsave(name);
    c->v_flags = flags;
    c->v_bal = 0;
    c->v_left = c->v_right = 0;
    c->v_parent = p;
    balance(p, f, 0);
    trim(c->vec = vec);
}
