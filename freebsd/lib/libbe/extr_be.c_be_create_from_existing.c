
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libbe_handle_t ;


 int BE_MAXPATHLEN ;
 int be_clone (int *,char const*,char*,int) ;
 int be_snapshot (int *,char const*,int *,int,char*) ;
 int set_error (int *,int) ;

int
be_create_from_existing(libbe_handle_t *lbh, const char *bename, const char *old)
{
 int err;
 char snap[BE_MAXPATHLEN];

 if ((err = be_snapshot(lbh, old, ((void*)0), 1, snap)) != 0)
  return (set_error(lbh, err));

        err = be_clone(lbh, bename, snap, -1);

 return (set_error(lbh, err));
}
