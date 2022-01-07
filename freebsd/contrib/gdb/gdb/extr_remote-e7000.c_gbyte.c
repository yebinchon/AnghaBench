
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int convert_hex_digit (int ) ;
 int gch () ;

__attribute__((used)) static unsigned int
gbyte (void)
{
  int high = convert_hex_digit (gch ());
  int low = convert_hex_digit (gch ());

  return (high << 4) + low;
}
