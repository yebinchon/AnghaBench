
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int t ;
struct TYPE_2__ {int qname; int qclass; int qtype; } ;
struct module_qstate {struct config_strlist* errinf; TYPE_1__ qinfo; } ;
struct config_strlist {char* str; struct config_strlist* next; } ;
typedef int c ;
typedef int buf ;


 int LDNS_MAX_DOMAINLEN ;
 int dname_str (int ,char*) ;
 int log_err (char*) ;
 int sldns_wire2str_class_buf (int ,char*,int) ;
 int sldns_wire2str_type_buf (int ,char*,int) ;
 int snprintf (char*,size_t,char*,...) ;
 char* strdup (char*) ;
 scalar_t__ strlen (char*) ;

char* errinf_to_str_bogus(struct module_qstate* qstate)
{
 char buf[20480];
 char* p = buf;
 size_t left = sizeof(buf);
 struct config_strlist* s;
 char dname[LDNS_MAX_DOMAINLEN+1];
 char t[16], c[16];
 sldns_wire2str_type_buf(qstate->qinfo.qtype, t, sizeof(t));
 sldns_wire2str_class_buf(qstate->qinfo.qclass, c, sizeof(c));
 dname_str(qstate->qinfo.qname, dname);
 snprintf(p, left, "validation failure <%s %s %s>:", dname, t, c);
 left -= strlen(p); p += strlen(p);
 if(!qstate->errinf)
  snprintf(p, left, " misc failure");
 else for(s=qstate->errinf; s; s=s->next) {
  snprintf(p, left, " %s", s->str);
  left -= strlen(p); p += strlen(p);
 }
 p = strdup(buf);
 if(!p)
  log_err("malloc failure in errinf_to_str");
 return p;
}
