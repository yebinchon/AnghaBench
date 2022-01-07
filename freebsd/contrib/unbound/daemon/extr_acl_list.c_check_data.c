
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct config_strlist {char const* str; } ;
typedef int rr ;
typedef int buf ;


 int LDNS_RR_BUF_SIZE ;
 scalar_t__ LDNS_RR_TYPE_CNAME ;
 scalar_t__ LDNS_WIREPARSE_OFFSET (int) ;
 int log_err (char*,...) ;
 int sldns_get_errorstr_parse (int) ;
 int sldns_str2wire_rr_buf (char*,int *,size_t*,int *,int,int *,int ,int *,int ) ;
 scalar_t__ sldns_wirerr_get_type (int *,size_t,int) ;
 int snprintf (char*,int,char*,char*,char const*) ;

__attribute__((used)) static int
check_data(const char* data, const struct config_strlist* head)
{
 char buf[65536];
 uint8_t rr[LDNS_RR_BUF_SIZE];
 size_t len = sizeof(rr);
 int res;


 snprintf(buf, sizeof(buf), "%s %s", ".", data);
 res = sldns_str2wire_rr_buf(buf, rr, &len, ((void*)0), 3600, ((void*)0), 0,
  ((void*)0), 0);



 if(res == 0 && head) {
  const char* err_data = ((void*)0);

  if(sldns_wirerr_get_type(rr, len, 1) == LDNS_RR_TYPE_CNAME) {

   err_data = data;
  } else {
   snprintf(buf, sizeof(buf), "%s %s", ".", head->str);
   len = sizeof(rr);
   res = sldns_str2wire_rr_buf(buf, rr, &len, ((void*)0), 3600,
    ((void*)0), 0, ((void*)0), 0);
   if(res != 0) {



    return 0;
   }
   if(sldns_wirerr_get_type(rr, len, 1) ==
    LDNS_RR_TYPE_CNAME)
    err_data = head->str;
  }
  if(err_data) {
   log_err("redirect tag data '%s' must not coexist with "
    "other data.", err_data);
   return 0;
  }
 }
 if(res == 0)
  return 1;
 log_err("rr data [char %d] parse error %s",
  (int)LDNS_WIREPARSE_OFFSET(res)-13,
  sldns_get_errorstr_parse(res));
 return 0;
}
