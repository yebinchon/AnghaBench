
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int length; int data; } ;
typedef TYPE_1__ heim_oid ;
typedef TYPE_1__ heim_octet_string ;
struct TYPE_14__ {int * content; int contentType; } ;
typedef TYPE_3__ ContentInfo ;


 int decode_ContentInfo (int ,int ,TYPE_3__*,size_t*) ;
 int der_copy_octet_string (int *,TYPE_1__*) ;
 int der_copy_oid (int *,TYPE_1__*) ;
 int der_free_oid (TYPE_1__*) ;
 int free_ContentInfo (TYPE_3__*) ;
 int memset (TYPE_1__*,int ,int) ;

int
hx509_cms_unwrap_ContentInfo(const heim_octet_string *in,
        heim_oid *oid,
        heim_octet_string *out,
        int *have_data)
{
    ContentInfo ci;
    size_t size;
    int ret;

    memset(oid, 0, sizeof(*oid));
    memset(out, 0, sizeof(*out));

    ret = decode_ContentInfo(in->data, in->length, &ci, &size);
    if (ret)
 return ret;

    ret = der_copy_oid(&ci.contentType, oid);
    if (ret) {
 free_ContentInfo(&ci);
 return ret;
    }
    if (ci.content) {
 ret = der_copy_octet_string(ci.content, out);
 if (ret) {
     der_free_oid(oid);
     free_ContentInfo(&ci);
     return ret;
 }
    } else
 memset(out, 0, sizeof(*out));

    if (have_data)
 *have_data = (ci.content != ((void*)0)) ? 1 : 0;

    free_ContentInfo(&ci);

    return 0;
}
