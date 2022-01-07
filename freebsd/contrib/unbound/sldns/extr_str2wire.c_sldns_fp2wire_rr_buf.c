
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct sldns_file_parse_state {int origin_len; size_t prev_rr_len; int * prev_rr; int * origin; int default_ttl; int lineno; } ;
typedef int ssize_t ;
typedef int FILE ;


 int LDNS_PARSE_SKIP_SPACE ;
 int LDNS_RR_BUF_SIZE ;
 int LDNS_WIREPARSE_ERR_INCLUDE ;
 int LDNS_WIREPARSE_ERR_OK ;
 int LDNS_WIREPARSE_ERR_SYNTAX ;
 scalar_t__ isspace (unsigned char) ;
 int memmove (int *,scalar_t__*,size_t) ;
 int sldns_fget_token_l (int *,char*,int ,int ,int *) ;
 int sldns_str2period (int ,char const**) ;
 int sldns_str2wire_dname_buf (int ,int *,int*) ;
 int sldns_str2wire_rr_buf (char*,scalar_t__*,size_t*,size_t*,int ,int *,int,int *,size_t) ;
 int sldns_strip_ws (char*) ;
 int strlcpy (char*,char*,size_t) ;
 scalar_t__ strncmp (char*,char*,int) ;

int sldns_fp2wire_rr_buf(FILE* in, uint8_t* rr, size_t* len, size_t* dname_len,
 struct sldns_file_parse_state* parse_state)
{
 char line[LDNS_RR_BUF_SIZE+1];
 ssize_t size;


 if((size = sldns_fget_token_l(in, line, LDNS_PARSE_SKIP_SPACE,
  LDNS_RR_BUF_SIZE, parse_state?&parse_state->lineno:((void*)0)))
  == -1) {




  return LDNS_WIREPARSE_ERR_SYNTAX;
 }



 if(size == 0) {
  if(*len > 0)
   rr[0] = 0;
  *len = 0;
  *dname_len = 0;
  return LDNS_WIREPARSE_ERR_OK;
 }

 if(strncmp(line, "$ORIGIN", 7) == 0 && isspace((unsigned char)line[7])) {
  int s;
  strlcpy((char*)rr, line, *len);
  *len = 0;
  *dname_len = 0;
  if(!parse_state) return LDNS_WIREPARSE_ERR_OK;
  parse_state->origin_len = sizeof(parse_state->origin);
  s = sldns_str2wire_dname_buf(sldns_strip_ws(line+8),
   parse_state->origin, &parse_state->origin_len);
  if(s) parse_state->origin_len = 0;
  return s;
 } else if(strncmp(line, "$TTL", 4) == 0 && isspace((unsigned char)line[4])) {
  const char* end = ((void*)0);
  strlcpy((char*)rr, line, *len);
  *len = 0;
  *dname_len = 0;
  if(!parse_state) return LDNS_WIREPARSE_ERR_OK;
  parse_state->default_ttl = sldns_str2period(
   sldns_strip_ws(line+5), &end);
 } else if (strncmp(line, "$INCLUDE", 8) == 0) {
  strlcpy((char*)rr, line, *len);
  *len = 0;
  *dname_len = 0;
  return LDNS_WIREPARSE_ERR_INCLUDE;
 } else if (strncmp(line, "$", 1) == 0) {
  strlcpy((char*)rr, line, *len);
  *len = 0;
  *dname_len = 0;
  return LDNS_WIREPARSE_ERR_INCLUDE;
 } else {
  int r = sldns_str2wire_rr_buf(line, rr, len, dname_len,
   parse_state?parse_state->default_ttl:0,
   (parse_state&&parse_state->origin_len)?
    parse_state->origin:((void*)0),
   parse_state?parse_state->origin_len:0,
   (parse_state&&parse_state->prev_rr_len)?
    parse_state->prev_rr:((void*)0),
   parse_state?parse_state->prev_rr_len:0);
  if(r == LDNS_WIREPARSE_ERR_OK && (*dname_len) != 0 &&
   parse_state &&
   (*dname_len) <= sizeof(parse_state->prev_rr)) {
   memmove(parse_state->prev_rr, rr, *dname_len);
   parse_state->prev_rr_len = (*dname_len);
  }
  return r;
 }
 return LDNS_WIREPARSE_ERR_OK;
}
