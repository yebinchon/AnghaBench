
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int seq_t ;
typedef int SCR ;
typedef int CHAR_T ;


 scalar_t__ F_ISSET (int *,int ) ;
 int SC_EX ;
 int SC_SCR_EX ;
 int SC_SCR_VI ;
 int SC_VI ;
 int cl_pfmap (int *,int ,int *,size_t,int *,size_t) ;

int
cl_fmap(SCR *sp, seq_t stype, CHAR_T *from, size_t flen, CHAR_T *to, size_t tlen)
{

 if (F_ISSET(sp, SC_VI) && !F_ISSET(sp, SC_SCR_VI))
  return (0);
 if (F_ISSET(sp, SC_EX) && !F_ISSET(sp, SC_SCR_EX))
  return (0);

 return (cl_pfmap(sp, stype, from, flen, to, tlen));
}
