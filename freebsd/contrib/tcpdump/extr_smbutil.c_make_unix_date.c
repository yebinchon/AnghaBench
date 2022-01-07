
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_char ;
typedef int time_t ;


 int EXTRACT_LE_32BITS (int const*) ;
 int int_unix_date (int ) ;

__attribute__((used)) static time_t
make_unix_date(const u_char *date_ptr)
{
    uint32_t dos_date = 0;

    dos_date = EXTRACT_LE_32BITS(date_ptr);

    return int_unix_date(dos_date);
}
