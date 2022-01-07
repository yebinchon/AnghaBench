
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int CHECK (int) ;
 int STDERR_FILENO ;
 int nvlist_add_binary (int *,char*,char*,int) ;
 int nvlist_add_bool (int *,char*,int) ;
 int nvlist_add_descriptor (int *,char*,int ) ;
 int nvlist_add_null (int *,char*) ;
 int nvlist_add_number (int *,char*,int ) ;
 int nvlist_add_nvlist (int *,char*,int *) ;
 int nvlist_add_string (int *,char*,char*) ;
 int * nvlist_create (int ) ;
 int nvlist_destroy (int *) ;
 int nvlist_empty (int *) ;
 int nvlist_exists_binary (int *,char*) ;
 int nvlist_exists_bool (int *,char*) ;
 int nvlist_exists_descriptor (int *,char*) ;
 int nvlist_exists_null (int *,char*) ;
 int nvlist_exists_number (int *,char*) ;
 int nvlist_exists_nvlist (int *,char*) ;
 int nvlist_exists_string (int *,char*) ;
 int nvlist_free (int *,char*) ;
 int nvlist_free_binary (int *,char*) ;
 int nvlist_free_bool (int *,char*) ;
 int nvlist_free_descriptor (int *,char*) ;
 int nvlist_free_null (int *,char*) ;
 int nvlist_free_number (int *,char*) ;
 int nvlist_free_nvlist (int *,char*) ;
 int nvlist_free_string (int *,char*) ;
 int printf (char*) ;

int
main(void)
{
 nvlist_t *nvl;

 printf("1..114\n");

 nvl = nvlist_create(0);

 nvlist_add_null(nvl, "nvlist/null");
 nvlist_add_bool(nvl, "nvlist/bool", 1);
 nvlist_add_number(nvl, "nvlist/number", 0);
 nvlist_add_string(nvl, "nvlist/string", "test");
 nvlist_add_nvlist(nvl, "nvlist/nvlist", nvl);
 nvlist_add_descriptor(nvl, "nvlist/descriptor", STDERR_FILENO);
 nvlist_add_binary(nvl, "nvlist/binary", "test", 4);

 CHECK(nvlist_exists_null(nvl, "nvlist/null"));
 CHECK(nvlist_exists_bool(nvl, "nvlist/bool"));
 CHECK(nvlist_exists_number(nvl, "nvlist/number"));
 CHECK(nvlist_exists_string(nvl, "nvlist/string"));
 CHECK(nvlist_exists_nvlist(nvl, "nvlist/nvlist"));
 CHECK(nvlist_exists_descriptor(nvl, "nvlist/descriptor"));
 CHECK(nvlist_exists_binary(nvl, "nvlist/binary"));

 nvlist_free_null(nvl, "nvlist/null");
 CHECK(!nvlist_exists_null(nvl, "nvlist/null"));
 CHECK(nvlist_exists_bool(nvl, "nvlist/bool"));
 CHECK(nvlist_exists_number(nvl, "nvlist/number"));
 CHECK(nvlist_exists_string(nvl, "nvlist/string"));
 CHECK(nvlist_exists_nvlist(nvl, "nvlist/nvlist"));
 CHECK(nvlist_exists_descriptor(nvl, "nvlist/descriptor"));
 CHECK(nvlist_exists_binary(nvl, "nvlist/binary"));

 nvlist_free_bool(nvl, "nvlist/bool");
 CHECK(!nvlist_exists_null(nvl, "nvlist/null"));
 CHECK(!nvlist_exists_bool(nvl, "nvlist/bool"));
 CHECK(nvlist_exists_number(nvl, "nvlist/number"));
 CHECK(nvlist_exists_string(nvl, "nvlist/string"));
 CHECK(nvlist_exists_nvlist(nvl, "nvlist/nvlist"));
 CHECK(nvlist_exists_descriptor(nvl, "nvlist/descriptor"));
 CHECK(nvlist_exists_binary(nvl, "nvlist/binary"));

 nvlist_free_number(nvl, "nvlist/number");
 CHECK(!nvlist_exists_null(nvl, "nvlist/null"));
 CHECK(!nvlist_exists_bool(nvl, "nvlist/bool"));
 CHECK(!nvlist_exists_number(nvl, "nvlist/number"));
 CHECK(nvlist_exists_string(nvl, "nvlist/string"));
 CHECK(nvlist_exists_nvlist(nvl, "nvlist/nvlist"));
 CHECK(nvlist_exists_descriptor(nvl, "nvlist/descriptor"));
 CHECK(nvlist_exists_binary(nvl, "nvlist/binary"));

 nvlist_free_string(nvl, "nvlist/string");
 CHECK(!nvlist_exists_null(nvl, "nvlist/null"));
 CHECK(!nvlist_exists_bool(nvl, "nvlist/bool"));
 CHECK(!nvlist_exists_number(nvl, "nvlist/number"));
 CHECK(!nvlist_exists_string(nvl, "nvlist/string"));
 CHECK(nvlist_exists_nvlist(nvl, "nvlist/nvlist"));
 CHECK(nvlist_exists_descriptor(nvl, "nvlist/descriptor"));
 CHECK(nvlist_exists_binary(nvl, "nvlist/binary"));

 nvlist_free_nvlist(nvl, "nvlist/nvlist");
 CHECK(!nvlist_exists_null(nvl, "nvlist/null"));
 CHECK(!nvlist_exists_bool(nvl, "nvlist/bool"));
 CHECK(!nvlist_exists_number(nvl, "nvlist/number"));
 CHECK(!nvlist_exists_string(nvl, "nvlist/string"));
 CHECK(!nvlist_exists_nvlist(nvl, "nvlist/nvlist"));
 CHECK(nvlist_exists_descriptor(nvl, "nvlist/descriptor"));
 CHECK(nvlist_exists_binary(nvl, "nvlist/binary"));

 nvlist_free_descriptor(nvl, "nvlist/descriptor");
 CHECK(!nvlist_exists_null(nvl, "nvlist/null"));
 CHECK(!nvlist_exists_bool(nvl, "nvlist/bool"));
 CHECK(!nvlist_exists_number(nvl, "nvlist/number"));
 CHECK(!nvlist_exists_string(nvl, "nvlist/string"));
 CHECK(!nvlist_exists_nvlist(nvl, "nvlist/nvlist"));
 CHECK(!nvlist_exists_descriptor(nvl, "nvlist/descriptor"));
 CHECK(nvlist_exists_binary(nvl, "nvlist/binary"));

 nvlist_free_binary(nvl, "nvlist/binary");
 CHECK(!nvlist_exists_null(nvl, "nvlist/null"));
 CHECK(!nvlist_exists_bool(nvl, "nvlist/bool"));
 CHECK(!nvlist_exists_number(nvl, "nvlist/number"));
 CHECK(!nvlist_exists_string(nvl, "nvlist/string"));
 CHECK(!nvlist_exists_nvlist(nvl, "nvlist/nvlist"));
 CHECK(!nvlist_exists_descriptor(nvl, "nvlist/descriptor"));
 CHECK(!nvlist_exists_binary(nvl, "nvlist/binary"));

 CHECK(nvlist_empty(nvl));

 nvlist_add_null(nvl, "nvlist/null");
 nvlist_add_bool(nvl, "nvlist/bool", 1);
 nvlist_add_number(nvl, "nvlist/number", 0);
 nvlist_add_string(nvl, "nvlist/string", "test");
 nvlist_add_nvlist(nvl, "nvlist/nvlist", nvl);
 nvlist_add_descriptor(nvl, "nvlist/descriptor", STDERR_FILENO);
 nvlist_add_binary(nvl, "nvlist/binary", "test", 4);

 CHECK(nvlist_exists_null(nvl, "nvlist/null"));
 CHECK(nvlist_exists_bool(nvl, "nvlist/bool"));
 CHECK(nvlist_exists_number(nvl, "nvlist/number"));
 CHECK(nvlist_exists_string(nvl, "nvlist/string"));
 CHECK(nvlist_exists_nvlist(nvl, "nvlist/nvlist"));
 CHECK(nvlist_exists_descriptor(nvl, "nvlist/descriptor"));
 CHECK(nvlist_exists_binary(nvl, "nvlist/binary"));

 nvlist_free(nvl, "nvlist/null");
 CHECK(!nvlist_exists_null(nvl, "nvlist/null"));
 CHECK(nvlist_exists_bool(nvl, "nvlist/bool"));
 CHECK(nvlist_exists_number(nvl, "nvlist/number"));
 CHECK(nvlist_exists_string(nvl, "nvlist/string"));
 CHECK(nvlist_exists_nvlist(nvl, "nvlist/nvlist"));
 CHECK(nvlist_exists_descriptor(nvl, "nvlist/descriptor"));
 CHECK(nvlist_exists_binary(nvl, "nvlist/binary"));

 nvlist_free(nvl, "nvlist/bool");
 CHECK(!nvlist_exists_null(nvl, "nvlist/null"));
 CHECK(!nvlist_exists_bool(nvl, "nvlist/bool"));
 CHECK(nvlist_exists_number(nvl, "nvlist/number"));
 CHECK(nvlist_exists_string(nvl, "nvlist/string"));
 CHECK(nvlist_exists_nvlist(nvl, "nvlist/nvlist"));
 CHECK(nvlist_exists_descriptor(nvl, "nvlist/descriptor"));
 CHECK(nvlist_exists_binary(nvl, "nvlist/binary"));

 nvlist_free(nvl, "nvlist/number");
 CHECK(!nvlist_exists_null(nvl, "nvlist/null"));
 CHECK(!nvlist_exists_bool(nvl, "nvlist/bool"));
 CHECK(!nvlist_exists_number(nvl, "nvlist/number"));
 CHECK(nvlist_exists_string(nvl, "nvlist/string"));
 CHECK(nvlist_exists_nvlist(nvl, "nvlist/nvlist"));
 CHECK(nvlist_exists_descriptor(nvl, "nvlist/descriptor"));
 CHECK(nvlist_exists_binary(nvl, "nvlist/binary"));

 nvlist_free(nvl, "nvlist/string");
 CHECK(!nvlist_exists_null(nvl, "nvlist/null"));
 CHECK(!nvlist_exists_bool(nvl, "nvlist/bool"));
 CHECK(!nvlist_exists_number(nvl, "nvlist/number"));
 CHECK(!nvlist_exists_string(nvl, "nvlist/string"));
 CHECK(nvlist_exists_nvlist(nvl, "nvlist/nvlist"));
 CHECK(nvlist_exists_descriptor(nvl, "nvlist/descriptor"));
 CHECK(nvlist_exists_binary(nvl, "nvlist/binary"));

 nvlist_free(nvl, "nvlist/nvlist");
 CHECK(!nvlist_exists_null(nvl, "nvlist/null"));
 CHECK(!nvlist_exists_bool(nvl, "nvlist/bool"));
 CHECK(!nvlist_exists_number(nvl, "nvlist/number"));
 CHECK(!nvlist_exists_string(nvl, "nvlist/string"));
 CHECK(!nvlist_exists_nvlist(nvl, "nvlist/nvlist"));
 CHECK(nvlist_exists_descriptor(nvl, "nvlist/descriptor"));
 CHECK(nvlist_exists_binary(nvl, "nvlist/binary"));

 nvlist_free(nvl, "nvlist/descriptor");
 CHECK(!nvlist_exists_null(nvl, "nvlist/null"));
 CHECK(!nvlist_exists_bool(nvl, "nvlist/bool"));
 CHECK(!nvlist_exists_number(nvl, "nvlist/number"));
 CHECK(!nvlist_exists_string(nvl, "nvlist/string"));
 CHECK(!nvlist_exists_nvlist(nvl, "nvlist/nvlist"));
 CHECK(!nvlist_exists_descriptor(nvl, "nvlist/descriptor"));
 CHECK(nvlist_exists_binary(nvl, "nvlist/binary"));

 nvlist_free(nvl, "nvlist/binary");
 CHECK(!nvlist_exists_null(nvl, "nvlist/null"));
 CHECK(!nvlist_exists_bool(nvl, "nvlist/bool"));
 CHECK(!nvlist_exists_number(nvl, "nvlist/number"));
 CHECK(!nvlist_exists_string(nvl, "nvlist/string"));
 CHECK(!nvlist_exists_nvlist(nvl, "nvlist/nvlist"));
 CHECK(!nvlist_exists_descriptor(nvl, "nvlist/descriptor"));
 CHECK(!nvlist_exists_binary(nvl, "nvlist/binary"));

 CHECK(nvlist_empty(nvl));

 nvlist_destroy(nvl);

 return (0);
}
