
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_10__ ;


struct TYPE_22__ {TYPE_2__* meth; int * engine; int ex_data; int flags; int version; int conv_form; int enc_flag; TYPE_10__* group; int * priv_key; int * pub_key; } ;
struct TYPE_21__ {scalar_t__ (* copy ) (TYPE_3__*,TYPE_3__ const*) ;int (* finish ) (TYPE_3__*) ;} ;
struct TYPE_20__ {scalar_t__ (* keycopy ) (TYPE_3__*,TYPE_3__ const*) ;int (* keyfinish ) (TYPE_3__*) ;} ;
struct TYPE_19__ {TYPE_1__* meth; } ;
typedef int EC_METHOD ;
typedef TYPE_3__ EC_KEY ;


 int BN_copy (int *,int *) ;
 int * BN_new () ;
 int CRYPTO_EX_INDEX_EC_KEY ;
 int CRYPTO_dup_ex_data (int ,int *,int *) ;
 int EC_F_EC_KEY_COPY ;
 int EC_GROUP_copy (TYPE_10__*,TYPE_10__*) ;
 int EC_GROUP_free (TYPE_10__*) ;
 int * EC_GROUP_method_of (TYPE_10__*) ;
 TYPE_10__* EC_GROUP_new (int const*) ;
 int EC_POINT_copy (int *,int *) ;
 int EC_POINT_free (int *) ;
 int * EC_POINT_new (TYPE_10__*) ;
 int ECerr (int ,int ) ;
 scalar_t__ ENGINE_finish (int *) ;
 scalar_t__ ENGINE_init (int *) ;
 int ERR_R_PASSED_NULL_PARAMETER ;
 int stub1 (TYPE_3__*) ;
 int stub2 (TYPE_3__*) ;
 scalar_t__ stub3 (TYPE_3__*,TYPE_3__ const*) ;
 scalar_t__ stub4 (TYPE_3__*,TYPE_3__ const*) ;

EC_KEY *EC_KEY_copy(EC_KEY *dest, const EC_KEY *src)
{
    if (dest == ((void*)0) || src == ((void*)0)) {
        ECerr(EC_F_EC_KEY_COPY, ERR_R_PASSED_NULL_PARAMETER);
        return ((void*)0);
    }
    if (src->meth != dest->meth) {
        if (dest->meth->finish != ((void*)0))
            dest->meth->finish(dest);
        if (dest->group && dest->group->meth->keyfinish)
            dest->group->meth->keyfinish(dest);

        if (ENGINE_finish(dest->engine) == 0)
            return 0;
        dest->engine = ((void*)0);

    }

    if (src->group != ((void*)0)) {
        const EC_METHOD *meth = EC_GROUP_method_of(src->group);

        EC_GROUP_free(dest->group);
        dest->group = EC_GROUP_new(meth);
        if (dest->group == ((void*)0))
            return ((void*)0);
        if (!EC_GROUP_copy(dest->group, src->group))
            return ((void*)0);


        if (src->pub_key != ((void*)0)) {
            EC_POINT_free(dest->pub_key);
            dest->pub_key = EC_POINT_new(src->group);
            if (dest->pub_key == ((void*)0))
                return ((void*)0);
            if (!EC_POINT_copy(dest->pub_key, src->pub_key))
                return ((void*)0);
        }

        if (src->priv_key != ((void*)0)) {
            if (dest->priv_key == ((void*)0)) {
                dest->priv_key = BN_new();
                if (dest->priv_key == ((void*)0))
                    return ((void*)0);
            }
            if (!BN_copy(dest->priv_key, src->priv_key))
                return ((void*)0);
            if (src->group->meth->keycopy
                && src->group->meth->keycopy(dest, src) == 0)
                return ((void*)0);
        }
    }



    dest->enc_flag = src->enc_flag;
    dest->conv_form = src->conv_form;
    dest->version = src->version;
    dest->flags = src->flags;
    if (!CRYPTO_dup_ex_data(CRYPTO_EX_INDEX_EC_KEY,
                            &dest->ex_data, &src->ex_data))
        return ((void*)0);

    if (src->meth != dest->meth) {

        if (src->engine != ((void*)0) && ENGINE_init(src->engine) == 0)
            return ((void*)0);
        dest->engine = src->engine;

        dest->meth = src->meth;
    }

    if (src->meth->copy != ((void*)0) && src->meth->copy(dest, src) == 0)
        return ((void*)0);

    return dest;
}
