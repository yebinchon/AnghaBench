
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int id; int * name; } ;
typedef TYPE_1__ sldns_lookup_table ;



sldns_lookup_table *
sldns_lookup_by_id(sldns_lookup_table *table, int id)
{
        while (table->name != ((void*)0)) {
                if (table->id == id)
                        return table;
                table++;
        }
        return ((void*)0);
}
