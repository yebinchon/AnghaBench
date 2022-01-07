
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int shorts ;


 int LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL ;
 int LDNS_WIREPARSE_ERR_OK ;
 int LDNS_WIREPARSE_ERR_SYNTAX_ILNP64 ;
 int htons (unsigned int) ;
 int memmove (int *,int **,int) ;
 int sscanf (char const*,char*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,int*) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ strpbrk (char const*,char*) ;

int sldns_str2wire_ilnp64_buf(const char* str, uint8_t* rd, size_t* len)
{
 unsigned int a, b, c, d;
 uint16_t shorts[4];
 int l;
 if(*len < sizeof(shorts))
  return LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL;

 if (sscanf(str, "%4x:%4x:%4x:%4x%n", &a, &b, &c, &d, &l) != 4 ||
   l != (int)strlen(str) ||
   strpbrk(str, "+-")
   )
  return LDNS_WIREPARSE_ERR_SYNTAX_ILNP64;
 shorts[0] = htons(a);
 shorts[1] = htons(b);
 shorts[2] = htons(c);
 shorts[3] = htons(d);
 memmove(rd, &shorts, sizeof(shorts));
 *len = sizeof(shorts);
 return LDNS_WIREPARSE_ERR_OK;
}
