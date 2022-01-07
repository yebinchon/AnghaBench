
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libbe_handle_t ;


 int be_clone (int *,char const*,char const*,int) ;

int
be_create_from_existing_snap(libbe_handle_t *lbh, const char *bename,
    const char *snap)
{
 return (be_clone(lbh, bename, snap, -1));
}
