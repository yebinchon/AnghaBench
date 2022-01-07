
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int ,char*,int) ;
 int warn (char*,int) ;
 int warnx (char*,int) ;

int
main(void)
{
 warnx("%d. warnx", 1);
 warn("%d. warn", 2);
 err(0, "%d. err", 3);

 return 1;
}
