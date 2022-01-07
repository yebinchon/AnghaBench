
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TS_RESP_CTX ;
typedef int CONF ;


 int ENV_ESS_CERT_ID_CHAIN ;
 int TS_ESS_CERT_ID_CHAIN ;
 int ts_CONF_add_flag (int *,char const*,int ,int ,int *) ;

int TS_CONF_set_ess_cert_id_chain(CONF *conf, const char *section,
                                  TS_RESP_CTX *ctx)
{
    return ts_CONF_add_flag(conf, section, ENV_ESS_CERT_ID_CHAIN,
                            TS_ESS_CERT_ID_CHAIN, ctx);
}
