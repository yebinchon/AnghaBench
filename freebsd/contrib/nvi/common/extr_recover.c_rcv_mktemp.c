
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCR ;


 int M_SYSERR ;
 int mkstemp (char*) ;
 int msgq_str (int *,int ,char*,char*) ;

__attribute__((used)) static int
rcv_mktemp(
 SCR *sp,
 char *path,
 char *dname)
{
 int fd;

 if ((fd = mkstemp(path)) == -1)
  msgq_str(sp, M_SYSERR, dname, "%s");
 return (fd);
}
