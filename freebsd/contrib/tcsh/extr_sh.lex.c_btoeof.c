
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int L_XTND ;
 int SHIN ;
 int TCSH_F_SEEK ;
 int * alvec ;
 int * alvecp ;
 int aret ;
 int bfree () ;
 int * evalp ;
 int * evalvec ;
 int feobp ;
 int fseekp ;
 int lseek (int ,int ,int ) ;
 int wfree () ;

void
btoeof(void)
{
    (void) lseek(SHIN, (off_t) 0, L_XTND);
    aret = TCSH_F_SEEK;
    fseekp = feobp;
    alvec = ((void*)0);
    alvecp = ((void*)0);
    evalvec = ((void*)0);
    evalp = ((void*)0);
    wfree();
    bfree();
}
