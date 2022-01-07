
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct sort_column {char* name; char* val; int nvl; } ;
typedef int nvpair_t ;
typedef int nvlist_t ;


 int be_prop_list_free (int *) ;
 int fnvlist_num_pairs (int *) ;
 int nvlist_add_nvlist (int *,char*,int ) ;
 int nvlist_dup (int *,int **,int ) ;
 int nvlist_lookup_string (int ,char*,char**) ;
 int * nvlist_next_nvpair (int *,int *) ;
 int nvlist_remove_all (int *,char*) ;
 int nvpair_value_nvlist (int *,int *) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strtoull (char*,int *,int) ;

__attribute__((used)) static int
prop_list_sort(nvlist_t *props, char *property, bool reverse)
{
 nvpair_t *nvp;
 nvlist_t *nvl;
 int i, nvp_count;
 uint64_t lval, rval;
 struct sort_column sc_prev, sc_next;


 nvlist_dup(props, &nvl, 0);

 nvp_count = fnvlist_num_pairs(nvl);
 for (i = 0; i < nvp_count; i++) {

  nvp = nvlist_next_nvpair(nvl, ((void*)0));
  nvpair_value_nvlist(nvp, &sc_prev.nvl);
  nvlist_lookup_string(sc_prev.nvl, "name", &sc_prev.name);
  nvlist_lookup_string(sc_prev.nvl, property, &sc_prev.val);

  while ((nvp = nvlist_next_nvpair(nvl, nvp)) != ((void*)0)) {

   nvpair_value_nvlist(nvp, &sc_next.nvl);
   nvlist_lookup_string(sc_next.nvl, "name", &sc_next.name);
   nvlist_lookup_string(sc_next.nvl, property, &sc_next.val);


   if (strcmp(property, "creation") == 0 ||
       strcmp(property, "used") == 0 ||
       strcmp(property, "usedds") == 0 ||
       strcmp(property, "usedsnap") == 0 ||
       strcmp(property, "usedrefreserv") == 0) {

    lval = strtoull(sc_prev.val, ((void*)0), 10);
    rval = strtoull(sc_next.val, ((void*)0), 10);

    if ((lval < rval && reverse) ||
        (lval > rval && !reverse))
     sc_prev = sc_next;
   }


   else if (strcmp(property, "name") == 0 ||
     strcmp(property, "origin") == 0) {
    if ((strcmp(sc_prev.val, sc_next.val) < 0 && reverse) ||
        (strcmp(sc_prev.val, sc_next.val) > 0 && !reverse))
     sc_prev = sc_next;
   }
  }







  nvlist_add_nvlist(props, sc_prev.name, sc_prev.nvl);
  nvlist_remove_all(nvl, sc_prev.name);
 }

 be_prop_list_free(nvl);

 return 0;
}
