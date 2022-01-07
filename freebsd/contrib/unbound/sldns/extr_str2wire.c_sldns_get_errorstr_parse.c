
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* name; } ;
typedef TYPE_1__ sldns_lookup_table ;


 int LDNS_WIREPARSE_ERROR (int) ;
 TYPE_1__* sldns_lookup_by_id (int ,int ) ;
 int sldns_wireparse_errors ;

const char* sldns_get_errorstr_parse(int e)
{
 sldns_lookup_table *lt;
 lt = sldns_lookup_by_id(sldns_wireparse_errors, LDNS_WIREPARSE_ERROR(e));
 return lt?lt->name:"unknown error";
}
