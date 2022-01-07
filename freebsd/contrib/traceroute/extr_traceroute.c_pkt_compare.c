
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;


 int Printf (char*,...) ;

void
pkt_compare(const u_char *a, int la, const u_char *b, int lb) {
 int l;
 int i;

 for (i = 0; i < la; i++)
  Printf("%02x", (unsigned int)a[i]);
 Printf("\n");
 l = (la <= lb) ? la : lb;
 for (i = 0; i < l; i++)
  if (a[i] == b[i])
   Printf("__");
  else
   Printf("%02x", (unsigned int)b[i]);
 for (; i < lb; i++)
  Printf("%02x", (unsigned int)b[i]);
 Printf("\n");
}
