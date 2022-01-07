
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mtype_t ;
typedef int SCR ;


 int FREE_SPACE (int *,char*,int ) ;
 int errno ;
 char* msg_print (int *,char const*,int*) ;
 int msgq (int *,int ,char const*,char const*) ;

void
msgq_str(
 SCR *sp,
 mtype_t mtype,
 const char *str,
 const char *fmt)
{
 int nf, sv_errno;
 char *p;

 if (str == ((void*)0)) {
  msgq(sp, mtype, "%s", fmt);
  return;
 }

 sv_errno = errno;
 p = msg_print(sp, str, &nf);
 errno = sv_errno;
 msgq(sp, mtype, fmt, p);
 if (nf)
  FREE_SPACE(sp, p, 0);
}
