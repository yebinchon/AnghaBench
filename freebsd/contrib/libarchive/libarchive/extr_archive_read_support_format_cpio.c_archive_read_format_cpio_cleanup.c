
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct links_entry {struct links_entry* links_head; struct links_entry* name; struct links_entry* next; } ;
struct cpio {struct cpio* links_head; struct cpio* name; struct cpio* next; } ;
struct archive_read {TYPE_1__* format; } ;
struct TYPE_2__ {int * data; } ;


 int ARCHIVE_OK ;
 int free (struct links_entry*) ;

__attribute__((used)) static int
archive_read_format_cpio_cleanup(struct archive_read *a)
{
 struct cpio *cpio;

 cpio = (struct cpio *)(a->format->data);

        while (cpio->links_head != ((void*)0)) {
                struct links_entry *lp = cpio->links_head->next;

                free(cpio->links_head->name);
                free(cpio->links_head);
                cpio->links_head = lp;
        }
 free(cpio);
 (a->format->data) = ((void*)0);
 return (ARCHIVE_OK);
}
