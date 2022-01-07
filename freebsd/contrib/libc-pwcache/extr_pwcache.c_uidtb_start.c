
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UIDC ;


 int UID_SZ ;
 scalar_t__ calloc (int ,int) ;
 int ** uidtb ;
 scalar_t__ uidtb_fail ;

__attribute__((used)) static int
uidtb_start(void)
{

 if (uidtb != ((void*)0))
  return (0);
 if (uidtb_fail)
  return (-1);
 if ((uidtb = (UIDC **)calloc(UID_SZ, sizeof(UIDC *))) == ((void*)0)) {
  ++uidtb_fail;
  return (-1);
 }
 return (0);
}
