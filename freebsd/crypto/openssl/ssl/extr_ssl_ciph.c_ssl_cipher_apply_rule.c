
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint32_t ;
typedef int int32_t ;
struct TYPE_12__ {int active; struct TYPE_12__* prev; struct TYPE_12__* next; TYPE_1__* cipher; } ;
struct TYPE_11__ {int strength_bits; char* name; int algorithm_mkey; int algorithm_auth; int algorithm_enc; int algorithm_mac; int min_tls; int algo_strength; int id; } ;
typedef TYPE_1__ SSL_CIPHER ;
typedef TYPE_2__ CIPHER_ORDER ;


 int CIPHER_ADD ;
 int CIPHER_BUMP ;
 int CIPHER_DEL ;
 int CIPHER_KILL ;
 int CIPHER_ORD ;
 int SSL_DEFAULT_MASK ;
 int SSL_STRONG_MASK ;
 int fprintf (int ,char*,...) ;
 int ll_append_head (TYPE_2__**,TYPE_2__*,TYPE_2__**) ;
 int ll_append_tail (TYPE_2__**,TYPE_2__*,TYPE_2__**) ;
 int stderr ;

__attribute__((used)) static void ssl_cipher_apply_rule(uint32_t cipher_id, uint32_t alg_mkey,
                                  uint32_t alg_auth, uint32_t alg_enc,
                                  uint32_t alg_mac, int min_tls,
                                  uint32_t algo_strength, int rule,
                                  int32_t strength_bits, CIPHER_ORDER **head_p,
                                  CIPHER_ORDER **tail_p)
{
    CIPHER_ORDER *head, *tail, *curr, *next, *last;
    const SSL_CIPHER *cp;
    int reverse = 0;
    if (rule == CIPHER_DEL || rule == CIPHER_BUMP)
        reverse = 1;


    head = *head_p;
    tail = *tail_p;

    if (reverse) {
        next = tail;
        last = head;
    } else {
        next = head;
        last = tail;
    }

    curr = ((void*)0);
    for (;;) {
        if (curr == last)
            break;

        curr = next;

        if (curr == ((void*)0))
            break;

        next = reverse ? curr->prev : curr->next;

        cp = curr->cipher;





        if (strength_bits >= 0) {
            if (strength_bits != cp->strength_bits)
                continue;
        } else {







            if (cipher_id != 0 && (cipher_id != cp->id))
                continue;
            if (alg_mkey && !(alg_mkey & cp->algorithm_mkey))
                continue;
            if (alg_auth && !(alg_auth & cp->algorithm_auth))
                continue;
            if (alg_enc && !(alg_enc & cp->algorithm_enc))
                continue;
            if (alg_mac && !(alg_mac & cp->algorithm_mac))
                continue;
            if (min_tls && (min_tls != cp->min_tls))
                continue;
            if ((algo_strength & SSL_STRONG_MASK)
                && !(algo_strength & SSL_STRONG_MASK & cp->algo_strength))
                continue;
            if ((algo_strength & SSL_DEFAULT_MASK)
                && !(algo_strength & SSL_DEFAULT_MASK & cp->algo_strength))
                continue;
        }






        if (rule == CIPHER_ADD) {

            if (!curr->active) {
                ll_append_tail(&head, curr, &tail);
                curr->active = 1;
            }
        }

        else if (rule == CIPHER_ORD) {

            if (curr->active) {
                ll_append_tail(&head, curr, &tail);
            }
        } else if (rule == CIPHER_DEL) {

            if (curr->active) {





                ll_append_head(&head, curr, &tail);
                curr->active = 0;
            }
        } else if (rule == CIPHER_BUMP) {
            if (curr->active)
                ll_append_head(&head, curr, &tail);
        } else if (rule == CIPHER_KILL) {

            if (head == curr)
                head = curr->next;
            else
                curr->prev->next = curr->next;
            if (tail == curr)
                tail = curr->prev;
            curr->active = 0;
            if (curr->next != ((void*)0))
                curr->next->prev = curr->prev;
            if (curr->prev != ((void*)0))
                curr->prev->next = curr->next;
            curr->next = ((void*)0);
            curr->prev = ((void*)0);
        }
    }

    *head_p = head;
    *tail_p = tail;
}
