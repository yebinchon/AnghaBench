
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int uint32_t ;


 int PJDLOG_ASSERT (int) ;
 scalar_t__ RAND_bytes (unsigned char*,int) ;
 int arc4random () ;
 int arc4random_buf (unsigned char*,size_t) ;
 int bcopy (int *,unsigned char*,int) ;

int
adist_random(unsigned char *buf, size_t size)
{
 if (RAND_bytes(buf, (int)size) == 0)
  return (-1);
 return (0);

}
