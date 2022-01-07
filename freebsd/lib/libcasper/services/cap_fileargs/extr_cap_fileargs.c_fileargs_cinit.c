
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int mode_t ;
typedef int fileargs_t ;
typedef int cap_rights_t ;
typedef int cap_channel_t ;


 int * fileargs_cinitnv (int *,int *) ;
 int * fileargs_create (int *,int ) ;
 int * fileargs_create_limit (int,char const* const*,int,int ,int *,int) ;

fileargs_t *
fileargs_cinit(cap_channel_t *cas, int argc, char *argv[], int flags,
     mode_t mode, cap_rights_t *rightsp, int operations)
{
 nvlist_t *limits;

 if (argc <= 0 || argv == ((void*)0)) {
  return (fileargs_create(((void*)0), 0));
 }

 limits = fileargs_create_limit(argc, (const char * const *)argv, flags,
    mode, rightsp, operations);
 if (limits == ((void*)0))
  return (((void*)0));

 return (fileargs_cinitnv(cas, limits));
}
