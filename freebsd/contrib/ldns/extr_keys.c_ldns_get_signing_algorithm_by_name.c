
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ldns_signing_algorithm ;
struct TYPE_3__ {char* member_1; int id; scalar_t__ name; int member_0; } ;
typedef TYPE_1__ ldns_lookup_table ;


 int LDNS_DH ;
 int LDNS_ECC ;
 int LDNS_INDIRECT ;
 int LDNS_PRIVATEDNS ;
 int LDNS_PRIVATEOID ;
 int LDNS_SIGN_DSA_NSEC3 ;
 int LDNS_SIGN_ECC_GOST ;
 int LDNS_SIGN_HMACMD5 ;
 int LDNS_SIGN_RSASHA1_NSEC3 ;
 TYPE_1__* ldns_signing_algorithms ;
 scalar_t__ strcasecmp (scalar_t__,char const*) ;
 int strtol (char const*,char**,int) ;

ldns_signing_algorithm ldns_get_signing_algorithm_by_name(const char* name)
{

        ldns_lookup_table aliases[] = {

                {LDNS_SIGN_HMACMD5, "HMAC-MD5"},
                {LDNS_SIGN_DSA_NSEC3, "NSEC3DSA"},
                {LDNS_SIGN_RSASHA1_NSEC3, "NSEC3RSASHA1"},




                {LDNS_SIGN_RSASHA1_NSEC3, "RSASHA1_NSEC3" },




                {LDNS_DH, "DH"},
                {LDNS_ECC, "ECC"},
                {LDNS_INDIRECT, "INDIRECT"},
                {LDNS_PRIVATEDNS, "PRIVATEDNS"},
                {LDNS_PRIVATEOID, "PRIVATEOID"},
                {0, ((void*)0)}};
        ldns_lookup_table* lt = ldns_signing_algorithms;
 ldns_signing_algorithm a;
 char *endptr;

        while(lt->name) {
                if(strcasecmp(lt->name, name) == 0)
                        return lt->id;
                lt++;
        }
        lt = aliases;
        while(lt->name) {
                if(strcasecmp(lt->name, name) == 0)
                        return lt->id;
                lt++;
        }
 a = strtol(name, &endptr, 10);
 if (*name && !*endptr)
  return a;

        return 0;
}
