
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_int ;


 int getRandomNumber () ;

__attribute__((used)) static u_int
live_random_example_read(void *buf, u_int c)
{
 uint8_t *b;
 int count;

 b = buf;

 for (count = 0; count < c; count++)
  b[count] = getRandomNumber();


 return (c);
}
