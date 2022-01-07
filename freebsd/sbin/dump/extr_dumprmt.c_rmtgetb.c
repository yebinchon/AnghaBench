
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int read (int ,char*,int) ;
 int rmtape ;
 int rmtconnaborted (int ) ;

int
rmtgetb(void)
{
 char c;

 if (read(rmtape, &c, 1) != 1)
  rmtconnaborted(0);
 return (c);
}
