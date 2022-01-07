
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;
 int poolfd ;

void
pool_close()
{
 if (poolfd != -1) {
  close(poolfd);
  poolfd = -1;
 }
}
