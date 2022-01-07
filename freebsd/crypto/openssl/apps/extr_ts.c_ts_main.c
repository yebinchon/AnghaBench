
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_VERIFY_PARAM ;
typedef int OPTION_CHOICE ;
typedef int EVP_MD ;
typedef int CONF ;


 int BIO_printf (int ,char*,...) ;
 int EXACTLY_ONE (char*,char*,char*) ;
 int NCONF_free (int *) ;
 int OPENSSL_free (char*) ;
 int X509_VERIFY_PARAM_free (int *) ;
 int * X509_VERIFY_PARAM_new () ;
 int app_load_modules (int *) ;
 int app_passwd (char*,int *,char**,int *) ;
 int bio_err ;
 char const* default_config_file ;
 int * load_config_file (char const*) ;
 void* opt_arg () ;
 int opt_help (int ) ;
 char** opt_helplist ;
 char* opt_init (int,char**,int ) ;
 int opt_md (int ,int const**) ;
 int opt_next () ;
 scalar_t__ opt_num_rest () ;
 int opt_rand (int) ;
 int opt_unknown () ;
 int opt_verify (int,int *) ;
 int query_command (char*,char*,int const*,char*,int,int,char*,char*,int) ;
 int reply_command (int *,char const*,char const*,char*,char*,char*,int const*,char*,char*,char*,char*,int,char*,int,int) ;
 int ts_options ;
 int verify_command (char*,char*,char*,char*,int,char*,char const*,char const*,int *) ;

int ts_main(int argc, char **argv)
{
    CONF *conf = ((void*)0);
    const char *CAfile = ((void*)0), *untrusted = ((void*)0), *prog;
    const char *configfile = default_config_file, *engine = ((void*)0);
    const char *section = ((void*)0);
    char **helpp;
    char *password = ((void*)0);
    char *data = ((void*)0), *digest = ((void*)0), *policy = ((void*)0);
    char *in = ((void*)0), *out = ((void*)0), *queryfile = ((void*)0), *passin = ((void*)0);
    char *inkey = ((void*)0), *signer = ((void*)0), *chain = ((void*)0), *CApath = ((void*)0);
    const EVP_MD *md = ((void*)0);
    OPTION_CHOICE o, mode = 148;
    int ret = 1, no_nonce = 0, cert = 0, text = 0;
    int vpmtouched = 0;
    X509_VERIFY_PARAM *vpm = ((void*)0);

    int token_in = 0;

    int token_out = 0;

    if ((vpm = X509_VERIFY_PARAM_new()) == ((void*)0))
        goto end;

    prog = opt_init(argc, argv, ts_options);
    while ((o = opt_next()) != 149) {
        switch (o) {
        case 149:
        case 148:
 opthelp:
            BIO_printf(bio_err, "%s: Use -help for summary.\n", prog);
            goto end;
        case 147:
            opt_help(ts_options);
            for (helpp = opt_helplist; *helpp; ++helpp)
                BIO_printf(bio_err, "%s\n", *helpp);
            ret = 0;
            goto end;
        case 153:
            configfile = opt_arg();
            break;
        case 136:
            section = opt_arg();
            break;
        case 140:
        case 138:
        case 129:
            if (mode != 148)
                goto opthelp;
            mode = o;
            break;
        case 152:
            data = opt_arg();
            break;
        case 151:
            digest = opt_arg();
            break;
        case 137:
            if (!opt_rand(o))
                goto end;
            break;
        case 131:
            policy = opt_arg();
            break;
        case 143:
            no_nonce = 1;
            break;
        case 155:
            cert = 1;
            break;
        case 146:
            in = opt_arg();
            break;
        case 133:
            token_in = 1;
            break;
        case 142:
            out = opt_arg();
            break;
        case 132:
            token_out = 1;
            break;
        case 134:
            text = 1;
            break;
        case 139:
            queryfile = opt_arg();
            break;
        case 141:
            passin = opt_arg();
            break;
        case 145:
            inkey = opt_arg();
            break;
        case 135:
            signer = opt_arg();
            break;
        case 154:
            chain = opt_arg();
            break;
        case 156:
            CApath = opt_arg();
            break;
        case 157:
            CAfile = opt_arg();
            break;
        case 130:
            untrusted = opt_arg();
            break;
        case 150:
            engine = opt_arg();
            break;
        case 144:
            if (!opt_md(opt_unknown(), &md))
                goto opthelp;
            break;
        case 128:
            if (!opt_verify(o, vpm))
                goto end;
            vpmtouched++;
            break;
        }
    }
    if (mode == 148 || opt_num_rest() != 0)
        goto opthelp;

    if (mode == 138 && passin &&
        !app_passwd(passin, ((void*)0), &password, ((void*)0))) {
        BIO_printf(bio_err, "Error getting password.\n");
        goto end;
    }

    conf = load_config_file(configfile);
    if (configfile != default_config_file && !app_load_modules(conf))
        goto end;


    if (mode == 140) {
        if (vpmtouched)
            goto opthelp;
        if ((data != ((void*)0)) && (digest != ((void*)0)))
            goto opthelp;
        ret = !query_command(data, digest, md, policy, no_nonce, cert,
                             in, out, text);
    } else if (mode == 138) {
        if (vpmtouched)
            goto opthelp;
        if ((in != ((void*)0)) && (queryfile != ((void*)0)))
            goto opthelp;
        if (in == ((void*)0)) {
            if ((conf == ((void*)0)) || (token_in != 0))
                goto opthelp;
        }
        ret = !reply_command(conf, section, engine, queryfile,
                             password, inkey, md, signer, chain, policy,
                             in, token_in, out, token_out, text);

    } else if (mode == 129) {
        if ((in == ((void*)0)) || !EXACTLY_ONE(queryfile, data, digest))
            goto opthelp;
        ret = !verify_command(data, digest, queryfile, in, token_in,
                              CApath, CAfile, untrusted,
                              vpmtouched ? vpm : ((void*)0));
    } else {
        goto opthelp;
    }

 end:
    X509_VERIFY_PARAM_free(vpm);
    NCONF_free(conf);
    OPENSSL_free(password);
    return ret;
}
