
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int UINT8 ;



__attribute__((used)) static __inline int acpi_hp_hex_to_int(const UINT8 *hexin, UINT8 *byteout)
{
 unsigned int hi;
 unsigned int lo;

 hi = hexin[0];
 lo = hexin[1];
 if ('0' <= hi && hi <= '9')
  hi -= '0';
 else if ('A' <= hi && hi <= 'F')
  hi -= ('A' - 10);
 else if ('a' <= hi && hi <= 'f')
  hi -= ('a' - 10);
 else
  return (1);
 if ('0' <= lo && lo <= '9')
  lo -= '0';
 else if ('A' <= lo && lo <= 'F')
  lo -= ('A' - 10);
 else if ('a' <= lo && lo <= 'f')
  lo -= ('a' - 10);
 else
  return (1);
 *byteout = (hi << 4) + lo;

 return (0);
}
