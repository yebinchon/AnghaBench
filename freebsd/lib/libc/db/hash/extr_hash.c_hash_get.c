
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct TYPE_6__ {scalar_t__ internal; } ;
struct TYPE_5__ {int error; } ;
typedef TYPE_1__ HTAB ;
typedef int DBT ;
typedef TYPE_2__ DB ;


 int EINVAL ;
 int ERROR ;
 int HASH_GET ;
 int errno ;
 int hash_access (TYPE_1__*,int ,int *,int *) ;

__attribute__((used)) static int
hash_get(const DB *dbp, const DBT *key, DBT *data, u_int32_t flag)
{
 HTAB *hashp;

 hashp = (HTAB *)dbp->internal;
 if (flag) {
  hashp->error = errno = EINVAL;
  return (ERROR);
 }
 return (hash_access(hashp, HASH_GET, (DBT *)key, data));
}
