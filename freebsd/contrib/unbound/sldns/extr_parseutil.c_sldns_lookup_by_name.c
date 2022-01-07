
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * name; } ;
typedef TYPE_1__ sldns_lookup_table ;


 scalar_t__ strcasecmp (char const*,int *) ;

sldns_lookup_table *
sldns_lookup_by_name(sldns_lookup_table *table, const char *name)
{
        while (table->name != ((void*)0)) {
                if (strcasecmp(name, table->name) == 0)
                        return table;
                table++;
        }
        return ((void*)0);
}
