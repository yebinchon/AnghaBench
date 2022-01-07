
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int siginfo_t ;
typedef int pid_t ;
typedef int idtype_t ;
typedef int id_t ;


 size_t INTERPOS_wait6 ;
 scalar_t__* __libc_interposing ;
 int memset (int *,int ,int) ;
 int stub1 (int ,int ,int*,int,struct __wrusage*,int *) ;

int
__waitid(idtype_t idtype, id_t id, siginfo_t *info, int flags)
{
 int status;
 pid_t ret;

 ret = ((pid_t (*)(idtype_t, id_t, int *, int, struct __wrusage *,
     siginfo_t *))__libc_interposing[INTERPOS_wait6])(idtype, id,
     &status, flags, ((void*)0), info);
 if (ret == 0 && info != ((void*)0))
  memset(info, 0, sizeof(*info));
 else if (ret > 0)
  ret = 0;
 return (ret);
}
