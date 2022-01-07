
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prop_data {int dummy; } ;
typedef int krb5_context ;
typedef int HDB ;


 int HDB_F_DECRYPT ;


 int hdb_foreach (int ,int *,int ,int ,struct prop_data*) ;
 int krb5_errx (int ,int,char*,int) ;
 int krb5_warn (int ,int,char*) ;
 int mit_prop_dump (struct prop_data*,char const*) ;
 int v5_prop ;

__attribute__((used)) static int
iterate (krb5_context context,
  const char *database_name,
  HDB *db,
  int type,
  struct prop_data *pd)
{
    int ret;

    switch(type) {
    case 128:
 ret = mit_prop_dump(pd, database_name);
 if (ret)
     krb5_warn(context, ret, "mit_prop_dump");
 break;
    case 129:
 ret = hdb_foreach(context, db, HDB_F_DECRYPT, v5_prop, pd);
 if(ret)
     krb5_warn(context, ret, "hdb_foreach");
 break;
    default:
 krb5_errx(context, 1, "unknown prop type: %d", type);
    }
    return ret;
}
