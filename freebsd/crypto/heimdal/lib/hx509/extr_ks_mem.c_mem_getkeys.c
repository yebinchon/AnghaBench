
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_data {scalar_t__* keys; } ;
typedef int * hx509_private_key ;
typedef int hx509_context ;
typedef int hx509_certs ;


 int ENOMEM ;
 int * _hx509_private_key_ref (scalar_t__) ;
 int ** calloc (int,int) ;
 int hx509_private_key_free (int **) ;
 int hx509_set_error_string (int ,int ,int,char*) ;

__attribute__((used)) static int
mem_getkeys(hx509_context context,
      hx509_certs certs,
      void *data,
      hx509_private_key **keys)
{
    struct mem_data *mem = data;
    int i;

    for (i = 0; mem->keys && mem->keys[i]; i++)
 ;
    *keys = calloc(i + 1, sizeof(**keys));
    for (i = 0; mem->keys && mem->keys[i]; i++) {
 (*keys)[i] = _hx509_private_key_ref(mem->keys[i]);
 if ((*keys)[i] == ((void*)0)) {
     while (--i >= 0)
  hx509_private_key_free(&(*keys)[i]);
     hx509_set_error_string(context, 0, ENOMEM, "out of memory");
     return ENOMEM;
 }
    }
    (*keys)[i] = ((void*)0);
    return 0;
}
