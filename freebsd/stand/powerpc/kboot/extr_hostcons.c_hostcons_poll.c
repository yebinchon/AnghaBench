
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host_timeval {int member_1; int member_0; } ;


 int host_select (int,long*,int *,int *,struct host_timeval*) ;

__attribute__((used)) static int
hostcons_poll()
{
 struct host_timeval tv = {0,0};
 long fds = 1 << 0;
 int ret;

 ret = host_select(32, &fds, ((void*)0), ((void*)0), &tv);
 return (ret > 0);
}
