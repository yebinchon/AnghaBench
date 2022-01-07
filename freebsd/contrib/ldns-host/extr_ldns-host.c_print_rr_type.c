
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr_type ;


 int free (char*) ;
 char* ldns_rr_type2str (int ) ;
 int printf (char*,char*) ;

__attribute__((used)) static int
print_rr_type(ldns_rr_type type) {
    char *str;
    int n;

    str = ldns_rr_type2str(type);
    n = printf("%s", str);
    free(str);
    return n;
}
