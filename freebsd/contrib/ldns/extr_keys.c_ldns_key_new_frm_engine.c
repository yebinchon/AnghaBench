
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ldns_status ;
typedef int ldns_signing_algorithm ;
struct TYPE_7__ {int key; } ;
struct TYPE_8__ {TYPE_1__ _key; } ;
typedef TYPE_2__ ldns_key ;
typedef scalar_t__ ldns_algorithm ;
typedef int ENGINE ;


 int ENGINE_load_private_key (int *,char*,int ,int *) ;
 int LDNS_STATUS_ENGINE_KEY_NOT_LOADED ;
 int LDNS_STATUS_ERR ;
 int LDNS_STATUS_MEM_ERR ;
 int LDNS_STATUS_OK ;
 int UI_OpenSSL () ;
 int ldns_key_free (TYPE_2__*) ;
 TYPE_2__* ldns_key_new () ;
 int ldns_key_set_algorithm (TYPE_2__*,int ) ;

ldns_status
ldns_key_new_frm_engine(ldns_key **key, ENGINE *e, char *key_id, ldns_algorithm alg)
{
 ldns_key *k;

 k = ldns_key_new();
        if(!k) return LDNS_STATUS_MEM_ERR;

 k->_key.key = ENGINE_load_private_key(e, key_id, UI_OpenSSL(), ((void*)0));
        if(!k->_key.key) {
                ldns_key_free(k);
                return LDNS_STATUS_ERR;
        }
 ldns_key_set_algorithm(k, (ldns_signing_algorithm) alg);
 if (!k->_key.key) {
                ldns_key_free(k);
  return LDNS_STATUS_ENGINE_KEY_NOT_LOADED;
 }

 *key = k;
 return LDNS_STATUS_OK;
}
