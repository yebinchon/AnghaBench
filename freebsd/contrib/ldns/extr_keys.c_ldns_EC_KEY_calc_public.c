
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EC_POINT ;
typedef int EC_KEY ;
typedef int EC_GROUP ;


 int EC_GROUP_get0_generator (int const*) ;
 int * EC_KEY_get0_group (int *) ;
 int EC_KEY_get0_private_key (int *) ;
 scalar_t__ EC_KEY_set_public_key (int *,int *) ;
 int EC_POINT_copy (int *,int ) ;
 int EC_POINT_free (int *) ;
 int EC_POINT_mul (int const*,int *,int ,int *,int *,int *) ;
 int * EC_POINT_new (int const*) ;

__attribute__((used)) static int
ldns_EC_KEY_calc_public(EC_KEY* ec)
{
        EC_POINT* pub_key;
        const EC_GROUP* group;
        group = EC_KEY_get0_group(ec);
        pub_key = EC_POINT_new(group);
        if(!pub_key) return 0;
        if(!EC_POINT_copy(pub_key, EC_GROUP_get0_generator(group))) {
                EC_POINT_free(pub_key);
                return 0;
        }
        if(!EC_POINT_mul(group, pub_key, EC_KEY_get0_private_key(ec),
                ((void*)0), ((void*)0), ((void*)0))) {
                EC_POINT_free(pub_key);
                return 0;
        }
        if(EC_KEY_set_public_key(ec, pub_key) == 0) {
                EC_POINT_free(pub_key);
                return 0;
        }
        EC_POINT_free(pub_key);
        return 1;
}
