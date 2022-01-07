
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hardware {size_t hlen; int * haddr; int htype; } ;
typedef int FILE ;


 int COLON ;


 int HTYPE_ETHER ;
 int HTYPE_FDDI ;
 int HTYPE_IEEE802 ;
 int SEMI ;

 int free (unsigned char*) ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;
 int memset (int *,int ,int) ;
 int next_token (char**,int *) ;
 unsigned char* parse_numeric_aggregate (int *,int *,size_t*,int ,int,int) ;
 int parse_warn (char*) ;
 int skip_to_semi (int *) ;

void
parse_hardware_param(FILE *cfile, struct hardware *hardware)
{
 unsigned char *t;
 int token;
 size_t hlen;
 char *val;

 token = next_token(&val, cfile);
 switch (token) {
 case 130:
  hardware->htype = HTYPE_ETHER;
  break;
 case 128:
  hardware->htype = HTYPE_IEEE802;
  break;
 case 129:
  hardware->htype = HTYPE_FDDI;
  break;
 default:
  parse_warn("expecting a network hardware type");
  skip_to_semi(cfile);
  return;
 }
 hlen = 0;
 t = parse_numeric_aggregate(cfile, ((void*)0), &hlen, COLON, 16, 8);
 if (!t)
  return;
 if (hlen > sizeof(hardware->haddr)) {
  free(t);
  parse_warn("hardware address too long");
 } else {
  hardware->hlen = hlen;
  memcpy((unsigned char *)&hardware->haddr[0], t,
      hardware->hlen);
  if (hlen < sizeof(hardware->haddr))
   memset(&hardware->haddr[hlen], 0,
       sizeof(hardware->haddr) - hlen);
  free(t);
 }

 token = next_token(&val, cfile);
 if (token != SEMI) {
  parse_warn("expecting semicolon.");
  skip_to_semi(cfile);
 }
}
