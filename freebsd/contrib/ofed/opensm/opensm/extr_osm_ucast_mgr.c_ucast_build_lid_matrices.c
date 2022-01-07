
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int osm_ucast_mgr_build_lid_matrices (void*) ;

__attribute__((used)) static int ucast_build_lid_matrices(void *context)
{
 return osm_ucast_mgr_build_lid_matrices(context);
}
