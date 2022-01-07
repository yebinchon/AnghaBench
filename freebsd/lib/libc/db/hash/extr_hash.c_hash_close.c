
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ internal; } ;
typedef int HTAB ;
typedef TYPE_1__ DB ;


 int ERROR ;
 int free (TYPE_1__*) ;
 int hdestroy (int *) ;

__attribute__((used)) static int
hash_close(DB *dbp)
{
 HTAB *hashp;
 int retval;

 if (!dbp)
  return (ERROR);

 hashp = (HTAB *)dbp->internal;
 retval = hdestroy(hashp);
 free(dbp);
 return (retval);
}
