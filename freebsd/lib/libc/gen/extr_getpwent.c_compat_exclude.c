
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int (* put ) (TYPE_2__*,TYPE_1__*,TYPE_1__*,int ) ;} ;
struct TYPE_8__ {char* data; scalar_t__ size; } ;
typedef TYPE_1__ DBT ;
typedef TYPE_2__ DB ;


 int DB_HASH ;
 int O_RDWR ;
 TYPE_2__* dbopen (int *,int ,int,int ,int ) ;
 int errno ;
 scalar_t__ strlen (char const*) ;
 int stub1 (TYPE_2__*,TYPE_1__*,TYPE_1__*,int ) ;

__attribute__((used)) static int
compat_exclude(const char *name, DB **db)
{
 DBT key, data;

 if (*db == ((void*)0) &&
     (*db = dbopen(((void*)0), O_RDWR, 600, DB_HASH, 0)) == ((void*)0))
  return (errno);
 key.size = strlen(name);
 key.data = (char *)name;
 data.size = 0;
 data.data = ((void*)0);

 if ((*db)->put(*db, &key, &data, 0) == -1)
  return (errno);
 return (0);
}
