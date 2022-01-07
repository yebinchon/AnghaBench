
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* meth; } ;
struct TYPE_5__ {int (* load_bio ) (TYPE_2__*,int *,long*) ;} ;
typedef TYPE_2__ CONF ;
typedef int BIO ;


 int CONF_F_NCONF_LOAD_BIO ;
 int CONF_R_NO_CONF ;
 int CONFerr (int ,int ) ;
 int stub1 (TYPE_2__*,int *,long*) ;

int NCONF_load_bio(CONF *conf, BIO *bp, long *eline)
{
    if (conf == ((void*)0)) {
        CONFerr(CONF_F_NCONF_LOAD_BIO, CONF_R_NO_CONF);
        return 0;
    }

    return conf->meth->load_bio(conf, bp, eline);
}
