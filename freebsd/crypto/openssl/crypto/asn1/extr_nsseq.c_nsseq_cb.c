
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
typedef TYPE_1__ NETSCAPE_CERT_SEQUENCE ;
typedef int ASN1_VALUE ;
typedef int ASN1_ITEM ;


 int ASN1_OP_NEW_POST ;
 int NID_netscape_cert_sequence ;
 int OBJ_nid2obj (int ) ;

__attribute__((used)) static int nsseq_cb(int operation, ASN1_VALUE **pval, const ASN1_ITEM *it,
                    void *exarg)
{
    if (operation == ASN1_OP_NEW_POST) {
        NETSCAPE_CERT_SEQUENCE *nsseq;
        nsseq = (NETSCAPE_CERT_SEQUENCE *)*pval;
        nsseq->type = OBJ_nid2obj(NID_netscape_cert_sequence);
    }
    return 1;
}
