
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*,char const*) ;
 int errno ;
 int errx (int,char*,char const*) ;

void
Perror(const char *cmd)
{
 switch (errno) {

 case 129:
  errx(1, "%s: no such interface", cmd);
  break;

 case 128:
  errx(1, "%s: permission denied", cmd);
  break;

 default:
  err(1, "%s", cmd);
 }
}
