
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int LDNS_MAX_DOMAINLEN ;
 scalar_t__ LDNS_MAX_LABELLEN ;
 int LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL ;
 int LDNS_WIREPARSE_ERR_DOMAINNAME_OVERFLOW ;
 int LDNS_WIREPARSE_ERR_DOMAINNAME_UNDERFLOW ;
 int LDNS_WIREPARSE_ERR_EMPTY_LABEL ;
 int LDNS_WIREPARSE_ERR_LABEL_OVERFLOW ;
 int LDNS_WIREPARSE_ERR_OK ;
 int LDNS_WIREPARSE_ERR_SYNTAX_BAD_ESCAPE ;
 int RET_ERR (int ,int) ;
 int sldns_parse_escape (scalar_t__*,char const**) ;
 size_t strlen (char*) ;

__attribute__((used)) static int sldns_str2wire_dname_buf_rel(const char* str, uint8_t* buf,
 size_t* olen, int* rel)
{
 size_t len;

 const char *s;
 uint8_t *q, *pq, label_len;

 if(rel) *rel = 0;
 len = strlen((char*)str);

 if (len > LDNS_MAX_DOMAINLEN * 4) {
  return RET_ERR(LDNS_WIREPARSE_ERR_DOMAINNAME_OVERFLOW, 0);
 }
 if (0 == len) {
  return RET_ERR(LDNS_WIREPARSE_ERR_DOMAINNAME_UNDERFLOW, 0);
 }


 if (1 == len && *str == '.') {
  if(*olen < 1)
   return RET_ERR(LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL, 0);
  buf[0] = 0;
  *olen = 1;
  return LDNS_WIREPARSE_ERR_OK;
 }
 len = 0;
 if(*olen < 1)
  return RET_ERR(LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL, 0);
 q = buf+1;
 pq = buf;
 label_len = 0;
 for (s = str; *s; s++, q++) {
  if (q >= buf + *olen)
   return RET_ERR(LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL, q-buf);
  if (q > buf + LDNS_MAX_DOMAINLEN)
   return RET_ERR(LDNS_WIREPARSE_ERR_DOMAINNAME_OVERFLOW, q-buf);
  switch (*s) {
  case '.':
   if (label_len > LDNS_MAX_LABELLEN) {
    return RET_ERR(LDNS_WIREPARSE_ERR_LABEL_OVERFLOW, q-buf);
   }
   if (label_len == 0) {
    return RET_ERR(LDNS_WIREPARSE_ERR_EMPTY_LABEL, q-buf);
   }
   len += label_len + 1;
   *q = 0;
   *pq = label_len;
   label_len = 0;
   pq = q;
   break;
  case '\\':

   s += 1;
   if (!sldns_parse_escape(q, &s)) {
    *q = 0;
    return RET_ERR(LDNS_WIREPARSE_ERR_SYNTAX_BAD_ESCAPE, q-buf);
   }
   s -= 1;
   label_len++;
   break;
  default:
   *q = (uint8_t)*s;
   label_len++;
  }
 }


 if(label_len != 0) {
  if(rel) *rel = 1;
  if (q >= buf + *olen)
   return RET_ERR(LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL, q-buf);
  if (q > buf + LDNS_MAX_DOMAINLEN) {
   return RET_ERR(LDNS_WIREPARSE_ERR_DOMAINNAME_OVERFLOW, q-buf);
  }
                if (label_len > LDNS_MAX_LABELLEN) {
                        return RET_ERR(LDNS_WIREPARSE_ERR_LABEL_OVERFLOW, q-buf);
                }
                if (label_len == 0) {
                        return RET_ERR(LDNS_WIREPARSE_ERR_EMPTY_LABEL, q-buf);
                }
  len += label_len + 1;
  *pq = label_len;
  *q = 0;
 }
 len++;
 *olen = len;

 return LDNS_WIREPARSE_ERR_OK;
}
