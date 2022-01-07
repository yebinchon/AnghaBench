
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* filename; } ;
typedef TYPE_1__ OPENSSL_INIT_SETTINGS ;


 int free (char*) ;
 char* strdup (char const*) ;

int OPENSSL_INIT_set_config_filename(OPENSSL_INIT_SETTINGS *settings,
                                     const char *filename)
{
    char *newfilename = ((void*)0);

    if (filename != ((void*)0)) {
        newfilename = strdup(filename);
        if (newfilename == ((void*)0))
            return 0;
    }

    free(settings->filename);
    settings->filename = newfilename;

    return 1;
}
