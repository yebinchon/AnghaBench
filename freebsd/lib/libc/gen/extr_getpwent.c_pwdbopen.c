
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int (* get ) (TYPE_2__*,TYPE_1__*,TYPE_1__*,int ) ;int (* close ) (TYPE_2__*) ;} ;
struct TYPE_9__ {scalar_t__ data; int size; } ;
typedef TYPE_1__ DBT ;
typedef TYPE_2__ DB ;


 int DB_HASH ;
 int LOG_CRIT ;
 int O_RDONLY ;
 int _PATH_MP_DB ;
 int _PATH_SMP_DB ;
 scalar_t__ _PWD_VERSION_KEY ;
 TYPE_2__* dbopen (int ,int ,int ,int ,int *) ;
 scalar_t__ geteuid () ;
 int nitems (int ) ;
 int pwdb_versions ;
 int strlen (scalar_t__) ;
 int stub1 (TYPE_2__*,TYPE_1__*,TYPE_1__*,int ) ;
 int stub2 (TYPE_2__*) ;
 int syslog (int ,char*,int) ;

__attribute__((used)) static DB *
pwdbopen(int *version)
{
 DB *res;
 DBT key, entry;
 int rv;

 if (geteuid() != 0 ||
     (res = dbopen(_PATH_SMP_DB, O_RDONLY, 0, DB_HASH, ((void*)0))) == ((void*)0))
  res = dbopen(_PATH_MP_DB, O_RDONLY, 0, DB_HASH, ((void*)0));
 if (res == ((void*)0))
  return (((void*)0));
 key.data = _PWD_VERSION_KEY;
 key.size = strlen(_PWD_VERSION_KEY);
 rv = res->get(res, &key, &entry, 0);
 if (rv == 0)
  *version = *(unsigned char *)entry.data;
 else
  *version = 3;
 if (*version < 3 ||
     *version >= nitems(pwdb_versions)) {
  syslog(LOG_CRIT, "Unsupported password database version %d",
      *version);
  res->close(res);
  res = ((void*)0);
 }
 return (res);
}
