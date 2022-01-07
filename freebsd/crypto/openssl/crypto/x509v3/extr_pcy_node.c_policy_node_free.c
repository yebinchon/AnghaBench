
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_POLICY_NODE ;


 int OPENSSL_free (int *) ;

void policy_node_free(X509_POLICY_NODE *node)
{
    OPENSSL_free(node);
}
