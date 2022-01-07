
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct flock {int l_pid; int member_5; int member_4; int member_3; int member_2; int member_1; int member_0; } ;
struct TYPE_2__ {int pool_fd; } ;


 int EXIT_FAILURE ;
 int F_SETLKW ;
 int F_WRLCK ;
 int KVP_LOG (int ,char*,int) ;
 int LOG_ERR ;
 int SEEK_SET ;
 int exit (int ) ;
 int fcntl (int ,int ,struct flock*) ;
 int getpid () ;
 TYPE_1__* kvp_pools ;

__attribute__((used)) static void
kvp_acquire_lock(int pool)
{
 struct flock fl = { 0, 0, 0, F_WRLCK, SEEK_SET, 0 };

 fl.l_pid = getpid();

 if (fcntl(kvp_pools[pool].pool_fd, F_SETLKW, &fl) == -1) {
  KVP_LOG(LOG_ERR, "Failed to acquire the lock pool: %d", pool);
  exit(EXIT_FAILURE);
 }
}
