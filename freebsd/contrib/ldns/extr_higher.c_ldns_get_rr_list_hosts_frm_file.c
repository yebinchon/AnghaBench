
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr_list ;
typedef int FILE ;


 char* LDNS_RESOLV_HOSTS ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int * ldns_get_rr_list_hosts_frm_fp (int *) ;

ldns_rr_list *
ldns_get_rr_list_hosts_frm_file(char *filename)
{
 ldns_rr_list *names;
 FILE *fp;

 if (!filename) {
                fp = fopen(LDNS_RESOLV_HOSTS, "r");

        } else {
                fp = fopen(filename, "r");
        }
        if (!fp) {
                return ((void*)0);
        }

 names = ldns_get_rr_list_hosts_frm_fp(fp);
 fclose(fp);
 return names;
}
