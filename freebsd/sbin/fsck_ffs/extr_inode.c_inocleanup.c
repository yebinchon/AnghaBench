
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inoinfo {int dummy; } ;


 int free (char*) ;
 int * inphead ;
 int inplast ;
 struct inoinfo** inpsort ;

void
inocleanup(void)
{
 struct inoinfo **inpp;

 if (inphead == ((void*)0))
  return;
 for (inpp = &inpsort[inplast - 1]; inpp >= inpsort; inpp--)
  free((char *)(*inpp));
 free((char *)inphead);
 free((char *)inpsort);
 inphead = inpsort = ((void*)0);
}
