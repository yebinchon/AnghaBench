
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* di_prev; TYPE_1__* di_next; } ;
struct TYPE_5__ {int di_name; } ;
struct TYPE_4__ {int di_name; } ;
typedef char Char ;


 scalar_t__ Isdigit (char) ;
 int STRowd ;
 char* Strspl (char const*,char*) ;
 TYPE_3__* dcwd ;
 char* getstakd (int) ;
 char* varval (int ) ;

Char *
globequal(Char *old)
{
    int dig;
    const Char *dir;
    Char *b;





    if (old[1] == '-' && (old[2] == '\0' || old[2] == '/')) {

 const Char *olddir = varval (STRowd);

 if (olddir && *olddir &&
     !dcwd->di_next->di_name && !dcwd->di_prev->di_name)
     return Strspl(olddir, &old[2]);
 dig = -1;
 b = &old[2];
    }
    else if (Isdigit(old[1])) {

 dig = old[1] - '0';
 for (b = &old[2]; Isdigit(*b); b++)
     dig = dig * 10 + (*b - '0');
 if (*b != '\0' && *b != '/')

     return old;
    }
    else

 return old;

    dir = getstakd(dig);
    if (dir == ((void*)0))
 return ((void*)0);
    return Strspl(dir, b);
}
