
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long s_addr; } ;
struct sockaddr_in {int sin_port; int sin_family; TYPE_1__ sin_addr; } ;


 int AF_INET ;
 int bcopy (char*,char*,int) ;
 int sscanf (char*,char*,unsigned long*,unsigned long*,unsigned long*,unsigned long*,unsigned long*,unsigned long*) ;

__attribute__((used)) static int uaddr_to_sockaddr(char *uaddr, struct sockaddr_in *sin)
{
 unsigned char p_bytes[2];
 int i;
 unsigned long a[6];

 i = sscanf(uaddr, "%lu.%lu.%lu.%lu.%lu.%lu", &a[0], &a[1], &a[2],
      &a[3], &a[4], &a[5]);

 if (i < 6)
  return(1);

 for (i = 0; i < 4; i++)
  sin->sin_addr.s_addr |= (a[i] & 0x000000FF) << (8 * i);

 p_bytes[0] = (unsigned char)a[4] & 0x000000FF;
 p_bytes[1] = (unsigned char)a[5] & 0x000000FF;

 sin->sin_family = AF_INET;
 bcopy((char *)&p_bytes, (char *)&sin->sin_port, 2);

 return (0);
}
