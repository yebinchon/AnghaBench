
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rate ;
typedef int off_t ;
typedef int caddr_t ;
struct TYPE_2__ {scalar_t__ n_value; } ;


 int SIGALRM ;
 long UNKNOWN_RATE ;
 int kmem ;
 long lseek (int ,int ,int ) ;
 TYPE_1__* nl ;
 int read (int ,int ,int) ;
 long sigblock (int ) ;
 int sigmask (int ) ;
 int sigsetmask (long) ;

long
GetClockRate(void)
{
 long rate, mask;

 if (lseek(kmem, (off_t)nl[0].n_value, 0) == -1L)
     return (-1L);

 mask = sigblock(sigmask(SIGALRM));

 if (read(kmem, (caddr_t)&rate, sizeof(rate)) != sizeof(rate))
     rate = UNKNOWN_RATE;

 sigsetmask(mask);
 return (rate);
}
