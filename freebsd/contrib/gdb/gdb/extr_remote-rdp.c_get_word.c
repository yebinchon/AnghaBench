
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int get_byte () ;

__attribute__((used)) static unsigned int
get_word (void)
{
  unsigned int val = 0;
  unsigned int c;
  int n;
  for (n = 0; n < 4; n++)
    {
      c = get_byte ();
      val |= c << (n * 8);
    }
  return val;
}
