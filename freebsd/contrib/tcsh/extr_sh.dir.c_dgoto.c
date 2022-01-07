
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* di_name; } ;
typedef char Char ;


 scalar_t__ ABSOLUTEP (char*) ;
 int Strcpy (char*,char*) ;
 size_t Strlen (char*) ;
 char* agetcwd () ;
 int cleanup_ignore (char*) ;
 int cleanup_push (char*,int (*) (char*)) ;
 int cleanup_until (char*) ;
 char* dcanon (char*,char*) ;
 TYPE_1__* dcwd ;
 int xfree (char*) ;
 char* xmalloc (size_t) ;

__attribute__((used)) static Char *
dgoto(Char *cp)
{
    Char *dp, *ret;

    if (!ABSOLUTEP(cp))
    {
 Char *p, *q;
 size_t cwdlen;

 cwdlen = Strlen(dcwd->di_name);
 if (cwdlen == 1)
     cwdlen = 0;
 dp = xmalloc((cwdlen + Strlen(cp) + 2) * sizeof(Char));
 for (p = dp, q = dcwd->di_name; (*p++ = *q++) != '\0';)
     continue;
 if (cwdlen)
     p[-1] = '/';
 else
     p--;
 Strcpy(p, cp);
 xfree(cp);
 cp = dp;
 dp += cwdlen;
    }
    else
 dp = cp;
    cleanup_push(cp, xfree);
    ret = dcanon(cp, dp);
    cleanup_ignore(cp);
    cleanup_until(cp);

    return ret;
}
