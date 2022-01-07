
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rdf ;


 int free (char*) ;
 char* ldns_rdf2str (int *) ;
 int printf (char*,char*) ;

__attribute__((used)) static int
print_rdf(ldns_rdf *rdf) {
    char *str;
    int n;

    str = ldns_rdf2str(rdf);
    n = printf("%s", str);
    free(str);
    return n;
}
