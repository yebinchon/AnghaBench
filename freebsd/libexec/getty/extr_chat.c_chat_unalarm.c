
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FIONBIO ;
 int STDIN_FILENO ;
 int ioctl (int ,int ,int*) ;

__attribute__((used)) static int
chat_unalarm(void)
{
 int off = 0;
 return ioctl(STDIN_FILENO, FIONBIO, &off);
}
