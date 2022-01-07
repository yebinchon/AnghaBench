
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int fileargs_t ;


 int dnvlist_get_number (int *,char*,int ) ;
 int * fileargs_init (int ,int *,int ,int ,int *,int ) ;
 int nvlist_destroy (int *) ;
 int nvlist_get_number (int *,char*) ;

__attribute__((used)) static inline fileargs_t *
fileargs_initnv(nvlist_t *limits)
{
 fileargs_t *fa;

 fa = fileargs_init(0, ((void*)0),
     nvlist_get_number(limits, "flags"),
     dnvlist_get_number(limits, "mode", 0),
     ((void*)0),
     nvlist_get_number(limits, "operations"));
 nvlist_destroy(limits);

 return (fa);
}
