
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef size_t u_char ;
struct pnpinfo {char* pi_desc; } ;
typedef int ssize_t ;





 int PNP_LRES_NUM (size_t) ;
 scalar_t__ PNP_RES_TYPE (size_t) ;
 int PNP_SRES_LEN (size_t) ;
 int PNP_SRES_NUM (size_t) ;
 int free (size_t*) ;
 scalar_t__ isapnp_get_resource_info (size_t*,int) ;
 size_t* malloc (size_t) ;
 int pnp_addident (struct pnpinfo*,int ) ;
 int pnp_eisaformat (size_t*) ;

__attribute__((used)) static int
isapnp_scan_resdata(struct pnpinfo *pi)
{
    u_char tag, resinfo[8];
    u_int limit;
    size_t large_len;
    u_char *str;

    limit = 1000;
    while ((limit-- > 0) && !isapnp_get_resource_info(&tag, 1)) {
 if (PNP_RES_TYPE(tag) == 0) {

     switch (PNP_SRES_NUM(tag)) {

  case 130:

      if (isapnp_get_resource_info(resinfo, PNP_SRES_LEN(tag)))
   return(1);
      pnp_addident(pi, pnp_eisaformat(resinfo));

  case 129:
      return(0);
      break;

  default:

      if (isapnp_get_resource_info(((void*)0), PNP_SRES_LEN(tag)))
   return(1);
      break;
     }
 } else {

     if (isapnp_get_resource_info(resinfo, 2))
  return(1);

     large_len = resinfo[1];
     large_len = (large_len << 8) + resinfo[0];

     switch(PNP_LRES_NUM(tag)) {

     case 128:
  str = malloc(large_len + 1);
  if (isapnp_get_resource_info(str, (ssize_t)large_len)) {
      free(str);
      return(1);
  }
  str[large_len] = 0;
  if (pi->pi_desc == ((void*)0)) {
      pi->pi_desc = (char *)str;
  } else {
      free(str);
  }
  break;

     default:

  if (isapnp_get_resource_info(((void*)0), (ssize_t)large_len))
      return(1);
     }
 }
    }
    return(1);
}
