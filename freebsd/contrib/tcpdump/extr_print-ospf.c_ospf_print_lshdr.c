
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_3__ {int opaque_type; int opaque_id; } ;
struct TYPE_4__ {int lsa_id; TYPE_1__ opaque_field; } ;
struct lsa_hdr {int ls_length; int ls_seq; int ls_age; int ls_type; int ls_options; TYPE_2__ un_lsa_id; int ls_router; } ;
typedef int netdissect_options ;


 int EXTRACT_16BITS (int*) ;
 int EXTRACT_24BITS (int *) ;
 int EXTRACT_32BITS (int*) ;



 int ND_PRINT (int *) ;
 int ND_TCHECK (int) ;
 int bittok2str (int ,char*,int) ;
 int ipaddr_string (int *,int *) ;
 int lsa_opaque_values ;
 int lsa_values ;
 int ospf_option_values ;
 int tok2str (int ,char*,int) ;

__attribute__((used)) static int
ospf_print_lshdr(netdissect_options *ndo,
                 register const struct lsa_hdr *lshp)
{
        u_int ls_length;

        ND_TCHECK(lshp->ls_length);
        ls_length = EXTRACT_16BITS(&lshp->ls_length);
        if (ls_length < sizeof(struct lsa_hdr)) {
                ND_PRINT((ndo, "\n\t    Bogus length %u < header (%lu)", ls_length,
                    (unsigned long)sizeof(struct lsa_hdr)));
                return(-1);
        }

        ND_TCHECK(lshp->ls_seq);
        ND_PRINT((ndo, "\n\t  Advertising Router %s, seq 0x%08x, age %us, length %u",
                  ipaddr_string(ndo, &lshp->ls_router),
                  EXTRACT_32BITS(&lshp->ls_seq),
                  EXTRACT_16BITS(&lshp->ls_age),
                  ls_length - (u_int)sizeof(struct lsa_hdr)));

        ND_TCHECK(lshp->ls_type);
        switch (lshp->ls_type) {

        case 128:
        case 130:
        case 129:
            ND_PRINT((ndo, "\n\t    %s LSA (%d), Opaque-Type %s LSA (%u), Opaque-ID %u",
                   tok2str(lsa_values,"unknown",lshp->ls_type),
                   lshp->ls_type,

     tok2str(lsa_opaque_values,
      "unknown",
      *(&lshp->un_lsa_id.opaque_field.opaque_type)),
     *(&lshp->un_lsa_id.opaque_field.opaque_type),
     EXTRACT_24BITS(&lshp->un_lsa_id.opaque_field.opaque_id)

                   ));
            break;


        default:
            ND_PRINT((ndo, "\n\t    %s LSA (%d), LSA-ID: %s",
                   tok2str(lsa_values,"unknown",lshp->ls_type),
                   lshp->ls_type,
                   ipaddr_string(ndo, &lshp->un_lsa_id.lsa_id)));
            break;
        }

        ND_TCHECK(lshp->ls_options);
        ND_PRINT((ndo, "\n\t    Options: [%s]", bittok2str(ospf_option_values, "none", lshp->ls_options)));

        return (ls_length);
trunc:
 return (-1);
}
