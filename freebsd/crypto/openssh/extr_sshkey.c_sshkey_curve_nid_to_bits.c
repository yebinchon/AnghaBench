
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;






u_int
sshkey_curve_nid_to_bits(int nid)
{
 switch (nid) {
 case 130:
  return 256;
 case 129:
  return 384;




 default:
  return 0;
 }
}
