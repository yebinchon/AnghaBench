
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_8__ {struct TYPE_8__* next; TYPE_1__* cipher; scalar_t__ active; } ;
struct TYPE_7__ {int strength_bits; } ;
typedef TYPE_2__ CIPHER_ORDER ;


 int CIPHER_ORD ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (int*) ;
 int* OPENSSL_zalloc (int) ;
 int SSL_F_SSL_CIPHER_STRENGTH_SORT ;
 int SSLerr (int ,int ) ;
 int ssl_cipher_apply_rule (int ,int ,int ,int ,int ,int ,int ,int ,int,TYPE_2__**,TYPE_2__**) ;

__attribute__((used)) static int ssl_cipher_strength_sort(CIPHER_ORDER **head_p,
                                    CIPHER_ORDER **tail_p)
{
    int32_t max_strength_bits;
    int i, *number_uses;
    CIPHER_ORDER *curr;






    max_strength_bits = 0;
    curr = *head_p;
    while (curr != ((void*)0)) {
        if (curr->active && (curr->cipher->strength_bits > max_strength_bits))
            max_strength_bits = curr->cipher->strength_bits;
        curr = curr->next;
    }

    number_uses = OPENSSL_zalloc(sizeof(int) * (max_strength_bits + 1));
    if (number_uses == ((void*)0)) {
        SSLerr(SSL_F_SSL_CIPHER_STRENGTH_SORT, ERR_R_MALLOC_FAILURE);
        return 0;
    }




    curr = *head_p;
    while (curr != ((void*)0)) {
        if (curr->active)
            number_uses[curr->cipher->strength_bits]++;
        curr = curr->next;
    }




    for (i = max_strength_bits; i >= 0; i--)
        if (number_uses[i] > 0)
            ssl_cipher_apply_rule(0, 0, 0, 0, 0, 0, 0, CIPHER_ORD, i, head_p,
                                  tail_p);

    OPENSSL_free(number_uses);
    return 1;
}
