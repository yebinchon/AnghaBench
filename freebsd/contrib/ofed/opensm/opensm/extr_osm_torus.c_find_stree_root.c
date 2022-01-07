
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct torus {int z_sz; int y_sz; int x_sz; struct t_switch**** sw; } ;
struct t_switch {int dummy; } ;


 int canonicalize (int,int) ;
 struct t_switch* find_plane_mid (struct torus*,int) ;

__attribute__((used)) static
struct t_switch *find_stree_root(struct torus *t)
{
 int x, y, z, dz, zm = t->z_sz / 2;
 struct t_switch ****sw = t->sw;
 struct t_switch *root;
 bool good_plane;
 for (dz = 0; dz <= zm; dz++) {

  z = canonicalize(zm - dz, t->z_sz);
  good_plane = 1;
  for (y = 0; y < t->y_sz && good_plane; y++)
   for (x = 0; x < t->x_sz && good_plane; x++)
    good_plane = sw[x][y][z];

  if (good_plane) {
   root = find_plane_mid(t, z);
   if (root)
    goto out;
  }
  if (!dz)
   continue;

  z = canonicalize(zm + dz, t->z_sz);
  good_plane = 1;
  for (y = 0; y < t->y_sz && good_plane; y++)
   for (x = 0; x < t->x_sz && good_plane; x++)
    good_plane = sw[x][y][z];

  if (good_plane) {
   root = find_plane_mid(t, z);
   if (root)
    goto out;
  }
 }
 root = find_plane_mid(t, zm);
out:
 return root;
}
