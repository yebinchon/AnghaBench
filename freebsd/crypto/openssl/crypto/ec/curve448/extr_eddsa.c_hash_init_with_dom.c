
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int dom ;
typedef int c448_error_t ;
typedef int EVP_MD_CTX ;


 int C448_FAILURE ;
 int C448_SUCCESS ;
 int EVP_DigestInit_ex (int *,int ,int *) ;
 int EVP_DigestUpdate (int *,...) ;
 int EVP_shake256 () ;
 size_t UINT8_MAX ;
 size_t strlen (char const*) ;

__attribute__((used)) static c448_error_t hash_init_with_dom(EVP_MD_CTX *hashctx, uint8_t prehashed,
                                       uint8_t for_prehash,
                                       const uint8_t *context,
                                       size_t context_len)
{
    const char *dom_s = "SigEd448";
    uint8_t dom[2];

    if (context_len > UINT8_MAX)
        return C448_FAILURE;

    dom[0] = (uint8_t)(2 - (prehashed == 0 ? 1 : 0)
                       - (for_prehash == 0 ? 1 : 0));
    dom[1] = (uint8_t)context_len;

    if (!EVP_DigestInit_ex(hashctx, EVP_shake256(), ((void*)0))
            || !EVP_DigestUpdate(hashctx, dom_s, strlen(dom_s))
            || !EVP_DigestUpdate(hashctx, dom, sizeof(dom))
            || !EVP_DigestUpdate(hashctx, context, context_len))
        return C448_FAILURE;

    return C448_SUCCESS;
}
