
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num_bits; int symbols; } ;
typedef TYPE_1__ HUF_dtable ;


 int free (int ) ;
 int memset (TYPE_1__* const,int ,int) ;

__attribute__((used)) static void HUF_free_dtable(HUF_dtable *const dtable) {
    free(dtable->symbols);
    free(dtable->num_bits);
    memset(dtable, 0, sizeof(HUF_dtable));
}
