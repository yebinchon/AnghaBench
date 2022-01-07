
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
struct vnet {scalar_t__ vnet_data_base; } ;
typedef scalar_t__ db_expr_t ;
typedef scalar_t__ c_db_sym_t ;


 scalar_t__ C_DB_SYM_NULL ;
 scalar_t__ VNET_START ;
 scalar_t__ VNET_STOP ;
 struct vnet* curvnet ;
 scalar_t__ db_lookup (char*) ;
 int db_symbol_values (scalar_t__,char const**,scalar_t__*) ;
 struct vnet* db_vnet ;
 int snprintf (char*,int,char*,char const*) ;

bool
db_value_of_name_vnet(const char *name, db_expr_t *valuep)
{
 return (0);

}
