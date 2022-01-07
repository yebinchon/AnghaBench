
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int curinode ;
 int warnx (char*) ;

int
checkactive(void)
{
    if (!curinode) {
 warnx("no current inode\n");
 return 0;
    }
    return 1;
}
