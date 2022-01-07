
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int twop ;
typedef int pniels_t ;
typedef int const curve448_point_t ;


 int OPENSSL_cleanse (int ,int) ;
 int add_pniels_to_pt (int const,int ,int ) ;
 int curve448_point_destroy (int const) ;
 int curve448_point_double (int const,int const) ;
 int pt_to_pniels (int ,int const) ;

__attribute__((used)) static void prepare_wnaf_table(pniels_t * output,
                               const curve448_point_t working,
                               unsigned int tbits)
{
    curve448_point_t tmp;
    int i;
    pniels_t twop;

    pt_to_pniels(output[0], working);

    if (tbits == 0)
        return;

    curve448_point_double(tmp, working);
    pt_to_pniels(twop, tmp);

    add_pniels_to_pt(tmp, output[0], 0);
    pt_to_pniels(output[1], tmp);

    for (i = 2; i < 1 << tbits; i++) {
        add_pniels_to_pt(tmp, twop, 0);
        pt_to_pniels(output[i], tmp);
    }

    curve448_point_destroy(tmp);
    OPENSSL_cleanse(twop, sizeof(twop));
}
