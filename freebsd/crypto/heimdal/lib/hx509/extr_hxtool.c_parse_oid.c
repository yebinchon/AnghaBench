
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int heim_oid ;


 int der_copy_oid (int const*,int *) ;
 int der_parse_heim_oid (char const*,char*,int *) ;
 int errx (int,char*,char const*) ;

__attribute__((used)) static void
parse_oid(const char *str, const heim_oid *def, heim_oid *oid)
{
    int ret;
    if (str)
 ret = der_parse_heim_oid (str, " .", oid);
    else
 ret = der_copy_oid(def, oid);
    if (ret)
 errx(1, "parse_oid failed for: %s", str ? str : "default oid");
}
