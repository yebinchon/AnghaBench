
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vdd {int max_depth; scalar_t__ total_dir_block; struct isoent* rootent; } ;
struct TYPE_2__ {struct isoent* first; } ;
struct isoent {int dir_location; struct isoent* drnext; struct isoent* parent; TYPE_1__ subdirs; scalar_t__ dir_block; } ;
struct iso9660 {int dummy; } ;


 scalar_t__ calculate_directory_descriptors (struct iso9660*,struct vdd*,struct isoent*,int) ;
 int extra_setup_location (struct isoent*,int) ;

__attribute__((used)) static void
isoent_setup_directory_location(struct iso9660 *iso9660, int location,
    struct vdd *vdd)
{
 struct isoent *np;
 int depth;

 vdd->total_dir_block = 0;
 depth = 0;
 np = vdd->rootent;
 do {
  int block;

  np->dir_block = calculate_directory_descriptors(
      iso9660, vdd, np, depth);
  vdd->total_dir_block += np->dir_block;
  np->dir_location = location;
  location += np->dir_block;
  block = extra_setup_location(np, location);
  vdd->total_dir_block += block;
  location += block;

  if (np->subdirs.first != ((void*)0) && depth + 1 < vdd->max_depth) {

   np = np->subdirs.first;
   depth++;
   continue;
  }
  while (np != np->parent) {
   if (np->drnext == ((void*)0)) {

    np = np->parent;
    depth--;
   } else {
    np = np->drnext;
    break;
   }
  }
 } while (np != np->parent);
}
