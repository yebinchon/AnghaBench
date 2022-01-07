
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL ;
 int LDNS_WIREPARSE_ERR_OK ;
 int LDNS_WIREPARSE_ERR_SYNTAX_TAG ;
 int RET_ERR (int,int) ;
 int isalnum (unsigned char) ;
 int memmove (scalar_t__*,char const*,size_t) ;
 size_t strlen (char const*) ;

int sldns_str2wire_tag_buf(const char* str, uint8_t* rd, size_t* len)
{
 size_t slen = strlen(str);
 const char* ptr;

 if (slen > 255)
  return LDNS_WIREPARSE_ERR_SYNTAX_TAG;
 if(*len < slen+1)
  return LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL;
 for (ptr = str; *ptr; ptr++) {
  if(!isalnum((unsigned char)*ptr))
   return RET_ERR(LDNS_WIREPARSE_ERR_SYNTAX_TAG, ptr-str);
 }
 rd[0] = (uint8_t)slen;
 memmove(rd+1, str, slen);
 *len = slen+1;
 return LDNS_WIREPARSE_ERR_OK;
}
