
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GIDC ;


 int GNM_SZ ;
 scalar_t__ calloc (int ,int) ;
 int ** grptb ;
 scalar_t__ grptb_fail ;

__attribute__((used)) static int
grptb_start(void)
{

 if (grptb != ((void*)0))
  return (0);
 if (grptb_fail)
  return (-1);
 if ((grptb = (GIDC **)calloc(GNM_SZ, sizeof(GIDC *))) == ((void*)0)) {
  ++grptb_fail;
  return (-1);
 }
 return (0);
}
