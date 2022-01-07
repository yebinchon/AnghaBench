
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int FLOCKFILE_CANCELSAFE (int *) ;
 int FUNLOCKFILE_CANCELSAFE () ;
 int __sflush (int *) ;

__attribute__((used)) static int
sflush_locked(FILE *fp)
{
 int ret;

 FLOCKFILE_CANCELSAFE(fp);
 ret = __sflush(fp);
 FUNLOCKFILE_CANCELSAFE();
 return (ret);
}
