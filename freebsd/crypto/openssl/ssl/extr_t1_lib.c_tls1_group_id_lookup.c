
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int TLS_GROUP_INFO ;


 int OSSL_NELEM (int const*) ;
 int const* nid_list ;

const TLS_GROUP_INFO *tls1_group_id_lookup(uint16_t group_id)
{

    if (group_id < 1 || group_id > OSSL_NELEM(nid_list))
        return ((void*)0);
    return &nid_list[group_id - 1];
}
