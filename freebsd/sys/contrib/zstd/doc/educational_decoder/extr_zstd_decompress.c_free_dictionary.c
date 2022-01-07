
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* const content; int ml_dtable; int of_dtable; int ll_dtable; int literals_dtable; } ;
typedef TYPE_1__ dictionary_t ;


 int FSE_free_dtable (int *) ;
 int HUF_free_dtable (int *) ;
 int free (TYPE_1__* const) ;
 int memset (TYPE_1__* const,int ,int) ;

void free_dictionary(dictionary_t *const dict) {
    HUF_free_dtable(&dict->literals_dtable);
    FSE_free_dtable(&dict->ll_dtable);
    FSE_free_dtable(&dict->of_dtable);
    FSE_free_dtable(&dict->ml_dtable);

    free(dict->content);

    memset(dict, 0, sizeof(dictionary_t));

    free(dict);
}
