
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* data; } ;
typedef TYPE_2__ X509_POLICY_NODE ;
struct TYPE_5__ {int flags; } ;


 int OPENSSL_free (TYPE_2__*) ;
 int POLICY_DATA_FLAG_EXTRA_NODE ;

__attribute__((used)) static void exnode_free(X509_POLICY_NODE *node)
{
    if (node->data && (node->data->flags & POLICY_DATA_FLAG_EXTRA_NODE))
        OPENSSL_free(node);
}
