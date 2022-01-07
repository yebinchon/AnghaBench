
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
typedef TYPE_1__* gss_OID ;
struct TYPE_3__ {int length; int* elements; } ;
typedef int OM_uint32 ;
typedef int EVP_MD_CTX ;


 int EVP_DigestFinal_ex (int *,int*,int *) ;
 int EVP_DigestInit_ex (int *,int ,int *) ;
 int EVP_DigestUpdate (int *,int*,int) ;
 int * EVP_MD_CTX_create () ;
 int EVP_sha1 () ;
 int GSS_S_BAD_MECH ;
 int GSS_S_COMPLETE ;
 void** basis_32 ;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static OM_uint32
make_sasl_name(OM_uint32 *minor, const gss_OID mech, char sasl_name[16])
{
    EVP_MD_CTX *ctx;
    char *p = sasl_name;
    u_char hdr[2], hash[20], *h = hash;

    if (mech->length > 127)
        return GSS_S_BAD_MECH;

    hdr[0] = 0x06;
    hdr[1] = mech->length;

    ctx = EVP_MD_CTX_create();
    EVP_DigestInit_ex(ctx, EVP_sha1(), ((void*)0));
    EVP_DigestUpdate(ctx, hdr, 2);
    EVP_DigestUpdate(ctx, mech->elements, mech->length);
    EVP_DigestFinal_ex(ctx, hash, ((void*)0));

    memcpy(p, "GS2-", 4);
    p += 4;

    *p++ = basis_32[(h[0] >> 3)];
    *p++ = basis_32[((h[0] & 7) << 2) | (h[1] >> 6)];
    *p++ = basis_32[(h[1] & 0x3f) >> 1];
    *p++ = basis_32[((h[1] & 1) << 4) | (h[2] >> 4)];
    *p++ = basis_32[((h[2] & 0xf) << 1) | (h[3] >> 7)];
    *p++ = basis_32[(h[3] & 0x7f) >> 2];
    *p++ = basis_32[((h[3] & 3) << 3) | (h[4] >> 5)];
    *p++ = basis_32[(h[4] & 0x1f)];
    *p++ = basis_32[(h[5] >> 3)];
    *p++ = basis_32[((h[5] & 7) << 2) | (h[6] >> 6)];
    *p++ = basis_32[(h[6] & 0x3f) >> 1];

    *p = '\0';

    return GSS_S_COMPLETE;
}
