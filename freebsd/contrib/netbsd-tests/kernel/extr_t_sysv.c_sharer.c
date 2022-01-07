
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATF_REQUIRE_MSG (int,char*,...) ;
 int errno ;
 int exit (int ) ;
 int m2_str ;
 int pgsize ;
 int printf (char*,char const*) ;
 void* shmat (int,int *,int ) ;
 int shmget (int ,int ,int ) ;
 int shmkey ;
 scalar_t__ strcmp (char const*,int ) ;

void
sharer(void)
{
 int shmid;
 void *shm_buf;

 shmid = shmget(shmkey, pgsize, 0);
 ATF_REQUIRE_MSG(shmid != -1, "receiver: shmget:%d", errno);

 shm_buf = shmat(shmid, ((void*)0), 0);
 ATF_REQUIRE_MSG(shm_buf != (void *) -1, "receiver: shmat: %d", errno);

 printf("%s\n", (const char *)shm_buf);

 ATF_REQUIRE_MSG(strcmp((const char *)shm_buf, m2_str) == 0,
     "receiver: data isn't correct");

 exit(0);
}
