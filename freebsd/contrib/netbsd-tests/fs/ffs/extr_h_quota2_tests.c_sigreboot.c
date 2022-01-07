
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sem_post (int *) ;
 int sigsem ;

__attribute__((used)) static void
sigreboot(int sig)
{

 sem_post(&sigsem);
}
