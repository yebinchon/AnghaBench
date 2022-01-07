
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msghdr {scalar_t__ msg_controllen; int * msg_control; } ;


 int * CMSG_FIRSTHDR (struct msghdr*) ;

int
main(void)
{
 struct msghdr msg;

 msg.msg_control = ((void*)0);
 msg.msg_controllen = 0;

 return CMSG_FIRSTHDR(&msg) != ((void*)0);
}
