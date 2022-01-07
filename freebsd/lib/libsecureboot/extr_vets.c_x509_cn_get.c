
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {TYPE_5__* vtable; } ;
typedef TYPE_1__ br_x509_minimal_context ;
struct TYPE_14__ {int data_len; int data; } ;
typedef TYPE_2__ br_x509_certificate ;
struct TYPE_15__ {unsigned char* oid; char* buf; size_t len; int status; } ;
typedef TYPE_3__ br_name_element ;
struct TYPE_16__ {int (* end_chain ) (TYPE_5__**) ;int (* end_cert ) (TYPE_5__**) ;int (* append ) (TYPE_5__**,int ,int ) ;int (* start_cert ) (TYPE_5__**,int ) ;int (* start_chain ) (TYPE_5__**,int *) ;} ;


 int br_sha256_vtable ;
 int br_x509_minimal_init (TYPE_1__*,int *,int *,int ) ;
 int br_x509_minimal_set_name_elements (TYPE_1__*,TYPE_3__*,int) ;
 int stub1 (TYPE_5__**,int *) ;
 int stub2 (TYPE_5__**,int ) ;
 int stub3 (TYPE_5__**,int ,int ) ;
 int stub4 (TYPE_5__**) ;
 int stub5 (TYPE_5__**) ;

__attribute__((used)) static char *
x509_cn_get(br_x509_certificate *xc, char *buf, size_t len)
{
 br_x509_minimal_context mc;
 br_name_element cn;
 unsigned char cn_oid[4];
 int err;

 if (buf == ((void*)0))
  return (buf);




 cn_oid[0] = 3;
 cn_oid[1] = 0x55;
 cn_oid[2] = 4;
 cn_oid[3] = 3;
 cn.oid = cn_oid;
 cn.buf = buf;
 cn.len = len;
 cn.buf[0] = '\0';

 br_x509_minimal_init(&mc, &br_sha256_vtable, ((void*)0), 0);
 br_x509_minimal_set_name_elements(&mc, &cn, 1);

 mc.vtable->start_chain(&mc.vtable, ((void*)0));
 mc.vtable->start_cert(&mc.vtable, xc->data_len);
 mc.vtable->append(&mc.vtable, xc->data, xc->data_len);
 mc.vtable->end_cert(&mc.vtable);

 err = mc.vtable->end_chain(&mc.vtable);

 if (!cn.status)
  buf = ((void*)0);
 return (buf);
}
