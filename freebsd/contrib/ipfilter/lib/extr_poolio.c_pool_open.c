
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPLOOKUP_NAME ;
 int OPT_DONTOPEN ;
 int O_RDWR ;
 int open (int ,int ) ;
 int opts ;
 int poolfd ;

int
pool_open()
{

 if ((opts & OPT_DONTOPEN) != 0)
  return 0;

 if (poolfd == -1)
  poolfd = open(IPLOOKUP_NAME, O_RDWR);
 return poolfd;
}
