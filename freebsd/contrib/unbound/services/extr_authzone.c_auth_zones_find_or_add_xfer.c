
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auth_zones {int dummy; } ;
struct auth_zone {int dclass; int namelen; int name; } ;
struct auth_xfer {int lock; } ;


 struct auth_xfer* auth_xfer_create (struct auth_zones*,struct auth_zone*) ;
 struct auth_xfer* auth_xfer_find (struct auth_zones*,int ,int ,int ) ;
 int lock_basic_lock (int *) ;

__attribute__((used)) static struct auth_xfer*
auth_zones_find_or_add_xfer(struct auth_zones* az, struct auth_zone* z)
{
 struct auth_xfer* x;
 x = auth_xfer_find(az, z->name, z->namelen, z->dclass);
 if(!x) {

  x = auth_xfer_create(az, z);
 } else {
  lock_basic_lock(&x->lock);
 }
 return x;
}
