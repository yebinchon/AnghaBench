
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_11__ ;
typedef struct TYPE_15__ TYPE_10__ ;


typedef int bvector ;
struct TYPE_24__ {int data; int len; } ;
struct TYPE_19__ {int qlen; void* q; int curve; } ;
struct TYPE_17__ {int elen; void* e; int nlen; void* n; } ;
struct TYPE_20__ {TYPE_3__ ec; TYPE_1__ rsa; } ;
struct TYPE_21__ {int key_type; TYPE_4__ key; } ;
struct TYPE_25__ {TYPE_8__ dn; TYPE_5__ pkey; int flags; } ;
typedef TYPE_9__ br_x509_trust_anchor ;
struct TYPE_22__ {int qlen; int q; int curve; } ;
struct TYPE_18__ {int elen; int e; int nlen; int n; } ;
struct TYPE_23__ {TYPE_6__ ec; TYPE_2__ rsa; } ;
struct TYPE_15__ {int key_type; TYPE_7__ key; } ;
typedef TYPE_10__ br_x509_pkey ;
typedef int br_x509_decoder_context ;
struct TYPE_16__ {int data_len; int data; } ;
typedef TYPE_11__ br_x509_certificate ;




 int BR_X509_TA_CA ;
 int VEC_CLEAR (int ) ;
 int VEC_INIT ;
 int VEC_LEN (int ) ;
 int VEC_TOARRAY (int ) ;
 TYPE_10__* br_x509_decoder_get_pkey (int *) ;
 int br_x509_decoder_init (int *,int ,int *) ;
 scalar_t__ br_x509_decoder_isCA (int *) ;
 int br_x509_decoder_last_error (int *) ;
 int br_x509_decoder_push (int *,int ,int ) ;
 int dn_append ;
 int ve_error_set (char*,...) ;
 void* xblobdup (int ,int ) ;
 int xfree (int ) ;

int
certificate_to_trust_anchor_inner(br_x509_trust_anchor *ta,
 br_x509_certificate *xc)
{
 br_x509_decoder_context dc;
 bvector vdn = VEC_INIT;
 br_x509_pkey *pk;

 br_x509_decoder_init(&dc, dn_append, &vdn);
 br_x509_decoder_push(&dc, xc->data, xc->data_len);
 pk = br_x509_decoder_get_pkey(&dc);
 if (pk == ((void*)0)) {
     ve_error_set("ERROR: CA decoding failed with error %d\n",
        br_x509_decoder_last_error(&dc));
     VEC_CLEAR(vdn);
     return (-1);
 }
 ta->dn.data = VEC_TOARRAY(vdn);
 ta->dn.len = VEC_LEN(vdn);
 VEC_CLEAR(vdn);
 ta->flags = 0;
 if (br_x509_decoder_isCA(&dc)) {
  ta->flags |= BR_X509_TA_CA;
 }
 switch (pk->key_type) {
 case 128:
  ta->pkey.key_type = 128;
  ta->pkey.key.rsa.n = xblobdup(pk->key.rsa.n, pk->key.rsa.nlen);
  ta->pkey.key.rsa.nlen = pk->key.rsa.nlen;
  ta->pkey.key.rsa.e = xblobdup(pk->key.rsa.e, pk->key.rsa.elen);
  ta->pkey.key.rsa.elen = pk->key.rsa.elen;
  break;
 case 129:
  ta->pkey.key_type = 129;
  ta->pkey.key.ec.curve = pk->key.ec.curve;
  ta->pkey.key.ec.q = xblobdup(pk->key.ec.q, pk->key.ec.qlen);
  ta->pkey.key.ec.qlen = pk->key.ec.qlen;
  break;
 default:
     ve_error_set("ERROR: unsupported public key type in CA\n");
  xfree(ta->dn.data);
  return (-1);
 }
 return (0);
}
