
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr_class ;


 int free (char*) ;
 char* ldns_rr_class2str (int ) ;
 int printf (char*,char*) ;

__attribute__((used)) static int
print_rr_class(ldns_rr_class cls) {
    char *str;
    int n;

    str = ldns_rr_class2str(cls);
    n = printf("%s", str);
    free(str);
    return n;
}
