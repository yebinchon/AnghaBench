
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int hx509_peer_info ;
typedef int hx509_context ;
struct TYPE_8__ {int num_strings; int * strings; } ;
typedef TYPE_1__ getarg_strings ;
struct TYPE_9__ {int algorithm; } ;
typedef TYPE_2__ AlgorithmIdentifier ;


 TYPE_2__* calloc (int,int) ;
 int err (int,char*) ;
 int free (TYPE_2__*) ;
 int free_AlgorithmIdentifier (TYPE_2__*) ;
 int hx509_err (int ,int,int,char*) ;
 int hx509_peer_info_alloc (int ,int *) ;
 int hx509_peer_info_set_cms_algs (int ,int ,TYPE_2__*,int) ;
 int parse_oid (int ,int *,int *) ;

__attribute__((used)) static void
peer_strings(hx509_context contextp,
      hx509_peer_info *peer,
      const getarg_strings *s)
{
    AlgorithmIdentifier *val;
    int ret, i;

    ret = hx509_peer_info_alloc(contextp, peer);
    if (ret)
 hx509_err(contextp, 1, ret, "hx509_peer_info_alloc");

    val = calloc(s->num_strings, sizeof(*val));
    if (val == ((void*)0))
 err(1, "malloc");

    for (i = 0; i < s->num_strings; i++)
 parse_oid(s->strings[i], ((void*)0), &val[i].algorithm);

    ret = hx509_peer_info_set_cms_algs(contextp, *peer, val, s->num_strings);
    if (ret)
 hx509_err(contextp, 1, ret, "hx509_peer_info_set_cms_algs");

    for (i = 0; i < s->num_strings; i++)
 free_AlgorithmIdentifier(&val[i]);
    free(val);
}
