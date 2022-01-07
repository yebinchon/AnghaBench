
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ (* get ) (TYPE_2__*,TYPE_1__*,TYPE_1__*,int ) ;} ;
struct TYPE_7__ {char* data; int size; } ;
typedef TYPE_1__ DBT ;
typedef TYPE_2__ DB ;


 int strlen (char const*) ;
 scalar_t__ stub1 (TYPE_2__*,TYPE_1__*,TYPE_1__*,int ) ;

__attribute__((used)) static int
compat_is_excluded(const char *name, DB *db)
{
 DBT key, data;

 if (db == ((void*)0))
  return (0);
 key.size = strlen(name);
 key.data = (char *)name;
 return (db->get(db, &key, &data, 0) == 0);
}
