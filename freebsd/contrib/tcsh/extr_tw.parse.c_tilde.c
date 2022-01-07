
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Strbuf {int len; char* s; } ;
typedef int Char ;


 int Strbuf_append (struct Strbuf*,int*) ;
 int Strbuf_terminate (struct Strbuf*) ;
 int* Strnsave (int*,int) ;
 int* gethdir (int*) ;
 int* globequal (int*) ;
 int xfree (int*) ;

__attribute__((used)) static int
tilde(struct Strbuf *new, Char *old)
{
    Char *o, *p;

    new->len = 0;
    switch (old[0]) {
    case '~': {
 Char *name, *home;

 old++;
 for (o = old; *o && *o != '/'; o++)
     continue;
 name = Strnsave(old, o - old);
 home = gethdir(name);
 xfree(name);
 if (home == ((void*)0))
     goto err;
 Strbuf_append(new, home);
 xfree(home);



 if (new->s[0] == '/' && new->len == 1 && *o == '/')
     ++o;
 Strbuf_append(new, o);
 break;
    }

    case '=':
 if ((p = globequal(old)) == ((void*)0))
     goto err;
 if (p != old) {
     Strbuf_append(new, p);
     xfree(p);
     break;
 }


    default:
 Strbuf_append(new, old);
 break;
    }
    Strbuf_terminate(new);
    return 0;

 err:
    Strbuf_terminate(new);
    return -1;
}
