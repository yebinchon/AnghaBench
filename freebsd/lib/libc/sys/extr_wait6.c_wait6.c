
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __wrusage {int dummy; } ;
typedef int siginfo_t ;
typedef int pid_t ;
typedef int idtype_t ;
typedef int id_t ;


 size_t INTERPOS_wait6 ;
 scalar_t__* __libc_interposing ;
 int stub1 (int ,int ,int*,int,struct __wrusage*,int *) ;

pid_t
wait6(idtype_t idtype, id_t id, int *status, int options, struct __wrusage *ru,
    siginfo_t *infop)
{

 return (((pid_t (*)(idtype_t, id_t, int *, int, struct __wrusage *,
     siginfo_t *))__libc_interposing[INTERPOS_wait6])(idtype, id,
     status, options, ru, infop));
}
