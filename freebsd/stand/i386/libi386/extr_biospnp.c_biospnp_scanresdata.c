
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef size_t uint16_t ;
typedef size_t u_int ;
struct pnpinfo {char* pi_desc; } ;
struct pnp_devNode {size_t* dn_data; size_t dn_size; } ;





 int PNP_LRES_NUM (size_t) ;
 scalar_t__ PNP_RES_TYPE (size_t) ;
 size_t PNP_SRES_LEN (size_t) ;
 int PNP_SRES_NUM (size_t) ;
 int bcopy (size_t*,char*,size_t) ;
 int free (char*) ;
 char* malloc (size_t) ;
 int pnp_addident (struct pnpinfo*,int ) ;
 int pnp_eisaformat (size_t*) ;

__attribute__((used)) static void
biospnp_scanresdata(struct pnpinfo *pi, struct pnp_devNode *dn)
{
    u_int tag, i, rlen, dlen;
    uint8_t *p;
    char *str;

    p = dn->dn_data;
    dlen = dn->dn_size - (p - (uint8_t *)dn);

    for (i = 0; i < dlen; i+= rlen) {
 tag = p[i];
 i++;
 if (PNP_RES_TYPE(tag) == 0) {
     rlen = PNP_SRES_LEN(tag);

     switch (PNP_SRES_NUM(tag)) {

     case 130:

  pnp_addident(pi, pnp_eisaformat(p + i));
  break;

     case 129:
  return;
     }
 } else {

     rlen = *(uint16_t *)(p + i);
     i += sizeof(uint16_t);

     switch(PNP_LRES_NUM(tag)) {

     case 128:
  str = malloc(rlen + 1);
  bcopy(p + i, str, rlen);
  str[rlen] = 0;
  if (pi->pi_desc == ((void*)0)) {
      pi->pi_desc = str;
  } else {
      free(str);
  }
  break;
     }
 }
    }
}
