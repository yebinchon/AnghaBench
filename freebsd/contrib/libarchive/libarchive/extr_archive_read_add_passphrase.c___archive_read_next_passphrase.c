
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct archive_read_passphrase {char* passphrase; struct archive_read_passphrase* next; } ;
struct TYPE_2__ {int candidate; char* (* callback ) (int *,int ) ;int client_data; struct archive_read_passphrase* first; } ;
struct archive_read {TYPE_1__ passphrases; int archive; } ;


 int add_passphrase_to_tail (struct archive_read*,struct archive_read_passphrase*) ;
 int insert_passphrase_to_head (struct archive_read*,struct archive_read_passphrase*) ;
 struct archive_read_passphrase* new_read_passphrase (struct archive_read*,char const*) ;
 struct archive_read_passphrase* remove_passphrases_from_head (struct archive_read*) ;
 char* stub1 (int *,int ) ;

const char *
__archive_read_next_passphrase(struct archive_read *a)
{
 struct archive_read_passphrase *p;
 const char *passphrase;

 if (a->passphrases.candidate < 0) {

  int cnt = 0;

  for (p = a->passphrases.first; p != ((void*)0); p = p->next)
   cnt++;
  a->passphrases.candidate = cnt;
  p = a->passphrases.first;
 } else if (a->passphrases.candidate > 1) {

  a->passphrases.candidate--;
  p = remove_passphrases_from_head(a);
  add_passphrase_to_tail(a, p);

  p = a->passphrases.first;
 } else if (a->passphrases.candidate == 1) {

  a->passphrases.candidate = 0;
  if (a->passphrases.first->next != ((void*)0)) {

   p = remove_passphrases_from_head(a);
   add_passphrase_to_tail(a, p);
  }
  p = ((void*)0);
 } else
  p = ((void*)0);

 if (p != ((void*)0))
  passphrase = p->passphrase;
 else if (a->passphrases.callback != ((void*)0)) {



  passphrase = a->passphrases.callback(&a->archive,
      a->passphrases.client_data);
  if (passphrase != ((void*)0)) {
   p = new_read_passphrase(a, passphrase);
   if (p == ((void*)0))
    return (((void*)0));
   insert_passphrase_to_head(a, p);
   a->passphrases.candidate = 1;
  }
 } else
  passphrase = ((void*)0);

 return (passphrase);
}
