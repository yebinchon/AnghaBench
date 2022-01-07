
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GIDC ;


 int GID_SZ ;
 scalar_t__ calloc (int ,int) ;
 int ** gidtb ;
 scalar_t__ gidtb_fail ;

__attribute__((used)) static int
gidtb_start(void)
{

 if (gidtb != ((void*)0))
  return (0);
 if (gidtb_fail)
  return (-1);
 if ((gidtb = (GIDC **)calloc(GID_SZ, sizeof(GIDC *))) == ((void*)0)) {
  ++gidtb_fail;
  return (-1);
 }
 return (0);
}
