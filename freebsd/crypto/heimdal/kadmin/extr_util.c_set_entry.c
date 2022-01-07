
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int krb5_context ;
typedef TYPE_1__* kadm5_principal_ent_t ;
struct TYPE_3__ {int attributes; int pw_expiration; int princ_expire_time; int max_renewable_life; int max_life; } ;


 int KADM5_ATTRIBUTES ;
 int KADM5_MAX_LIFE ;
 int KADM5_MAX_RLIFE ;
 int KADM5_PRINC_EXPIRE_TIME ;
 int KADM5_PW_EXPIRATION ;
 int krb5_warnx (int ,char*,char const*) ;
 scalar_t__ parse_attributes (char const*,int *,int*,int ) ;
 scalar_t__ parse_deltat (char const*,int *,int*,int ) ;
 scalar_t__ parse_timet (char const*,int *,int*,int ) ;

int
set_entry(krb5_context contextp,
   kadm5_principal_ent_t ent,
   int *mask,
   const char *max_ticket_life,
   const char *max_renewable_life,
   const char *expiration,
   const char *pw_expiration,
   const char *attributes)
{
    if (max_ticket_life != ((void*)0)) {
 if (parse_deltat (max_ticket_life, &ent->max_life,
     mask, KADM5_MAX_LIFE)) {
     krb5_warnx (contextp, "unable to parse `%s'", max_ticket_life);
     return 1;
 }
    }
    if (max_renewable_life != ((void*)0)) {
 if (parse_deltat (max_renewable_life, &ent->max_renewable_life,
     mask, KADM5_MAX_RLIFE)) {
     krb5_warnx (contextp, "unable to parse `%s'", max_renewable_life);
     return 1;
 }
    }

    if (expiration) {
 if (parse_timet (expiration, &ent->princ_expire_time,
   mask, KADM5_PRINC_EXPIRE_TIME)) {
     krb5_warnx (contextp, "unable to parse `%s'", expiration);
     return 1;
 }
    }
    if (pw_expiration) {
 if (parse_timet (pw_expiration, &ent->pw_expiration,
    mask, KADM5_PW_EXPIRATION)) {
     krb5_warnx (contextp, "unable to parse `%s'", pw_expiration);
     return 1;
 }
    }
    if (attributes != ((void*)0)) {
 if (parse_attributes (attributes, &ent->attributes,
         mask, KADM5_ATTRIBUTES)) {
     krb5_warnx (contextp, "unable to parse `%s'", attributes);
     return 1;
 }
    }
    return 0;
}
