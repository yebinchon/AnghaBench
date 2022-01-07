
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int candidate; } ;
struct archive_read {TYPE_1__ passphrases; } ;



void
__archive_read_reset_passphrase(struct archive_read *a)
{

 a->passphrases.candidate = -1;
}
