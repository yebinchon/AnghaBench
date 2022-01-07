
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* filename; scalar_t__ loaded_filename; } ;
typedef TYPE_1__ DSO ;


 int DSO_F_DSO_SET_FILENAME ;
 int DSO_R_DSO_ALREADY_LOADED ;
 int DSOerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int ERR_R_PASSED_NULL_PARAMETER ;
 int OPENSSL_free (char*) ;
 char* OPENSSL_strdup (char const*) ;

int DSO_set_filename(DSO *dso, const char *filename)
{
    char *copied;

    if ((dso == ((void*)0)) || (filename == ((void*)0))) {
        DSOerr(DSO_F_DSO_SET_FILENAME, ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }
    if (dso->loaded_filename) {
        DSOerr(DSO_F_DSO_SET_FILENAME, DSO_R_DSO_ALREADY_LOADED);
        return 0;
    }

    copied = OPENSSL_strdup(filename);
    if (copied == ((void*)0)) {
        DSOerr(DSO_F_DSO_SET_FILENAME, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    OPENSSL_free(dso->filename);
    dso->filename = copied;
    return 1;
}
