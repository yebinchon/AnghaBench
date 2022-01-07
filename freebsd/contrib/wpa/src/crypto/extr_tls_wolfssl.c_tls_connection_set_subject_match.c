
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_connection {int * domain_match; int * suffix_match; int * alt_subject_match; int * subject_match; } ;


 int os_free (int *) ;
 void* os_strdup (char const*) ;

__attribute__((used)) static int tls_connection_set_subject_match(struct tls_connection *conn,
         const char *subject_match,
         const char *alt_subject_match,
         const char *suffix_match,
         const char *domain_match)
{
 os_free(conn->subject_match);
 conn->subject_match = ((void*)0);
 if (subject_match) {
  conn->subject_match = os_strdup(subject_match);
  if (!conn->subject_match)
   return -1;
 }

 os_free(conn->alt_subject_match);
 conn->alt_subject_match = ((void*)0);
 if (alt_subject_match) {
  conn->alt_subject_match = os_strdup(alt_subject_match);
  if (!conn->alt_subject_match)
   return -1;
 }

 os_free(conn->suffix_match);
 conn->suffix_match = ((void*)0);
 if (suffix_match) {
  conn->suffix_match = os_strdup(suffix_match);
  if (!conn->suffix_match)
   return -1;
 }

 os_free(conn->domain_match);
 conn->domain_match = ((void*)0);
 if (domain_match) {
  conn->domain_match = os_strdup(domain_match);
  if (!conn->domain_match)
   return -1;
 }

 return 0;
}
