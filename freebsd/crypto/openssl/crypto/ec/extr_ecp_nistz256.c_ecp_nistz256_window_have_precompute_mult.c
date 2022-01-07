
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EC_POINT ;
typedef int EC_GROUP ;


 int * EC_GROUP_get0_generator (int const*) ;
 int HAVEPRECOMP (int const*,int ) ;
 scalar_t__ ecp_nistz256_is_affine_G (int const*) ;
 int nistz256 ;

__attribute__((used)) static int ecp_nistz256_window_have_precompute_mult(const EC_GROUP *group)
{

    const EC_POINT *generator = EC_GROUP_get0_generator(group);

    if (generator != ((void*)0) && ecp_nistz256_is_affine_G(generator)) {

        return 1;
    }

    return HAVEPRECOMP(group, nistz256);
}
