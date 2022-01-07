
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filter_set {int program; char* filter_name; } ;
struct creation_set {int filter_count; struct filter_set* filters; } ;


 int lafe_errc (int,int ,char*) ;
 scalar_t__ realloc (struct filter_set*,int) ;
 char* strdup (char const*) ;

__attribute__((used)) static void
_cset_add_filter(struct creation_set *cset, int program, const char *filter)
{
 struct filter_set *new_ptr;
 char *new_filter;

 new_ptr = (struct filter_set *)realloc(cset->filters,
     sizeof(*cset->filters) * (cset->filter_count + 1));
 if (new_ptr == ((void*)0))
  lafe_errc(1, 0, "No memory");
 new_filter = strdup(filter);
 if (new_filter == ((void*)0))
  lafe_errc(1, 0, "No memory");
 cset->filters = new_ptr;
 cset->filters[cset->filter_count].program = program;
 cset->filters[cset->filter_count].filter_name = new_filter;
 cset->filter_count++;
}
