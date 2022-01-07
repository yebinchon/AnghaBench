
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct TYPE_7__ {scalar_t__ internal; } ;
struct TYPE_6__ {int fp; scalar_t__ new_file; int save_file; } ;
typedef TYPE_1__ HTAB ;
typedef TYPE_2__ DB ;


 int EINVAL ;
 int ERROR ;
 scalar_t__ __buf_free (TYPE_1__*,int ,int) ;
 scalar_t__ _fsync (int) ;
 int errno ;
 scalar_t__ flush_meta (TYPE_1__*) ;

__attribute__((used)) static int
hash_sync(const DB *dbp, u_int32_t flags)
{
 HTAB *hashp;

 if (flags != 0) {
  errno = EINVAL;
  return (ERROR);
 }

 if (!dbp)
  return (ERROR);

 hashp = (HTAB *)dbp->internal;
 if (!hashp->save_file)
  return (0);
 if (__buf_free(hashp, 0, 1) || flush_meta(hashp))
  return (ERROR);
 if (hashp->fp != -1 && _fsync(hashp->fp) != 0)
  return (ERROR);
 hashp->new_file = 0;
 return (0);
}
