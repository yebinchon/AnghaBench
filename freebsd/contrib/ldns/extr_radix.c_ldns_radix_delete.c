
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int radix_strlen_t ;
struct TYPE_8__ {int count; } ;
typedef TYPE_1__ ldns_radix_t ;
struct TYPE_9__ {int * data; } ;
typedef TYPE_2__ ldns_radix_node_t ;


 int ldns_radix_del_fix (TYPE_1__*,TYPE_2__*) ;
 TYPE_2__* ldns_radix_search (TYPE_1__*,int const*,int ) ;

void* ldns_radix_delete(ldns_radix_t* tree, const uint8_t* key, radix_strlen_t len)
{
    ldns_radix_node_t* del = ldns_radix_search(tree, key, len);
    void* data = ((void*)0);
    if (del) {
        tree->count--;
        data = del->data;
        del->data = ((void*)0);
        ldns_radix_del_fix(tree, del);
        return data;
    }
    return ((void*)0);
}
