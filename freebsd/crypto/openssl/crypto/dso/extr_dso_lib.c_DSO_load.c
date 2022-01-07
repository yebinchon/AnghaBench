
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {char* filename; TYPE_1__* meth; } ;
struct TYPE_10__ {int (* dso_load ) (TYPE_2__*) ;} ;
typedef int DSO_METHOD ;
typedef TYPE_2__ DSO ;


 int DSO_CTRL_SET_FLAGS ;
 int DSO_F_DSO_LOAD ;
 int DSO_R_CTRL_FAILED ;
 int DSO_R_DSO_ALREADY_LOADED ;
 int DSO_R_LOAD_FAILED ;
 int DSO_R_NO_FILENAME ;
 int DSO_R_SET_FILENAME_FAILED ;
 int DSO_R_UNSUPPORTED ;
 scalar_t__ DSO_ctrl (TYPE_2__*,int ,int,int *) ;
 int DSO_free (TYPE_2__*) ;
 TYPE_2__* DSO_new_method (int *) ;
 int DSO_set_filename (TYPE_2__*,char const*) ;
 int DSOerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int stub1 (TYPE_2__*) ;

DSO *DSO_load(DSO *dso, const char *filename, DSO_METHOD *meth, int flags)
{
    DSO *ret;
    int allocated = 0;

    if (dso == ((void*)0)) {
        ret = DSO_new_method(meth);
        if (ret == ((void*)0)) {
            DSOerr(DSO_F_DSO_LOAD, ERR_R_MALLOC_FAILURE);
            goto err;
        }
        allocated = 1;

        if (DSO_ctrl(ret, DSO_CTRL_SET_FLAGS, flags, ((void*)0)) < 0) {
            DSOerr(DSO_F_DSO_LOAD, DSO_R_CTRL_FAILED);
            goto err;
        }
    } else
        ret = dso;

    if (ret->filename != ((void*)0)) {
        DSOerr(DSO_F_DSO_LOAD, DSO_R_DSO_ALREADY_LOADED);
        goto err;
    }




    if (filename != ((void*)0))
        if (!DSO_set_filename(ret, filename)) {
            DSOerr(DSO_F_DSO_LOAD, DSO_R_SET_FILENAME_FAILED);
            goto err;
        }
    filename = ret->filename;
    if (filename == ((void*)0)) {
        DSOerr(DSO_F_DSO_LOAD, DSO_R_NO_FILENAME);
        goto err;
    }
    if (ret->meth->dso_load == ((void*)0)) {
        DSOerr(DSO_F_DSO_LOAD, DSO_R_UNSUPPORTED);
        goto err;
    }
    if (!ret->meth->dso_load(ret)) {
        DSOerr(DSO_F_DSO_LOAD, DSO_R_LOAD_FAILED);
        goto err;
    }

    return ret;
 err:
    if (allocated)
        DSO_free(ret);
    return ((void*)0);
}
