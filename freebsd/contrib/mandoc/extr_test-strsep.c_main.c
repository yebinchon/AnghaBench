
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strsep (char**,char*) ;

int
main(void)
{
 char buf[6] = "aybxc";
 char *workp = buf;
 char *retp = strsep(&workp, "xy");
 return ! (retp == buf && buf[1] == '\0' && workp == buf + 2);
}
