
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int be ;
 scalar_t__ be_get_bootenv_props (int ,int *) ;
 scalar_t__ be_prop_list_alloc (int **) ;
 int be_prop_list_free (int *) ;
 int bectl_search_jail_paths (char*) ;
 int jail_getid (char const*) ;
 scalar_t__ nvlist_lookup_nvlist (int *,char const*,int **) ;
 scalar_t__ nvlist_lookup_string (int *,char*,char**) ;

__attribute__((used)) static int
bectl_locate_jail(const char *ident)
{
 nvlist_t *belist, *props;
 char *mnt;
 int jid;


 jid = jail_getid(ident);





 if (jid > 0)
  return (jid);


 if (be_prop_list_alloc(&belist) != 0)
  return (-1);

 if (be_get_bootenv_props(be, belist) != 0)
  return (-1);

 if (nvlist_lookup_nvlist(belist, ident, &props) == 0) {


  if (nvlist_lookup_string(props, "mounted", &mnt) == 0) {


   jid = bectl_search_jail_paths(mnt);
   be_prop_list_free(belist);
   return (jid);
  }

  be_prop_list_free(belist);
 }

 return (-1);
}
