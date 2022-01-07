
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
typedef TYPE_1__ MIME_HEADER ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int mime_hdr_cmp(const MIME_HEADER *const *a,
                        const MIME_HEADER *const *b)
{
    if (!(*a)->name || !(*b)->name)
        return ! !(*a)->name - ! !(*b)->name;

    return strcmp((*a)->name, (*b)->name);
}
