
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Ain {scalar_t__ f_seek; int c_seek; int a_seek; scalar_t__ type; } ;
typedef scalar_t__ off_t ;


 int CGETS (int,int,char*) ;



 int abort () ;
 int alvec ;
 int alvecp ;
 scalar_t__ aret ;
 int cantell ;
 int evalp ;
 int evalvec ;
 scalar_t__ fbobp ;
 scalar_t__* fclens ;
 scalar_t__ feobp ;
 scalar_t__ fseekp ;
 int xprintf (int ,scalar_t__,...) ;

void
bseek(struct Ain *l)
{
    switch (aret = l->type) {
    case 129:
 evalvec = l->a_seek;
 evalp = l->c_seek;



 return;
    case 130:
 alvec = l->a_seek;
 alvecp = l->c_seek;



 return;
    case 128:



 fseekp = l->f_seek;
 return;
    default:
 xprintf(CGETS(16, 7, "Bad seek type %d\n"), aret);
 abort();
    }
}
