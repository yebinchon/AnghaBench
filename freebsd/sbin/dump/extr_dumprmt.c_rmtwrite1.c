
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rmtape ;
 int write (int ,char const*,int) ;

void
rmtwrite1(const char *buf, int count)
{

 write(rmtape, buf, count);
}
