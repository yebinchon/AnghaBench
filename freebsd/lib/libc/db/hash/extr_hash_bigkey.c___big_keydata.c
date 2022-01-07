
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_9__ {size_t size; int * data; } ;
struct TYPE_8__ {scalar_t__ tmp_key; } ;
typedef TYPE_1__ HTAB ;
typedef TYPE_2__ DBT ;
typedef int BUFHEAD ;


 scalar_t__ collect_key (TYPE_1__*,int *,int ,TYPE_2__*,int) ;

int
__big_keydata(HTAB *hashp, BUFHEAD *bufp, DBT *key, DBT *val, int set)
{
 key->size = (size_t)collect_key(hashp, bufp, 0, val, set);
 if (key->size == (size_t)-1)
  return (-1);
 key->data = (u_char *)hashp->tmp_key;
 return (0);
}
