
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct torus {int x_sz; int y_sz; int z_sz; int *** sw; } ;


 int canonicalize (int,int) ;
 unsigned int set_fp_bit (int ,int,int,int) ;

__attribute__((used)) static
unsigned fingerprint(struct torus *t, int i, int j, int k)
{
 unsigned fp;
 int ip1, jp1, kp1;
 int x_sz_gt1, y_sz_gt1, z_sz_gt1;

 x_sz_gt1 = t->x_sz > 1;
 y_sz_gt1 = t->y_sz > 1;
 z_sz_gt1 = t->z_sz > 1;

 ip1 = canonicalize(i + 1, t->x_sz);
 jp1 = canonicalize(j + 1, t->y_sz);
 kp1 = canonicalize(k + 1, t->z_sz);

 fp = set_fp_bit(t->sw[i][j][k], 0, 0, 0);
 fp |= set_fp_bit(t->sw[ip1][j][k], x_sz_gt1, 0, 0);
 fp |= set_fp_bit(t->sw[i][jp1][k], 0, y_sz_gt1, 0);
 fp |= set_fp_bit(t->sw[ip1][jp1][k], x_sz_gt1, y_sz_gt1, 0);
 fp |= set_fp_bit(t->sw[i][j][kp1], 0, 0, z_sz_gt1);
 fp |= set_fp_bit(t->sw[ip1][j][kp1], x_sz_gt1, 0, z_sz_gt1);
 fp |= set_fp_bit(t->sw[i][jp1][kp1], 0, y_sz_gt1, z_sz_gt1);
 fp |= set_fp_bit(t->sw[ip1][jp1][kp1], x_sz_gt1, y_sz_gt1, z_sz_gt1);

 fp |= x_sz_gt1 << 8;
 fp |= y_sz_gt1 << 9;
 fp |= z_sz_gt1 << 10;

 return fp;
}
