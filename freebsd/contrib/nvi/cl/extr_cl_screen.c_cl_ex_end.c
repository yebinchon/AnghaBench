
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GS ;
typedef int CL_PRIVATE ;


 int * GCLP (int *) ;
 int cl_freecap (int *) ;

__attribute__((used)) static int
cl_ex_end(GS *gp)
{
 CL_PRIVATE *clp;

 clp = GCLP(gp);

 cl_freecap(clp);

 return (0);
}
