
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_char ;
typedef int time_t ;


 int EXTRACT_LE_32BITS (int const*) ;
 int int_unix_date (int) ;

__attribute__((used)) static time_t
make_unix_date2(const u_char *date_ptr)
{
    uint32_t x, x2;

    x = EXTRACT_LE_32BITS(date_ptr);
    x2 = ((x & 0xFFFF) << 16) | ((x & 0xFFFF0000) >> 16);
    return int_unix_date(x2);
}
