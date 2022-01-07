
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_11__ {int prtn_pkey_tbl; } ;
typedef TYPE_1__ osm_subn_t ;
struct TYPE_12__ {int name; int map_item; int pkey; } ;
typedef TYPE_2__ osm_prtn_t ;
typedef int osm_log_t ;


 int OSM_LOG (int *,int ,char*,char const*,int ,...) ;
 int OSM_LOG_ERROR ;
 int OSM_LOG_VERBOSE ;
 int cl_hton16 (int ) ;
 int cl_ntoh16 (int ) ;
 scalar_t__ cl_qmap_insert (int *,int ,int *) ;
 int generate_pkey (TYPE_1__*) ;
 int osm_prtn_delete (TYPE_1__*,TYPE_2__**) ;
 TYPE_2__* osm_prtn_find_by_name (TYPE_1__*,char const*) ;
 TYPE_2__* osm_prtn_new (char const*,int ) ;

osm_prtn_t *osm_prtn_make_new(osm_log_t * p_log, osm_subn_t * p_subn,
         const char *name, uint16_t pkey)
{
 osm_prtn_t *p = ((void*)0), *p_check;

 pkey &= cl_hton16((uint16_t) ~ 0x8000);
 if (!pkey) {
  if (name && (p = osm_prtn_find_by_name(p_subn, name)))
   return p;
  if (!(pkey = generate_pkey(p_subn)))
   return ((void*)0);
 }

 p = osm_prtn_new(name, pkey);
 if (!p) {
  OSM_LOG(p_log, OSM_LOG_ERROR, "Unable to create"
   " partition \'%s\' (0x%04x)\n", name, cl_ntoh16(pkey));
  return ((void*)0);
 }

 p_check = (osm_prtn_t *) cl_qmap_insert(&p_subn->prtn_pkey_tbl,
      p->pkey, &p->map_item);
 if (p != p_check) {
  OSM_LOG(p_log, OSM_LOG_VERBOSE, "Duplicated partition"
   " definition: \'%s\' (0x%04x) prev name \'%s\'"
   ".  Will use it\n",
   name, cl_ntoh16(pkey), p_check->name);
  osm_prtn_delete(p_subn, &p);
  p = p_check;
 }

 return p;
}
