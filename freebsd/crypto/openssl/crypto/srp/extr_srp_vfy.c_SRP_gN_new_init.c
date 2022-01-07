
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int tmp ;
struct TYPE_6__ {struct TYPE_6__* b64_bn; int bn; } ;
typedef TYPE_1__ SRP_gN_cache ;


 int BN_bin2bn (unsigned char*,int,int *) ;
 int MAX_LEN ;
 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_malloc (int) ;
 TYPE_1__* OPENSSL_strdup (char const*) ;
 int t_fromb64 (unsigned char*,int,char const*) ;

__attribute__((used)) static SRP_gN_cache *SRP_gN_new_init(const char *ch)
{
    unsigned char tmp[MAX_LEN];
    int len;
    SRP_gN_cache *newgN = OPENSSL_malloc(sizeof(*newgN));

    if (newgN == ((void*)0))
        return ((void*)0);

    len = t_fromb64(tmp, sizeof(tmp), ch);
    if (len < 0)
        goto err;

    if ((newgN->b64_bn = OPENSSL_strdup(ch)) == ((void*)0))
        goto err;

    if ((newgN->bn = BN_bin2bn(tmp, len, ((void*)0))))
        return newgN;

    OPENSSL_free(newgN->b64_bn);
 err:
    OPENSSL_free(newgN);
    return ((void*)0);
}
