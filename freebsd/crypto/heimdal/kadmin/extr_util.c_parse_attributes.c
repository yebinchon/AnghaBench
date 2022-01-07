
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_flags ;


 int fprintf (int ,char*,char const*) ;
 int kdb_attrs ;
 int print_flags_table (int ,int ) ;
 int stderr ;
 scalar_t__ str2attributes (char const*,int *) ;

int
parse_attributes (const char *resp, krb5_flags *attr, int *mask, int bit)
{
    krb5_flags tmp = *attr;

    if (str2attributes(resp, &tmp) == 0) {
 *attr = tmp;
 if (mask)
     *mask |= bit;
 return 0;
    } else if(*resp == '?') {
 print_flags_table (kdb_attrs, stderr);
    } else {
 fprintf (stderr, "Unable to parse \"%s\"\n", resp);
    }
    return -1;
}
