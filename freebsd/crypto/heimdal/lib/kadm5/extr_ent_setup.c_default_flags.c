
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int client; int server; int forwardable; int proxiable; int renewable; int postdate; } ;
struct TYPE_5__ {TYPE_2__ flags; } ;
struct TYPE_7__ {TYPE_1__ entry; } ;
typedef TYPE_3__ hdb_entry_ex ;



__attribute__((used)) static void
default_flags(hdb_entry_ex *ent, int server)
{
    ent->entry.flags.client = 1;
    ent->entry.flags.server = !!server;
    ent->entry.flags.forwardable = 1;
    ent->entry.flags.proxiable = 1;
    ent->entry.flags.renewable = 1;
    ent->entry.flags.postdate = 1;
}
