
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
typedef int t ;
typedef enum verbosity_value { ____Placeholder_verbosity_value } verbosity_value ;
typedef int c ;
struct TYPE_4__ {char* name; } ;
struct TYPE_3__ {char* _name; } ;


 int LDNS_MAX_DOMAINLEN ;
 scalar_t__ LDNS_RR_TYPE_ANY ;
 scalar_t__ LDNS_RR_TYPE_AXFR ;
 scalar_t__ LDNS_RR_TYPE_IXFR ;
 scalar_t__ LDNS_RR_TYPE_MAILA ;
 scalar_t__ LDNS_RR_TYPE_MAILB ;
 scalar_t__ LDNS_RR_TYPE_TSIG ;
 int dname_str (int *,char*) ;
 int log_info (char*,char const*,char*,char const*,char const*) ;
 TYPE_2__* sldns_lookup_by_id (int ,int) ;
 int sldns_rr_classes ;
 TYPE_1__* sldns_rr_descript (scalar_t__) ;
 int snprintf (char*,int,char*,int) ;
 int verbosity ;

void
log_nametypeclass(enum verbosity_value v, const char* str, uint8_t* name,
 uint16_t type, uint16_t dclass)
{
 char buf[LDNS_MAX_DOMAINLEN+1];
 char t[12], c[12];
 const char *ts, *cs;
 if(verbosity < v)
  return;
 dname_str(name, buf);
 if(type == LDNS_RR_TYPE_TSIG) ts = "TSIG";
 else if(type == LDNS_RR_TYPE_IXFR) ts = "IXFR";
 else if(type == LDNS_RR_TYPE_AXFR) ts = "AXFR";
 else if(type == LDNS_RR_TYPE_MAILB) ts = "MAILB";
 else if(type == LDNS_RR_TYPE_MAILA) ts = "MAILA";
 else if(type == LDNS_RR_TYPE_ANY) ts = "ANY";
 else if(sldns_rr_descript(type) && sldns_rr_descript(type)->_name)
  ts = sldns_rr_descript(type)->_name;
 else {
  snprintf(t, sizeof(t), "TYPE%d", (int)type);
  ts = t;
 }
 if(sldns_lookup_by_id(sldns_rr_classes, (int)dclass) &&
  sldns_lookup_by_id(sldns_rr_classes, (int)dclass)->name)
  cs = sldns_lookup_by_id(sldns_rr_classes, (int)dclass)->name;
 else {
  snprintf(c, sizeof(c), "CLASS%d", (int)dclass);
  cs = c;
 }
 log_info("%s %s %s %s", str, buf, ts, cs);
}
