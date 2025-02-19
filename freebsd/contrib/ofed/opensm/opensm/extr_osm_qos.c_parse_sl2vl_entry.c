
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint8_t ;


 int parse_one_unsigned (char const*,char,unsigned int*) ;

__attribute__((used)) static int parse_sl2vl_entry(const char *str, uint8_t * raw)
{
 unsigned val1, val2;
 const char *p = str;
 p += parse_one_unsigned(p, ',', &val1);
 p += parse_one_unsigned(p, ',', &val2);
 *raw = (val1 << 4) | (val2 & 0xf);
 return (int)(p - str);
}
