
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read_passphrase {int * passphrase; } ;
struct archive_read {int archive; } ;


 int ENOMEM ;
 int archive_set_error (int *,int ,char*) ;
 int free (struct archive_read_passphrase*) ;
 struct archive_read_passphrase* malloc (int) ;
 int * strdup (char const*) ;

__attribute__((used)) static struct archive_read_passphrase *
new_read_passphrase(struct archive_read *a, const char *passphrase)
{
 struct archive_read_passphrase *p;

 p = malloc(sizeof(*p));
 if (p == ((void*)0)) {
  archive_set_error(&a->archive, ENOMEM,
      "Can't allocate memory");
  return (((void*)0));
 }
 p->passphrase = strdup(passphrase);
 if (p->passphrase == ((void*)0)) {
  free(p);
  archive_set_error(&a->archive, ENOMEM,
      "Can't allocate memory");
  return (((void*)0));
 }
 return (p);
}
