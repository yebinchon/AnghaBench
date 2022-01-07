
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_data {int ** keys; } ;
typedef int hx509_private_key ;
typedef int hx509_context ;
typedef int hx509_certs ;


 int ENOMEM ;
 int * _hx509_private_key_ref (int ) ;
 int hx509_set_error_string (int ,int ,int,char*) ;
 void* realloc (int **,int) ;

__attribute__((used)) static int
mem_addkey(hx509_context context,
    hx509_certs certs,
    void *data,
    hx509_private_key key)
{
    struct mem_data *mem = data;
    void *ptr;
    int i;

    for (i = 0; mem->keys && mem->keys[i]; i++)
 ;
    ptr = realloc(mem->keys, (i + 2) * sizeof(*mem->keys));
    if (ptr == ((void*)0)) {
 hx509_set_error_string(context, 0, ENOMEM, "out of memory");
 return ENOMEM;
    }
    mem->keys = ptr;
    mem->keys[i] = _hx509_private_key_ref(key);
    mem->keys[i + 1] = ((void*)0);
    return 0;
}
