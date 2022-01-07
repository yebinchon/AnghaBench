
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial {scalar_t__ fd; } ;


 int O_RDWR ;
 scalar_t__ open (char const*,int ) ;

__attribute__((used)) static int
hardwire_open (struct serial *scb, const char *name)
{
  scb->fd = open (name, O_RDWR);
  if (scb->fd < 0)
    return -1;

  return 0;
}
