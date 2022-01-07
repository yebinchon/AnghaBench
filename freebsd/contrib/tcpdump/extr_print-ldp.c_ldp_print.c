
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct ldp_msg_header {int dummy; } ;
struct ldp_common_header {int dummy; } ;
typedef int netdissect_options ;


 int ldp_pdu_print (int *,int const*) ;

void
ldp_print(netdissect_options *ndo,
          register const u_char *pptr, register u_int len)
{
    int processed;
    while (len > (sizeof(struct ldp_common_header) + sizeof(struct ldp_msg_header))) {
        processed = ldp_pdu_print(ndo, pptr);
        if (processed == 0)
            return;
        len -= processed;
        pptr += processed;
    }
}
