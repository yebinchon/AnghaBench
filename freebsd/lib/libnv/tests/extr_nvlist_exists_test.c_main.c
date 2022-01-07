
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
 scalar_t__ nvlist_error (int *) ;
 int nvlist_exists (int *,char*) ;
 int nvlist_exists_binary (int *,char*) ;
 int nvlist_exists_bool (int *,char*) ;
 int nvlist_exists_descriptor (int *,char*) ;
 int nvlist_exists_null (int *,char*) ;
 int nvlist_exists_number (int *,char*) ;
 int nvlist_exists_nvlist (int *,char*) ;
 int nvlist_exists_string (int *,char*) ;
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

 printf("1..232\n");

 nvl = nvlist_create(0);

 CHECK(!nvlist_exists(nvl, "nvlist/null"));
 CHECK(!nvlist_exists_null(nvl, "nvlist/null"));
 CHECK(!nvlist_exists_bool(nvl, "nvlist/null"));
 CHECK(!nvlist_exists_number(nvl, "nvlist/null"));
 CHECK(!nvlist_exists_string(nvl, "nvlist/null"));
 CHECK(!nvlist_exists_nvlist(nvl, "nvlist/null"));
 CHECK(!nvlist_exists_descriptor(nvl, "nvlist/null"));
 CHECK(!nvlist_exists_binary(nvl, "nvlist/null"));
 nvlist_add_null(nvl, "nvlist/null");
 CHECK(nvlist_error(nvl) == 0);
 CHECK(nvlist_exists(nvl, "nvlist/null"));
 CHECK(nvlist_exists_null(nvl, "nvlist/null"));
 CHECK(!nvlist_exists_bool(nvl, "nvlist/null"));
 CHECK(!nvlist_exists_number(nvl, "nvlist/null"));
 CHECK(!nvlist_exists_string(nvl, "nvlist/null"));
 CHECK(!nvlist_exists_nvlist(nvl, "nvlist/null"));
 CHECK(!nvlist_exists_descriptor(nvl, "nvlist/null"));
 CHECK(!nvlist_exists_binary(nvl, "nvlist/null"));

 CHECK(!nvlist_exists(nvl, "nvlist/bool"));
 CHECK(!nvlist_exists_null(nvl, "nvlist/bool"));
 CHECK(!nvlist_exists_bool(nvl, "nvlist/bool"));
 CHECK(!nvlist_exists_number(nvl, "nvlist/bool"));
 CHECK(!nvlist_exists_string(nvl, "nvlist/bool"));
 CHECK(!nvlist_exists_nvlist(nvl, "nvlist/bool"));
 CHECK(!nvlist_exists_descriptor(nvl, "nvlist/bool"));
 CHECK(!nvlist_exists_binary(nvl, "nvlist/bool"));
 nvlist_add_bool(nvl, "nvlist/bool", 1);
 CHECK(nvlist_error(nvl) == 0);
 CHECK(nvlist_exists(nvl, "nvlist/bool"));
 CHECK(!nvlist_exists_null(nvl, "nvlist/bool"));
 CHECK(nvlist_exists_bool(nvl, "nvlist/bool"));
 CHECK(!nvlist_exists_number(nvl, "nvlist/bool"));
 CHECK(!nvlist_exists_string(nvl, "nvlist/bool"));
 CHECK(!nvlist_exists_nvlist(nvl, "nvlist/bool"));
 CHECK(!nvlist_exists_descriptor(nvl, "nvlist/bool"));
 CHECK(!nvlist_exists_binary(nvl, "nvlist/bool"));

 CHECK(!nvlist_exists(nvl, "nvlist/number"));
 CHECK(!nvlist_exists_null(nvl, "nvlist/number"));
 CHECK(!nvlist_exists_bool(nvl, "nvlist/number"));
 CHECK(!nvlist_exists_number(nvl, "nvlist/number"));
 CHECK(!nvlist_exists_string(nvl, "nvlist/number"));
 CHECK(!nvlist_exists_nvlist(nvl, "nvlist/number"));
 CHECK(!nvlist_exists_descriptor(nvl, "nvlist/number"));
 CHECK(!nvlist_exists_binary(nvl, "nvlist/number"));
 nvlist_add_number(nvl, "nvlist/number", 0);
 CHECK(nvlist_error(nvl) == 0);
 CHECK(nvlist_exists(nvl, "nvlist/number"));
 CHECK(!nvlist_exists_null(nvl, "nvlist/number"));
 CHECK(!nvlist_exists_bool(nvl, "nvlist/number"));
 CHECK(nvlist_exists_number(nvl, "nvlist/number"));
 CHECK(!nvlist_exists_string(nvl, "nvlist/number"));
 CHECK(!nvlist_exists_nvlist(nvl, "nvlist/number"));
 CHECK(!nvlist_exists_descriptor(nvl, "nvlist/number"));
 CHECK(!nvlist_exists_binary(nvl, "nvlist/number"));

 CHECK(!nvlist_exists(nvl, "nvlist/string"));
 CHECK(!nvlist_exists_null(nvl, "nvlist/string"));
 CHECK(!nvlist_exists_bool(nvl, "nvlist/string"));
 CHECK(!nvlist_exists_number(nvl, "nvlist/string"));
 CHECK(!nvlist_exists_string(nvl, "nvlist/string"));
 CHECK(!nvlist_exists_nvlist(nvl, "nvlist/string"));
 CHECK(!nvlist_exists_descriptor(nvl, "nvlist/string"));
 CHECK(!nvlist_exists_binary(nvl, "nvlist/string"));
 nvlist_add_string(nvl, "nvlist/string", "test");
 CHECK(nvlist_error(nvl) == 0);
 CHECK(nvlist_exists(nvl, "nvlist/string"));
 CHECK(!nvlist_exists_null(nvl, "nvlist/string"));
 CHECK(!nvlist_exists_bool(nvl, "nvlist/string"));
 CHECK(!nvlist_exists_number(nvl, "nvlist/string"));
 CHECK(nvlist_exists_string(nvl, "nvlist/string"));
 CHECK(!nvlist_exists_nvlist(nvl, "nvlist/string"));
 CHECK(!nvlist_exists_descriptor(nvl, "nvlist/string"));
 CHECK(!nvlist_exists_binary(nvl, "nvlist/string"));

 CHECK(!nvlist_exists(nvl, "nvlist/nvlist"));
 CHECK(!nvlist_exists_null(nvl, "nvlist/nvlist"));
 CHECK(!nvlist_exists_bool(nvl, "nvlist/nvlist"));
 CHECK(!nvlist_exists_number(nvl, "nvlist/nvlist"));
 CHECK(!nvlist_exists_string(nvl, "nvlist/nvlist"));
 CHECK(!nvlist_exists_nvlist(nvl, "nvlist/nvlist"));
 CHECK(!nvlist_exists_descriptor(nvl, "nvlist/nvlist"));
 CHECK(!nvlist_exists_binary(nvl, "nvlist/nvlist"));
 nvlist_add_nvlist(nvl, "nvlist/nvlist", nvl);
 CHECK(nvlist_error(nvl) == 0);
 CHECK(nvlist_exists(nvl, "nvlist/nvlist"));
 CHECK(!nvlist_exists_null(nvl, "nvlist/nvlist"));
 CHECK(!nvlist_exists_bool(nvl, "nvlist/nvlist"));
 CHECK(!nvlist_exists_number(nvl, "nvlist/nvlist"));
 CHECK(!nvlist_exists_string(nvl, "nvlist/nvlist"));
 CHECK(nvlist_exists_nvlist(nvl, "nvlist/nvlist"));
 CHECK(!nvlist_exists_descriptor(nvl, "nvlist/nvlist"));
 CHECK(!nvlist_exists_binary(nvl, "nvlist/nvlist"));

 CHECK(!nvlist_exists(nvl, "nvlist/descriptor"));
 CHECK(!nvlist_exists_null(nvl, "nvlist/descriptor"));
 CHECK(!nvlist_exists_bool(nvl, "nvlist/descriptor"));
 CHECK(!nvlist_exists_number(nvl, "nvlist/descriptor"));
 CHECK(!nvlist_exists_string(nvl, "nvlist/descriptor"));
 CHECK(!nvlist_exists_nvlist(nvl, "nvlist/descriptor"));
 CHECK(!nvlist_exists_descriptor(nvl, "nvlist/descriptor"));
 CHECK(!nvlist_exists_binary(nvl, "nvlist/descriptor"));
 nvlist_add_descriptor(nvl, "nvlist/descriptor", STDERR_FILENO);
 CHECK(nvlist_error(nvl) == 0);
 CHECK(nvlist_exists(nvl, "nvlist/descriptor"));
 CHECK(!nvlist_exists_null(nvl, "nvlist/descriptor"));
 CHECK(!nvlist_exists_bool(nvl, "nvlist/descriptor"));
 CHECK(!nvlist_exists_number(nvl, "nvlist/descriptor"));
 CHECK(!nvlist_exists_string(nvl, "nvlist/descriptor"));
 CHECK(!nvlist_exists_nvlist(nvl, "nvlist/descriptor"));
 CHECK(nvlist_exists_descriptor(nvl, "nvlist/descriptor"));
 CHECK(!nvlist_exists_binary(nvl, "nvlist/descriptor"));

 CHECK(!nvlist_exists(nvl, "nvlist/binary"));
 CHECK(!nvlist_exists_null(nvl, "nvlist/binary"));
 CHECK(!nvlist_exists_bool(nvl, "nvlist/binary"));
 CHECK(!nvlist_exists_number(nvl, "nvlist/binary"));
 CHECK(!nvlist_exists_string(nvl, "nvlist/binary"));
 CHECK(!nvlist_exists_nvlist(nvl, "nvlist/binary"));
 CHECK(!nvlist_exists_descriptor(nvl, "nvlist/binary"));
 CHECK(!nvlist_exists_binary(nvl, "nvlist/binary"));
 nvlist_add_binary(nvl, "nvlist/binary", "test", 4);
 CHECK(nvlist_error(nvl) == 0);
 CHECK(nvlist_exists(nvl, "nvlist/binary"));
 CHECK(!nvlist_exists_null(nvl, "nvlist/binary"));
 CHECK(!nvlist_exists_bool(nvl, "nvlist/binary"));
 CHECK(!nvlist_exists_number(nvl, "nvlist/binary"));
 CHECK(!nvlist_exists_string(nvl, "nvlist/binary"));
 CHECK(!nvlist_exists_nvlist(nvl, "nvlist/binary"));
 CHECK(!nvlist_exists_descriptor(nvl, "nvlist/binary"));
 CHECK(nvlist_exists_binary(nvl, "nvlist/binary"));

 CHECK(nvlist_exists(nvl, "nvlist/null"));
 CHECK(nvlist_exists(nvl, "nvlist/bool"));
 CHECK(nvlist_exists(nvl, "nvlist/number"));
 CHECK(nvlist_exists(nvl, "nvlist/string"));
 CHECK(nvlist_exists(nvl, "nvlist/nvlist"));
 CHECK(nvlist_exists(nvl, "nvlist/descriptor"));
 CHECK(nvlist_exists(nvl, "nvlist/binary"));
 CHECK(nvlist_exists_null(nvl, "nvlist/null"));
 CHECK(nvlist_exists_bool(nvl, "nvlist/bool"));
 CHECK(nvlist_exists_number(nvl, "nvlist/number"));
 CHECK(nvlist_exists_string(nvl, "nvlist/string"));
 CHECK(nvlist_exists_nvlist(nvl, "nvlist/nvlist"));
 CHECK(nvlist_exists_descriptor(nvl, "nvlist/descriptor"));
 CHECK(nvlist_exists_binary(nvl, "nvlist/binary"));

 nvlist_free_null(nvl, "nvlist/null");
 CHECK(!nvlist_exists(nvl, "nvlist/null"));
 CHECK(nvlist_exists(nvl, "nvlist/bool"));
 CHECK(nvlist_exists(nvl, "nvlist/number"));
 CHECK(nvlist_exists(nvl, "nvlist/string"));
 CHECK(nvlist_exists(nvl, "nvlist/nvlist"));
 CHECK(nvlist_exists(nvl, "nvlist/descriptor"));
 CHECK(nvlist_exists(nvl, "nvlist/binary"));
 CHECK(!nvlist_exists_null(nvl, "nvlist/null"));
 CHECK(nvlist_exists_bool(nvl, "nvlist/bool"));
 CHECK(nvlist_exists_number(nvl, "nvlist/number"));
 CHECK(nvlist_exists_string(nvl, "nvlist/string"));
 CHECK(nvlist_exists_nvlist(nvl, "nvlist/nvlist"));
 CHECK(nvlist_exists_descriptor(nvl, "nvlist/descriptor"));
 CHECK(nvlist_exists_binary(nvl, "nvlist/binary"));

 nvlist_free_bool(nvl, "nvlist/bool");
 CHECK(!nvlist_exists(nvl, "nvlist/null"));
 CHECK(!nvlist_exists(nvl, "nvlist/bool"));
 CHECK(nvlist_exists(nvl, "nvlist/number"));
 CHECK(nvlist_exists(nvl, "nvlist/string"));
 CHECK(nvlist_exists(nvl, "nvlist/nvlist"));
 CHECK(nvlist_exists(nvl, "nvlist/descriptor"));
 CHECK(nvlist_exists(nvl, "nvlist/binary"));
 CHECK(!nvlist_exists_null(nvl, "nvlist/null"));
 CHECK(!nvlist_exists_bool(nvl, "nvlist/bool"));
 CHECK(nvlist_exists_number(nvl, "nvlist/number"));
 CHECK(nvlist_exists_string(nvl, "nvlist/string"));
 CHECK(nvlist_exists_nvlist(nvl, "nvlist/nvlist"));
 CHECK(nvlist_exists_descriptor(nvl, "nvlist/descriptor"));
 CHECK(nvlist_exists_binary(nvl, "nvlist/binary"));

 nvlist_free_number(nvl, "nvlist/number");
 CHECK(!nvlist_exists(nvl, "nvlist/null"));
 CHECK(!nvlist_exists(nvl, "nvlist/bool"));
 CHECK(!nvlist_exists(nvl, "nvlist/number"));
 CHECK(nvlist_exists(nvl, "nvlist/string"));
 CHECK(nvlist_exists(nvl, "nvlist/nvlist"));
 CHECK(nvlist_exists(nvl, "nvlist/descriptor"));
 CHECK(nvlist_exists(nvl, "nvlist/binary"));
 CHECK(!nvlist_exists_null(nvl, "nvlist/null"));
 CHECK(!nvlist_exists_bool(nvl, "nvlist/bool"));
 CHECK(!nvlist_exists_number(nvl, "nvlist/number"));
 CHECK(nvlist_exists_string(nvl, "nvlist/string"));
 CHECK(nvlist_exists_nvlist(nvl, "nvlist/nvlist"));
 CHECK(nvlist_exists_descriptor(nvl, "nvlist/descriptor"));
 CHECK(nvlist_exists_binary(nvl, "nvlist/binary"));

 nvlist_free_string(nvl, "nvlist/string");
 CHECK(!nvlist_exists(nvl, "nvlist/null"));
 CHECK(!nvlist_exists(nvl, "nvlist/bool"));
 CHECK(!nvlist_exists(nvl, "nvlist/number"));
 CHECK(!nvlist_exists(nvl, "nvlist/string"));
 CHECK(nvlist_exists(nvl, "nvlist/nvlist"));
 CHECK(nvlist_exists(nvl, "nvlist/descriptor"));
 CHECK(nvlist_exists(nvl, "nvlist/binary"));
 CHECK(!nvlist_exists_null(nvl, "nvlist/null"));
 CHECK(!nvlist_exists_bool(nvl, "nvlist/bool"));
 CHECK(!nvlist_exists_number(nvl, "nvlist/number"));
 CHECK(!nvlist_exists_string(nvl, "nvlist/string"));
 CHECK(nvlist_exists_nvlist(nvl, "nvlist/nvlist"));
 CHECK(nvlist_exists_descriptor(nvl, "nvlist/descriptor"));
 CHECK(nvlist_exists_binary(nvl, "nvlist/binary"));

 nvlist_free_nvlist(nvl, "nvlist/nvlist");
 CHECK(!nvlist_exists(nvl, "nvlist/null"));
 CHECK(!nvlist_exists(nvl, "nvlist/bool"));
 CHECK(!nvlist_exists(nvl, "nvlist/number"));
 CHECK(!nvlist_exists(nvl, "nvlist/string"));
 CHECK(!nvlist_exists(nvl, "nvlist/nvlist"));
 CHECK(nvlist_exists(nvl, "nvlist/descriptor"));
 CHECK(nvlist_exists(nvl, "nvlist/binary"));
 CHECK(!nvlist_exists_null(nvl, "nvlist/null"));
 CHECK(!nvlist_exists_bool(nvl, "nvlist/bool"));
 CHECK(!nvlist_exists_number(nvl, "nvlist/number"));
 CHECK(!nvlist_exists_string(nvl, "nvlist/string"));
 CHECK(!nvlist_exists_nvlist(nvl, "nvlist/nvlist"));
 CHECK(nvlist_exists_descriptor(nvl, "nvlist/descriptor"));
 CHECK(nvlist_exists_binary(nvl, "nvlist/binary"));

 nvlist_free_descriptor(nvl, "nvlist/descriptor");
 CHECK(!nvlist_exists(nvl, "nvlist/null"));
 CHECK(!nvlist_exists(nvl, "nvlist/bool"));
 CHECK(!nvlist_exists(nvl, "nvlist/number"));
 CHECK(!nvlist_exists(nvl, "nvlist/string"));
 CHECK(!nvlist_exists(nvl, "nvlist/nvlist"));
 CHECK(!nvlist_exists(nvl, "nvlist/descriptor"));
 CHECK(nvlist_exists(nvl, "nvlist/binary"));
 CHECK(!nvlist_exists_null(nvl, "nvlist/null"));
 CHECK(!nvlist_exists_bool(nvl, "nvlist/bool"));
 CHECK(!nvlist_exists_number(nvl, "nvlist/number"));
 CHECK(!nvlist_exists_string(nvl, "nvlist/string"));
 CHECK(!nvlist_exists_nvlist(nvl, "nvlist/nvlist"));
 CHECK(!nvlist_exists_descriptor(nvl, "nvlist/descriptor"));
 CHECK(nvlist_exists_binary(nvl, "nvlist/binary"));

 nvlist_free_binary(nvl, "nvlist/binary");
 CHECK(!nvlist_exists(nvl, "nvlist/null"));
 CHECK(!nvlist_exists(nvl, "nvlist/bool"));
 CHECK(!nvlist_exists(nvl, "nvlist/number"));
 CHECK(!nvlist_exists(nvl, "nvlist/string"));
 CHECK(!nvlist_exists(nvl, "nvlist/nvlist"));
 CHECK(!nvlist_exists(nvl, "nvlist/descriptor"));
 CHECK(!nvlist_exists(nvl, "nvlist/binary"));
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
