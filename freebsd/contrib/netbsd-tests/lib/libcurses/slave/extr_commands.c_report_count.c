
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t WRITE_PIPE ;
 int err (int,char*) ;
 int ret_count ;
 int * slvpipe ;
 scalar_t__ write (int ,int*,int) ;

void
report_count(int count)
{
 int type;

 type = ret_count;
 if (write(slvpipe[WRITE_PIPE], &type, sizeof(int)) < 0)
  err(1, "command pipe write for count type failed");

 if (write(slvpipe[WRITE_PIPE], &count, sizeof(int)) < 0)
  err(1, "command pipe write for count");
}
