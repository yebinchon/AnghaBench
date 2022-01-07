
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int cmd_defns; int load_pubkey; int load_privkey; int ctrl; int finish; int init; int destroy; int pkey_meths; int digests; int ciphers; int rand_meth; int ec_meth; int dh_meth; int dsa_meth; int rsa_meth; int name; int id; } ;
typedef TYPE_1__ ENGINE ;



__attribute__((used)) static void engine_cpy(ENGINE *dest, const ENGINE *src)
{
    dest->id = src->id;
    dest->name = src->name;

    dest->rsa_meth = src->rsa_meth;


    dest->dsa_meth = src->dsa_meth;


    dest->dh_meth = src->dh_meth;


    dest->ec_meth = src->ec_meth;

    dest->rand_meth = src->rand_meth;
    dest->ciphers = src->ciphers;
    dest->digests = src->digests;
    dest->pkey_meths = src->pkey_meths;
    dest->destroy = src->destroy;
    dest->init = src->init;
    dest->finish = src->finish;
    dest->ctrl = src->ctrl;
    dest->load_privkey = src->load_privkey;
    dest->load_pubkey = src->load_pubkey;
    dest->cmd_defns = src->cmd_defns;
    dest->flags = src->flags;
}
