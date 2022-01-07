
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct serial {int fd; } ;


 int TCSBRK ;
 int TIOCCBRK ;
 int TIOCSBRK ;
 int ioctl (int ,int ,int ) ;
 int select (int ,int ,int ,int ,struct timeval*) ;
 int tcsendbreak (int ,int ) ;

__attribute__((used)) static int
hardwire_send_break (struct serial *scb)
{
}
