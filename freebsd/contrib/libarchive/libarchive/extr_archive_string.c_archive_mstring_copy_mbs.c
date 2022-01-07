
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_mstring {scalar_t__ aes_set; } ;


 int archive_mstring_copy_mbs_len (struct archive_mstring*,char const*,int ) ;
 int strlen (char const*) ;

int
archive_mstring_copy_mbs(struct archive_mstring *aes, const char *mbs)
{
 if (mbs == ((void*)0)) {
  aes->aes_set = 0;
  return (0);
 }
 return (archive_mstring_copy_mbs_len(aes, mbs, strlen(mbs)));
}
