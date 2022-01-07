
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const nvlist_t ;
typedef int int64_t ;


 int CHECK (int) ;
 int INT64_MAX ;
 int INT64_MIN ;
 int STDERR_FILENO ;
 int UINT64_MAX ;
 int fd_is_valid (int ) ;
 scalar_t__ memcmp (int ,char*,int) ;
 int nvlist_add_binary (int const*,char*,char*,int) ;
 int nvlist_add_bool (int const*,char*,int) ;
 int nvlist_add_descriptor (int const*,char*,int ) ;
 int nvlist_add_number (int const*,char*,int) ;
 int nvlist_add_nvlist (int const*,char*,int const*) ;
 int nvlist_add_string (int const*,char*,char*) ;
 int const* nvlist_create (int ) ;
 int nvlist_destroy (int const*) ;
 scalar_t__ nvlist_error (int const*) ;
 int nvlist_exists_binary (int const*,char*) ;
 int nvlist_exists_bool (int const*,char*) ;
 int nvlist_exists_descriptor (int const*,char*) ;
 int nvlist_exists_number (int const*,char*) ;
 int nvlist_exists_nvlist (int const*,char*) ;
 int nvlist_exists_string (int const*,char*) ;
 int nvlist_get_binary (int const*,char*,size_t*) ;
 int nvlist_get_bool (int const*,char*) ;
 int nvlist_get_descriptor (int const*,char*) ;
 int nvlist_get_number (int const*,char*) ;
 int const* nvlist_get_nvlist (int const*,char*) ;
 int nvlist_get_string (int const*,char*) ;
 int printf (char*) ;
 scalar_t__ strcmp (int ,char*) ;

int
main(void)
{
 const nvlist_t *cnvl;
 nvlist_t *nvl;
 size_t size;

 printf("1..83\n");

 nvl = nvlist_create(0);

 CHECK(!nvlist_exists_bool(nvl, "nvlist/bool/true"));
 nvlist_add_bool(nvl, "nvlist/bool/true", 1);
 CHECK(nvlist_error(nvl) == 0);
 CHECK(nvlist_get_bool(nvl, "nvlist/bool/true") == 1);

 CHECK(!nvlist_exists_bool(nvl, "nvlist/bool/false"));
 nvlist_add_bool(nvl, "nvlist/bool/false", 0);
 CHECK(nvlist_error(nvl) == 0);
 CHECK(nvlist_get_bool(nvl, "nvlist/bool/false") == 0);

 CHECK(!nvlist_exists_number(nvl, "nvlist/number/0"));
 nvlist_add_number(nvl, "nvlist/number/0", 0);
 CHECK(nvlist_error(nvl) == 0);
 CHECK(nvlist_get_number(nvl, "nvlist/number/0") == 0);

 CHECK(!nvlist_exists_number(nvl, "nvlist/number/1"));
 nvlist_add_number(nvl, "nvlist/number/1", 1);
 CHECK(nvlist_error(nvl) == 0);
 CHECK(nvlist_get_number(nvl, "nvlist/number/1") == 1);

 CHECK(!nvlist_exists_number(nvl, "nvlist/number/-1"));
 nvlist_add_number(nvl, "nvlist/number/-1", -1);
 CHECK(nvlist_error(nvl) == 0);
 CHECK((int)nvlist_get_number(nvl, "nvlist/number/-1") == -1);

 CHECK(!nvlist_exists_number(nvl, "nvlist/number/UINT64_MAX"));
 nvlist_add_number(nvl, "nvlist/number/UINT64_MAX", UINT64_MAX);
 CHECK(nvlist_error(nvl) == 0);
 CHECK(nvlist_get_number(nvl, "nvlist/number/UINT64_MAX") == UINT64_MAX);

 CHECK(!nvlist_exists_number(nvl, "nvlist/number/INT64_MIN"));
 nvlist_add_number(nvl, "nvlist/number/INT64_MIN", INT64_MIN);
 CHECK(nvlist_error(nvl) == 0);
 CHECK((int64_t)nvlist_get_number(nvl, "nvlist/number/INT64_MIN") == INT64_MIN);

 CHECK(!nvlist_exists_number(nvl, "nvlist/number/INT64_MAX"));
 nvlist_add_number(nvl, "nvlist/number/INT64_MAX", INT64_MAX);
 CHECK(nvlist_error(nvl) == 0);
 CHECK((int64_t)nvlist_get_number(nvl, "nvlist/number/INT64_MAX") == INT64_MAX);

 CHECK(!nvlist_exists_string(nvl, "nvlist/string/"));
 nvlist_add_string(nvl, "nvlist/string/", "");
 CHECK(nvlist_error(nvl) == 0);
 CHECK(strcmp(nvlist_get_string(nvl, "nvlist/string/"), "") == 0);

 CHECK(!nvlist_exists_string(nvl, "nvlist/string/x"));
 nvlist_add_string(nvl, "nvlist/string/x", "x");
 CHECK(nvlist_error(nvl) == 0);
 CHECK(strcmp(nvlist_get_string(nvl, "nvlist/string/x"), "x") == 0);

 CHECK(!nvlist_exists_string(nvl, "nvlist/string/abcdefghijklmnopqrstuvwxyz"));
 nvlist_add_string(nvl, "nvlist/string/abcdefghijklmnopqrstuvwxyz", "abcdefghijklmnopqrstuvwxyz");
 CHECK(nvlist_error(nvl) == 0);
 CHECK(strcmp(nvlist_get_string(nvl, "nvlist/string/abcdefghijklmnopqrstuvwxyz"), "abcdefghijklmnopqrstuvwxyz") == 0);

 CHECK(!nvlist_exists_descriptor(nvl, "nvlist/descriptor/STDERR_FILENO"));
 nvlist_add_descriptor(nvl, "nvlist/descriptor/STDERR_FILENO", STDERR_FILENO);
 CHECK(nvlist_error(nvl) == 0);
 CHECK(fd_is_valid(nvlist_get_descriptor(nvl, "nvlist/descriptor/STDERR_FILENO")));

 CHECK(!nvlist_exists_binary(nvl, "nvlist/binary/x"));
 nvlist_add_binary(nvl, "nvlist/binary/x", "x", 1);
 CHECK(nvlist_error(nvl) == 0);
 CHECK(memcmp(nvlist_get_binary(nvl, "nvlist/binary/x", ((void*)0)), "x", 1) == 0);
 CHECK(memcmp(nvlist_get_binary(nvl, "nvlist/binary/x", &size), "x", 1) == 0);
 CHECK(size == 1);

 CHECK(!nvlist_exists_binary(nvl, "nvlist/binary/abcdefghijklmnopqrstuvwxyz"));
 nvlist_add_binary(nvl, "nvlist/binary/abcdefghijklmnopqrstuvwxyz", "abcdefghijklmnopqrstuvwxyz", sizeof("abcdefghijklmnopqrstuvwxyz"));
 CHECK(nvlist_error(nvl) == 0);
 CHECK(memcmp(nvlist_get_binary(nvl, "nvlist/binary/abcdefghijklmnopqrstuvwxyz", ((void*)0)), "abcdefghijklmnopqrstuvwxyz", sizeof("abcdefghijklmnopqrstuvwxyz")) == 0);
 CHECK(memcmp(nvlist_get_binary(nvl, "nvlist/binary/abcdefghijklmnopqrstuvwxyz", &size), "abcdefghijklmnopqrstuvwxyz", sizeof("abcdefghijklmnopqrstuvwxyz")) == 0);
 CHECK(size == sizeof("abcdefghijklmnopqrstuvwxyz"));

 CHECK(!nvlist_exists_nvlist(nvl, "nvlist/nvlist"));
 nvlist_add_nvlist(nvl, "nvlist/nvlist", nvl);
 CHECK(nvlist_error(nvl) == 0);
 cnvl = nvlist_get_nvlist(nvl, "nvlist/nvlist");
 CHECK(nvlist_get_bool(cnvl, "nvlist/bool/true") == 1);
 CHECK(nvlist_get_bool(cnvl, "nvlist/bool/false") == 0);
 CHECK(nvlist_get_number(cnvl, "nvlist/number/0") == 0);
 CHECK(nvlist_get_number(cnvl, "nvlist/number/1") == 1);
 CHECK((int)nvlist_get_number(cnvl, "nvlist/number/-1") == -1);
 CHECK(nvlist_get_number(cnvl, "nvlist/number/UINT64_MAX") == UINT64_MAX);
 CHECK((int64_t)nvlist_get_number(cnvl, "nvlist/number/INT64_MIN") == INT64_MIN);
 CHECK((int64_t)nvlist_get_number(cnvl, "nvlist/number/INT64_MAX") == INT64_MAX);
 CHECK(strcmp(nvlist_get_string(cnvl, "nvlist/string/"), "") == 0);
 CHECK(strcmp(nvlist_get_string(cnvl, "nvlist/string/x"), "x") == 0);
 CHECK(strcmp(nvlist_get_string(cnvl, "nvlist/string/abcdefghijklmnopqrstuvwxyz"), "abcdefghijklmnopqrstuvwxyz") == 0);

 CHECK(memcmp(nvlist_get_binary(cnvl, "nvlist/binary/x", ((void*)0)), "x", 1) == 0);
 CHECK(memcmp(nvlist_get_binary(cnvl, "nvlist/binary/x", &size), "x", 1) == 0);
 CHECK(size == 1);
 CHECK(memcmp(nvlist_get_binary(cnvl, "nvlist/binary/abcdefghijklmnopqrstuvwxyz", ((void*)0)), "abcdefghijklmnopqrstuvwxyz", sizeof("abcdefghijklmnopqrstuvwxyz")) == 0);
 CHECK(memcmp(nvlist_get_binary(cnvl, "nvlist/binary/abcdefghijklmnopqrstuvwxyz", &size), "abcdefghijklmnopqrstuvwxyz", sizeof("abcdefghijklmnopqrstuvwxyz")) == 0);
 CHECK(size == sizeof("abcdefghijklmnopqrstuvwxyz"));

 CHECK(nvlist_get_bool(nvl, "nvlist/bool/true") == 1);
 CHECK(nvlist_get_bool(nvl, "nvlist/bool/false") == 0);
 CHECK(nvlist_get_number(nvl, "nvlist/number/0") == 0);
 CHECK(nvlist_get_number(nvl, "nvlist/number/1") == 1);
 CHECK((int)nvlist_get_number(nvl, "nvlist/number/-1") == -1);
 CHECK(nvlist_get_number(nvl, "nvlist/number/UINT64_MAX") == UINT64_MAX);
 CHECK((int64_t)nvlist_get_number(nvl, "nvlist/number/INT64_MIN") == INT64_MIN);
 CHECK((int64_t)nvlist_get_number(nvl, "nvlist/number/INT64_MAX") == INT64_MAX);
 CHECK(strcmp(nvlist_get_string(nvl, "nvlist/string/"), "") == 0);
 CHECK(strcmp(nvlist_get_string(nvl, "nvlist/string/x"), "x") == 0);
 CHECK(strcmp(nvlist_get_string(nvl, "nvlist/string/abcdefghijklmnopqrstuvwxyz"), "abcdefghijklmnopqrstuvwxyz") == 0);
 CHECK(fd_is_valid(nvlist_get_descriptor(nvl, "nvlist/descriptor/STDERR_FILENO")));
 CHECK(memcmp(nvlist_get_binary(nvl, "nvlist/binary/x", ((void*)0)), "x", 1) == 0);
 CHECK(memcmp(nvlist_get_binary(nvl, "nvlist/binary/x", &size), "x", 1) == 0);
 CHECK(size == 1);
 CHECK(memcmp(nvlist_get_binary(nvl, "nvlist/binary/abcdefghijklmnopqrstuvwxyz", ((void*)0)), "abcdefghijklmnopqrstuvwxyz", sizeof("abcdefghijklmnopqrstuvwxyz")) == 0);
 CHECK(memcmp(nvlist_get_binary(nvl, "nvlist/binary/abcdefghijklmnopqrstuvwxyz", &size), "abcdefghijklmnopqrstuvwxyz", sizeof("abcdefghijklmnopqrstuvwxyz")) == 0);
 CHECK(size == sizeof("abcdefghijklmnopqrstuvwxyz"));

 nvlist_destroy(nvl);

 return (0);
}
