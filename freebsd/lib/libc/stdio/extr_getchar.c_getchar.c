
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FLOCKFILE_CANCELSAFE (int ) ;
 int FUNLOCKFILE_CANCELSAFE () ;
 int __sgetc (int ) ;
 int stdin ;

int
getchar(void)
{
 int retval;
 FLOCKFILE_CANCELSAFE(stdin);


 retval = __sgetc(stdin);
 FUNLOCKFILE_CANCELSAFE();
 return (retval);
}
