
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sftp_handler {int name; scalar_t__ does_write; } ;


 int debug2 (char*,int ) ;
 int free (char*) ;
 char* match_list (int ,int *,int *) ;
 scalar_t__ readonly ;
 int * request_blacklist ;
 int * request_whitelist ;
 int verbose (char*,int ) ;

__attribute__((used)) static int
request_permitted(struct sftp_handler *h)
{
 char *result;

 if (readonly && h->does_write) {
  verbose("Refusing %s request in read-only mode", h->name);
  return 0;
 }
 if (request_blacklist != ((void*)0) &&
     ((result = match_list(h->name, request_blacklist, ((void*)0)))) != ((void*)0)) {
  free(result);
  verbose("Refusing blacklisted %s request", h->name);
  return 0;
 }
 if (request_whitelist != ((void*)0) &&
     ((result = match_list(h->name, request_whitelist, ((void*)0)))) != ((void*)0)) {
  free(result);
  debug2("Permitting whitelisted %s request", h->name);
  return 1;
 }
 if (request_whitelist != ((void*)0)) {
  verbose("Refusing non-whitelisted %s request", h->name);
  return 0;
 }
 return 1;
}
