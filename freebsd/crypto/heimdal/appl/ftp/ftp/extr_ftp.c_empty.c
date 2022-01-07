
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef int fd_set ;


 int FD_SETSIZE ;
 int select (int ,int *,int *,int *,struct timeval*) ;

int
empty (fd_set * mask, int sec)
{
    struct timeval t;

    t.tv_sec = sec;
    t.tv_usec = 0;
    return (select (FD_SETSIZE, mask, ((void*)0), ((void*)0), &t));
}
