
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct signature_alg {int const* key_oid; } ;
typedef TYPE_1__* hx509_private_key ;
typedef int heim_oid ;
struct TYPE_3__ {int signature_alg; } ;


 struct signature_alg* find_sig_alg (int ) ;

__attribute__((used)) static const heim_oid *
find_keytype(const hx509_private_key key)
{
    const struct signature_alg *md;

    if (key == ((void*)0))
 return ((void*)0);

    md = find_sig_alg(key->signature_alg);
    if (md == ((void*)0))
 return ((void*)0);
    return md->key_oid;
}
