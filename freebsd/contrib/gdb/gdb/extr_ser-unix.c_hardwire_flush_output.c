
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial {int fd; } ;


 int TCFLSH ;
 int TCOFLUSH ;
 int TIOCFLUSH ;
 int ioctl (int ,int ,int) ;
 int tcflush (int ,int ) ;

__attribute__((used)) static int
hardwire_flush_output (struct serial *scb)
{
}
