
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int netdissect_options ;


 int LCHECK2 (int,int) ;
 int ND_TCHECK (int const) ;





 int TEST_RET_LEN (int) ;
 int resp_print_bulk_array (int *,int const*,int) ;
 int resp_print_bulk_string (int *,int const*,int) ;
 int resp_print_error (int *,int const*,int) ;
 int resp_print_inline (int *,int const*,int) ;
 int resp_print_integer (int *,int const*,int) ;
 int resp_print_simple_string (int *,int const*,int) ;

__attribute__((used)) static int
resp_parse(netdissect_options *ndo, register const u_char *bp, int length)
{
    u_char op;
    int ret_len;

    LCHECK2(length, 1);
    ND_TCHECK(*bp);
    op = *bp;


    switch(op) {
        case 128: ret_len = resp_print_simple_string(ndo, bp, length); break;
        case 129: ret_len = resp_print_integer(ndo, bp, length); break;
        case 130: ret_len = resp_print_error(ndo, bp, length); break;
        case 131: ret_len = resp_print_bulk_string(ndo, bp, length); break;
        case 132: ret_len = resp_print_bulk_array(ndo, bp, length); break;
        default: ret_len = resp_print_inline(ndo, bp, length); break;
    }






    TEST_RET_LEN(ret_len);

trunc:
    return (-1);
}
