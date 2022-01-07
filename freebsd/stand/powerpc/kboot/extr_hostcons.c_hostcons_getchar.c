
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int host_read (int ,int*,int) ;

__attribute__((used)) static int
hostcons_getchar()
{
 uint8_t ch;
 int rv;

 rv = host_read(0, &ch, 1);
 if (rv == 1)
  return (ch);
 return (-1);
}
