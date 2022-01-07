
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int setsockopt (int,int,int,char*,int) ;

int
SetSockOpt(int fd, int level, int option, int yesno)
{
    return setsockopt(fd, level, option,
    (char *)&yesno, sizeof yesno);
}
