
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvno_options {int enctype_string; int cache_string; } ;
struct kgetcred_options {int enctype_string; int cache_string; } ;
typedef int k ;


 int kgetcred (struct kgetcred_options*,int,char**) ;
 int memset (struct kgetcred_options*,int ,int) ;

int
kvno(struct kvno_options *opt, int argc, char **argv)
{
    struct kgetcred_options k;
    memset(&k, 0, sizeof(k));

    k.cache_string = opt->cache_string;
    k.enctype_string = opt->enctype_string;

    return kgetcred(&k, argc, argv);
}
