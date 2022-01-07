
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sha2_byte ;
typedef int ldns_sha512_CTX ;
typedef int ldns_sha384_CTX ;


 int ldns_sha512_update (int *,int const*,size_t) ;

void ldns_sha384_update(ldns_sha384_CTX* context, const sha2_byte* data, size_t len) {
 ldns_sha512_update((ldns_sha512_CTX*)context, data, len);
}
