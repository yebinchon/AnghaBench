
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SRC_SCR ;
 int SW_RST ;
 int WRITE4 (int *,int ,int ) ;
 int * src_sc ;

int
src_swreset(void)
{

 if (src_sc == ((void*)0))
  return (1);

 WRITE4(src_sc, SRC_SCR, SW_RST);

 return (0);
}
