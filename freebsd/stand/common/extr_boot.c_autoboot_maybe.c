
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int autoboot (int,int *) ;
 scalar_t__ autoboot_tried ;
 char* getenv (char*) ;
 scalar_t__ strcasecmp (char*,char*) ;

void
autoboot_maybe()
{
 char *cp;

 cp = getenv("autoboot_delay");
 if ((autoboot_tried == 0) && ((cp == ((void*)0)) || strcasecmp(cp, "NO")))
  autoboot(-1, ((void*)0));
}
