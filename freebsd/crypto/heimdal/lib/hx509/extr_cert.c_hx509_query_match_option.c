
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hx509_query_option ;
struct TYPE_3__ {int match; } ;
typedef TYPE_1__ hx509_query ;


 int HX509_QUERY_KU_DIGITALSIGNATURE ;
 int HX509_QUERY_KU_ENCIPHERMENT ;
 int HX509_QUERY_KU_KEYCERTSIGN ;





 int HX509_QUERY_PRIVATE_KEY ;

void
hx509_query_match_option(hx509_query *q, hx509_query_option option)
{
    switch(option) {
    case 128:
 q->match |= HX509_QUERY_PRIVATE_KEY;
 break;
    case 130:
 q->match |= HX509_QUERY_KU_ENCIPHERMENT;
 break;
    case 131:
 q->match |= HX509_QUERY_KU_DIGITALSIGNATURE;
 break;
    case 129:
 q->match |= HX509_QUERY_KU_KEYCERTSIGN;
 break;
    case 132:
    default:
 break;
    }
}
