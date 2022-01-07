
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vdd {scalar_t__ vdd_type; } ;
struct TYPE_2__ {int iso_level; } ;
struct iso9660 {TYPE_1__ opt; } ;
struct idr {int char_map; scalar_t__ pool_size; int * idrent_pool; } ;


 scalar_t__ VDD_JOLIET ;
 int d1_characters_map ;
 int d_characters_map ;
 int idr_relaxed_filenames (int ) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static void
idr_init(struct iso9660 *iso9660, struct vdd *vdd, struct idr *idr)
{

 idr->idrent_pool = ((void*)0);
 idr->pool_size = 0;
 if (vdd->vdd_type != VDD_JOLIET) {
  if (iso9660->opt.iso_level <= 3) {
   memcpy(idr->char_map, d_characters_map,
       sizeof(idr->char_map));
  } else {
   memcpy(idr->char_map, d1_characters_map,
       sizeof(idr->char_map));
   idr_relaxed_filenames(idr->char_map);
  }
 }
}
