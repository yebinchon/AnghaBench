
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ldns_status ;
struct TYPE_3__ {char const* name; } ;
typedef TYPE_1__ ldns_lookup_table ;


 int ldns_error_str ;
 TYPE_1__* ldns_lookup_by_id (int ,int ) ;

const char *
ldns_get_errorstr_by_id(ldns_status err)
{
        ldns_lookup_table *lt;

        lt = ldns_lookup_by_id(ldns_error_str, err);

        if (lt) {
                return lt->name;
        }
        return ((void*)0);
}
