
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strtol (char const*,char**,int ) ;

__attribute__((used)) static int
comc_parseint(const char *speedstr)
{
 char *p;
 int speed;

 speed = strtol(speedstr, &p, 0);
 if (p == speedstr || *p != '\0' || speed <= 0)
  return (-1);

 return (speed);
}
