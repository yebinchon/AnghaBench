
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct torus {int z_sz; int y_sz; int x_sz; } ;
struct t_switch {int k; int j; int i; } ;


 int ring_dir_idx (int ,int ,int ) ;
 struct t_switch* ring_next_sw (struct t_switch*,unsigned int,int) ;

__attribute__((used)) static
int ring_dir_path(struct torus *t, unsigned cdir,
    struct t_switch *ssw, struct t_switch *dsw)
{
 int d = 0;
 struct t_switch *sw;

 switch (cdir) {
 case 0:
  d = ring_dir_idx(ssw->i, dsw->i, t->x_sz);
  break;
 case 1:
  d = ring_dir_idx(ssw->j, dsw->j, t->y_sz);
  break;
 case 2:
  d = ring_dir_idx(ssw->k, dsw->k, t->z_sz);
  break;
 default:
  break;
 }
 if (!d)
  goto out;

 sw = ssw;
 while (sw) {
  sw = ring_next_sw(sw, cdir, d);
  if (sw == dsw)
   goto out;
 }
 d *= -1;
 sw = ssw;
 while (sw) {
  sw = ring_next_sw(sw, cdir, d);
  if (sw == dsw)
   goto out;
 }
 d = 0;
out:
 return d;
}
