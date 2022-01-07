
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *
sshkey_curve_nid_to_name(int nid)
{
 switch (nid) {
 case 130:
  return "nistp256";
 case 129:
  return "nistp384";




 default:
  return ((void*)0);
 }
}
