
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hx509_validate_ctx ;
struct TYPE_3__ {int length; int data; } ;
typedef TYPE_1__ heim_any ;
typedef int PKIXXmppAddr ;


 int HX509_VALIDATE_F_VALIDATE ;
 int HX509_VALIDATE_F_VERBOSE ;
 int decode_PKIXXmppAddr (int ,int ,int*,size_t*) ;
 int free_PKIXXmppAddr (int*) ;
 int validate_print (int ,int ,char*,int) ;

__attribute__((used)) static int
check_utf8_string_san(hx509_validate_ctx ctx, heim_any *a)
{
    PKIXXmppAddr jid;
    size_t size;
    int ret;

    ret = decode_PKIXXmppAddr(a->data, a->length, &jid, &size);
    if (ret) {
 validate_print(ctx, HX509_VALIDATE_F_VALIDATE,
         "Decoding JID in SAN failed: %d", ret);
 return 1;
    }

    validate_print(ctx, HX509_VALIDATE_F_VERBOSE, "%s", jid);
    free_PKIXXmppAddr(&jid);

    return 0;
}
