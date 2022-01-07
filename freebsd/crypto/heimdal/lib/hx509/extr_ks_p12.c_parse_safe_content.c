
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct hx509_collector {int dummy; } ;
typedef int sc ;
typedef int hx509_context ;
struct TYPE_9__ {size_t len; TYPE_2__* val; } ;
struct TYPE_7__ {int length; int data; } ;
struct TYPE_8__ {int bagAttributes; TYPE_1__ bagValue; int bagId; } ;
typedef TYPE_3__ PKCS12_SafeContents ;


 int decode_PKCS12_SafeContents (unsigned char const*,size_t,TYPE_3__*,int *) ;
 int free_PKCS12_SafeContents (TYPE_3__*) ;
 int memset (TYPE_3__*,int ,int) ;
 int parse_pkcs12_type (int ,struct hx509_collector*,int *,int ,int ,int ) ;

__attribute__((used)) static int
parse_safe_content(hx509_context context,
     struct hx509_collector *c,
     const unsigned char *p, size_t len)
{
    PKCS12_SafeContents sc;
    int ret;
    size_t i;

    memset(&sc, 0, sizeof(sc));

    ret = decode_PKCS12_SafeContents(p, len, &sc, ((void*)0));
    if (ret)
 return ret;

    for (i = 0; i < sc.len ; i++)
 parse_pkcs12_type(context,
     c,
     &sc.val[i].bagId,
     sc.val[i].bagValue.data,
     sc.val[i].bagValue.length,
     sc.val[i].bagAttributes);

    free_PKCS12_SafeContents(&sc);
    return 0;
}
