
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int conf_init_func ;
typedef int conf_finish_func ;
typedef int DSO ;
typedef int CONF_MODULE ;
typedef int CONF ;


 int CONF_F_MODULE_LOAD_DSO ;
 int CONF_R_ERROR_LOADING_DSO ;
 int CONF_R_MISSING_INIT_FUNCTION ;
 int CONFerr (int ,int) ;
 scalar_t__ DSO_bind_func (int *,int ) ;
 int DSO_free (int *) ;
 int * DSO_load (int *,char const*,int *,int ) ;
 int DSO_mod_finish_name ;
 int DSO_mod_init_name ;
 int ERR_add_error_data (int,char*,char const*,char*,char const*) ;
 int ERR_clear_error () ;
 char* NCONF_get_string (int const*,char const*,char*) ;
 int * module_add (int *,char const*,int *,int *) ;

__attribute__((used)) static CONF_MODULE *module_load_dso(const CONF *cnf,
                                    const char *name, const char *value)
{
    DSO *dso = ((void*)0);
    conf_init_func *ifunc;
    conf_finish_func *ffunc;
    const char *path = ((void*)0);
    int errcode = 0;
    CONF_MODULE *md;

    path = NCONF_get_string(cnf, value, "path");
    if (!path) {
        ERR_clear_error();
        path = name;
    }
    dso = DSO_load(((void*)0), path, ((void*)0), 0);
    if (!dso) {
        errcode = CONF_R_ERROR_LOADING_DSO;
        goto err;
    }
    ifunc = (conf_init_func *)DSO_bind_func(dso, DSO_mod_init_name);
    if (!ifunc) {
        errcode = CONF_R_MISSING_INIT_FUNCTION;
        goto err;
    }
    ffunc = (conf_finish_func *)DSO_bind_func(dso, DSO_mod_finish_name);

    md = module_add(dso, name, ifunc, ffunc);

    if (!md)
        goto err;

    return md;

 err:
    DSO_free(dso);
    CONFerr(CONF_F_MODULE_LOAD_DSO, errcode);
    ERR_add_error_data(4, "module=", name, ", path=", path);
    return ((void*)0);
}
