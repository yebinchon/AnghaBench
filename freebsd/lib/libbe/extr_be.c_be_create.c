
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libbe_handle_t ;


 int be_active_path (int *) ;
 int be_create_from_existing (int *,char const*,int ) ;
 int set_error (int *,int) ;

int
be_create(libbe_handle_t *lbh, const char *name)
{
 int err;

 err = be_create_from_existing(lbh, name, be_active_path(lbh));

 return (set_error(lbh, err));
}
