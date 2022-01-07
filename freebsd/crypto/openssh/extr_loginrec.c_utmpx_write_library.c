
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utmpx {int dummy; } ;
struct logininfo {int dummy; } ;


 int endutxent () ;
 int pututxline (struct utmpx*) ;
 int setutxent () ;

__attribute__((used)) static int
utmpx_write_library(struct logininfo *li, struct utmpx *utx)
{
 setutxent();
 pututxline(utx);




 return (1);
}
