
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct archive_read_passphrase {struct archive_read_passphrase* next; } ;
struct TYPE_2__ {struct archive_read_passphrase* first; } ;
struct archive_read {TYPE_1__ passphrases; } ;



__attribute__((used)) static void
insert_passphrase_to_head(struct archive_read *a,
    struct archive_read_passphrase *p)
{
 p->next = a->passphrases.first;
 a->passphrases.first = p;
}
