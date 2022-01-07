
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_data {int * name; } ;
typedef int hx509_lock ;
typedef int hx509_context ;
typedef int hx509_certs ;


 int ENOMEM ;
 struct mem_data* calloc (int,int) ;
 int free (struct mem_data*) ;
 int * strdup (char const*) ;

__attribute__((used)) static int
mem_init(hx509_context context,
  hx509_certs certs, void **data, int flags,
  const char *residue, hx509_lock lock)
{
    struct mem_data *mem;
    mem = calloc(1, sizeof(*mem));
    if (mem == ((void*)0))
 return ENOMEM;
    if (residue == ((void*)0) || residue[0] == '\0')
 residue = "anonymous";
    mem->name = strdup(residue);
    if (mem->name == ((void*)0)) {
 free(mem);
 return ENOMEM;
    }
    *data = mem;
    return 0;
}
