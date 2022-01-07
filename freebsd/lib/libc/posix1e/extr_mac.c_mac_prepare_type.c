
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac {int dummy; } ;
struct label_default {int ld_labels; int ld_name; } ;


 int ENOENT ;
 struct label_default* LIST_FIRST (int *) ;
 struct label_default* LIST_NEXT (struct label_default*,int ) ;
 int errno ;
 int label_default_head ;
 int ld_entries ;
 int mac_maybe_init_internal () ;
 int mac_prepare (struct mac**,int ) ;
 scalar_t__ strcmp (char const*,int ) ;

int
mac_prepare_type(struct mac **mac, const char *name)
{
 struct label_default *ld;
 int error;

 error = mac_maybe_init_internal();
 if (error != 0)
  return (error);

 for (ld = LIST_FIRST(&label_default_head); ld != ((void*)0);
     ld = LIST_NEXT(ld, ld_entries)) {
  if (strcmp(name, ld->ld_name) == 0)
   return (mac_prepare(mac, ld->ld_labels));
 }

 errno = ENOENT;
 return (-1);
}
