
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int netdissect_options ;


 int CONSUME_CR_OR_LF (int const*,int) ;
 int FIND_CR_OR_LF (int const*,int) ;
 int RESP_PRINT_SEGMENT (int *,int const*,int) ;

__attribute__((used)) static int
resp_print_inline(netdissect_options *ndo, register const u_char *bp, int length) {
    int length_cur = length;
    int len;
    const u_char *bp_ptr;
    CONSUME_CR_OR_LF(bp, length_cur);
    bp_ptr = bp;




    FIND_CR_OR_LF(bp_ptr, length_cur);





    len = (bp_ptr - bp);
    RESP_PRINT_SEGMENT(ndo, bp, len);




    CONSUME_CR_OR_LF(bp_ptr, length_cur);




    return (length - length_cur);

trunc:
    return (-1);
}
