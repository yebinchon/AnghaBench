
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONGEST ;


 int DEPRECATED_REGISTER_RAW_SIZE (int) ;
 int MAX_REGISTER_SIZE ;
 int hex_digit_value (int ) ;
 scalar_t__ is_hex_digit (unsigned char) ;
 scalar_t__ is_whitespace (unsigned char) ;
 int store_unsigned_integer (unsigned char*,int ,int) ;
 int supply_register (int,unsigned char*) ;

__attribute__((used)) static char *
rom68k_supply_one_register (int regno, unsigned char *hex)
{
  ULONGEST value;
  unsigned char regbuf[MAX_REGISTER_SIZE];

  value = 0;
  while (*hex != '\0')
    if (is_hex_digit (*hex))
      value = (value * 16) + hex_digit_value (*hex++);
    else
      break;


  while (is_whitespace (*hex))
    hex++;

  store_unsigned_integer (regbuf, DEPRECATED_REGISTER_RAW_SIZE (regno), value);
  supply_register (regno, regbuf);

  return hex;
}
