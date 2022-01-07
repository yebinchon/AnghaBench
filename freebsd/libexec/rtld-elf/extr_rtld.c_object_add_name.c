
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int name; } ;
struct TYPE_6__ {int names; } ;
typedef TYPE_1__ Obj_Entry ;
typedef TYPE_2__ Name_Entry ;


 int STAILQ_INSERT_TAIL (int *,TYPE_2__*,int ) ;
 int link ;
 TYPE_2__* malloc (int) ;
 int strcpy (int ,char const*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static void
object_add_name(Obj_Entry *obj, const char *name)
{
    Name_Entry *entry;
    size_t len;

    len = strlen(name);
    entry = malloc(sizeof(Name_Entry) + len);

    if (entry != ((void*)0)) {
 strcpy(entry->name, name);
 STAILQ_INSERT_TAIL(&obj->names, entry, link);
    }
}
