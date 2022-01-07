
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int convert_hex_digit (int) ;
 int readchar (int ) ;
 int timeout ;

__attribute__((used)) static int
get_hex (int *start)
{
  int value = convert_hex_digit (*start);
  int try;

  *start = readchar (timeout);
  while ((try = convert_hex_digit (*start)) >= 0)
    {
      value <<= 4;
      value += try;
      *start = readchar (timeout);
    }
  return value;
}
