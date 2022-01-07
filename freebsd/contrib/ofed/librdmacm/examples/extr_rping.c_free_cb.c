
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rping_cb {int dummy; } ;


 int free (struct rping_cb*) ;

__attribute__((used)) static void free_cb(struct rping_cb *cb)
{
 free(cb);
}
