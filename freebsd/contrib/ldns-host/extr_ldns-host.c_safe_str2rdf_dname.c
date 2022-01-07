
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_status ;
typedef int ldns_rdf ;


 int LDNS_STATUS_OK ;
 int die (int,char*,char const*,int ) ;
 int ldns_get_errorstr_by_id (int ) ;
 int ldns_str2rdf_dname (int **,char const*) ;

__attribute__((used)) static ldns_rdf*
safe_str2rdf_dname(const char *name) {
    ldns_rdf *dname;
    ldns_status status;

    if ((status = ldns_str2rdf_dname(&dname, name)) != LDNS_STATUS_OK) {
        die(1, "'%s' is not a legal name (%s)",
            name, ldns_get_errorstr_by_id(status));
    }
    return dname;
}
