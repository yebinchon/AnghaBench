
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct stat {int dummy; } ;
struct file {int dummy; } ;


 int ENXIO ;

__attribute__((used)) static int
timerfd_stat(struct file *fp, struct stat *st, struct ucred *active_cred,
    struct thread *td)
{

 return (ENXIO);
}
