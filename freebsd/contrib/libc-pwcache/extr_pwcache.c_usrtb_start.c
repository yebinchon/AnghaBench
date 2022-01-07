
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UIDC ;


 int UNM_SZ ;
 scalar_t__ calloc (int ,int) ;
 int ** usrtb ;
 scalar_t__ usrtb_fail ;

__attribute__((used)) static int
usrtb_start(void)
{

 if (usrtb != ((void*)0))
  return (0);
 if (usrtb_fail)
  return (-1);
 if ((usrtb = (UIDC **)calloc(UNM_SZ, sizeof(UIDC *))) == ((void*)0)) {
  ++usrtb_fail;
  return (-1);
 }
 return (0);
}
