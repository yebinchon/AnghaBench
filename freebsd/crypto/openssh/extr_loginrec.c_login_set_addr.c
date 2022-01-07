
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct TYPE_2__ {int sa; } ;
struct logininfo {TYPE_1__ hostaddr; } ;


 int memcpy (int *,struct sockaddr const*,unsigned int) ;

void
login_set_addr(struct logininfo *li, const struct sockaddr *sa,
    const unsigned int sa_size)
{
 unsigned int bufsize = sa_size;


 if (sizeof(li->hostaddr) < sa_size)
  bufsize = sizeof(li->hostaddr);

 memcpy(&li->hostaddr.sa, sa, bufsize);
}
