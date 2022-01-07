
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int t ;
typedef int pid_t ;
typedef int pid ;
typedef int isc_time_t ;
struct TYPE_4__ {int initcount; } ;
typedef TYPE_1__ isc_entropy_t ;


 int TIME_NOW (int *) ;
 int entropypool_adddata (TYPE_1__*,int *,int,int ) ;
 int getpid () ;
 int getppid () ;

__attribute__((used)) static inline void
reseed(isc_entropy_t *ent) {
 isc_time_t t;
 pid_t pid;

 if (ent->initcount == 0) {
  pid = getpid();
  entropypool_adddata(ent, &pid, sizeof(pid), 0);
  pid = getppid();
  entropypool_adddata(ent, &pid, sizeof(pid), 0);
 }






 if (ent->initcount > 100)
  if ((ent->initcount % 50) != 0)
   return;

 TIME_NOW(&t);
 entropypool_adddata(ent, &t, sizeof(t), 0);
 ent->initcount++;
}
