
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FAPPEND ;
 int FDSYNC ;
 int FNONBLOCK ;
 int FRSYNC ;
 int FSYNC ;
 int IO_APPEND ;
 int IO_NDELAY ;
 int IO_SYNC ;

__attribute__((used)) static int
ioflags(int ioflags)
{
 int flags = 0;

 if (ioflags & IO_APPEND)
  flags |= FAPPEND;
 if (ioflags & IO_NDELAY)
  flags |= FNONBLOCK;
 if (ioflags & IO_SYNC)
  flags |= (FSYNC | FDSYNC | FRSYNC);

 return (flags);
}
