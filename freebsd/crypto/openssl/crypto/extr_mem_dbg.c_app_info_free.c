
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ references; struct TYPE_4__* next; } ;
typedef TYPE_1__ APP_INFO ;


 int OPENSSL_free (TYPE_1__*) ;

__attribute__((used)) static void app_info_free(APP_INFO *inf)
{
    if (inf == ((void*)0))
        return;
    if (--(inf->references) <= 0) {
        app_info_free(inf->next);
        OPENSSL_free(inf);
    }
}
