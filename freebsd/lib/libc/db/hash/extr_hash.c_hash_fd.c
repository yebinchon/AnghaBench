
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ internal; } ;
struct TYPE_4__ {int fp; } ;
typedef TYPE_1__ HTAB ;
typedef TYPE_2__ DB ;


 int ENOENT ;
 int ERROR ;
 int errno ;

__attribute__((used)) static int
hash_fd(const DB *dbp)
{
 HTAB *hashp;

 if (!dbp)
  return (ERROR);

 hashp = (HTAB *)dbp->internal;
 if (hashp->fp == -1) {
  errno = ENOENT;
  return (-1);
 }
 return (hashp->fp);
}
