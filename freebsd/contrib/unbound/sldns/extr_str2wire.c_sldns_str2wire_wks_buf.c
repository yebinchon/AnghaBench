
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int token ;
struct servent {scalar_t__ s_port; } ;
struct protoent {scalar_t__ p_proto; } ;
typedef int sldns_buffer ;
typedef int proto_str ;


 int LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL ;
 int LDNS_WIREPARSE_ERR_OK ;
 int LDNS_WIREPARSE_ERR_SYNTAX ;
 int RET_ERR (int,int ) ;
 int atoi (char*) ;
 int endprotoent () ;
 int endservent () ;
 struct protoent* getprotobyname (char*) ;
 struct servent* getservbyname (char*,char*) ;
 int ldns_tolower_str (char*) ;
 int memset (int*,int ,int) ;
 scalar_t__ ntohs (int ) ;
 scalar_t__ sldns_bget_token (int *,char*,char*,int) ;
 int sldns_buffer_init_frm_data (int *,int*,int ) ;
 int sldns_buffer_position (int *) ;
 scalar_t__ strcasecmp (char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlcpy (char*,char*,int) ;
 int strlen (char const*) ;

int sldns_str2wire_wks_buf(const char* str, uint8_t* rd, size_t* len)
{
 int rd_len = 1;
 int have_proto = 0;
 char token[50], proto_str[50];
 sldns_buffer strbuf;
 sldns_buffer_init_frm_data(&strbuf, (uint8_t*)str, strlen(str));
 proto_str[0]=0;


 if(*len < 1)
  return LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL;

 while(sldns_bget_token(&strbuf, token, "\t\n ", sizeof(token)) > 0) {
  ldns_tolower_str(token);
  if(!have_proto) {
   struct protoent *p = getprotobyname(token);
   have_proto = 1;
   if(p) rd[0] = (uint8_t)p->p_proto;
   else if(strcasecmp(token, "tcp")==0) rd[0]=6;
   else if(strcasecmp(token, "udp")==0) rd[0]=17;
   else rd[0] = (uint8_t)atoi(token);
   (void)strlcpy(proto_str, token, sizeof(proto_str));
  } else {
   int serv_port;
   struct servent *serv = getservbyname(token, proto_str);
   if(serv) serv_port=(int)ntohs((uint16_t)serv->s_port);
   else if(strcasecmp(token, "domain")==0) serv_port=53;
   else {
    serv_port = atoi(token);
    if(serv_port == 0 && strcmp(token, "0") != 0) {






     return RET_ERR(LDNS_WIREPARSE_ERR_SYNTAX,
      sldns_buffer_position(&strbuf));
    }
    if(serv_port < 0 || serv_port > 65535) {






     return RET_ERR(LDNS_WIREPARSE_ERR_SYNTAX,
      sldns_buffer_position(&strbuf));
    }
   }
   if(rd_len < 1+serv_port/8+1) {

    if(*len < 1+(size_t)serv_port/8+1) {






     return RET_ERR(
     LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL,
     sldns_buffer_position(&strbuf));
    }
    memset(rd+rd_len, 0, 1+(size_t)serv_port/8+1-rd_len);
    rd_len = 1+serv_port/8+1;
   }
   rd[1+ serv_port/8] |= (1 << (7 - serv_port % 8));
  }
 }
 *len = (size_t)rd_len;







 return LDNS_WIREPARSE_ERR_OK;
}
