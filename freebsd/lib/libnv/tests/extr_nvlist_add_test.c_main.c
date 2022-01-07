
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const nvlist_t ;


 int CHECK (int) ;
 int INT64_MAX ;
 int INT64_MIN ;
 int STDERR_FILENO ;
 int UINT64_MAX ;
 int nvlist_add_binary (int const*,char*,char*,int) ;
 int nvlist_add_bool (int const*,char*,int) ;
 int nvlist_add_descriptor (int const*,char*,int ) ;
 int nvlist_add_null (int const*,char*) ;
 int nvlist_add_number (int const*,char*,int) ;
 int nvlist_add_nvlist (int const*,char*,int const*) ;
 int nvlist_add_string (int const*,char*,char*) ;
 int nvlist_add_stringf (int const*,char*,char*,...) ;
 int const* nvlist_create (int ) ;
 int nvlist_destroy (int const*) ;
 scalar_t__ nvlist_error (int const*) ;
 int nvlist_exists_binary (int const*,char*) ;
 int nvlist_exists_bool (int const*,char*) ;
 int nvlist_exists_descriptor (int const*,char*) ;
 int nvlist_exists_null (int const*,char*) ;
 int nvlist_exists_number (int const*,char*) ;
 int nvlist_exists_nvlist (int const*,char*) ;
 int nvlist_exists_string (int const*,char*) ;
 int const* nvlist_get_nvlist (int const*,char*) ;
 int printf (char*) ;

int
main(void)
{
 const nvlist_t *cnvl;
 nvlist_t *nvl;

 printf("1..94\n");

 nvl = nvlist_create(0);

 CHECK(!nvlist_exists_null(nvl, "nvlist/null"));
 nvlist_add_null(nvl, "nvlist/null");
 CHECK(nvlist_error(nvl) == 0);
 CHECK(nvlist_exists_null(nvl, "nvlist/null"));

 CHECK(!nvlist_exists_bool(nvl, "nvlist/bool/true"));
 nvlist_add_bool(nvl, "nvlist/bool/true", 1);
 CHECK(nvlist_error(nvl) == 0);
 CHECK(nvlist_exists_bool(nvl, "nvlist/bool/true"));

 CHECK(!nvlist_exists_bool(nvl, "nvlist/bool/false"));
 nvlist_add_bool(nvl, "nvlist/bool/false", 0);
 CHECK(nvlist_error(nvl) == 0);
 CHECK(nvlist_exists_bool(nvl, "nvlist/bool/false"));

 CHECK(!nvlist_exists_number(nvl, "nvlist/number/0"));
 nvlist_add_number(nvl, "nvlist/number/0", 0);
 CHECK(nvlist_error(nvl) == 0);
 CHECK(nvlist_exists_number(nvl, "nvlist/number/0"));

 CHECK(!nvlist_exists_number(nvl, "nvlist/number/1"));
 nvlist_add_number(nvl, "nvlist/number/1", 1);
 CHECK(nvlist_error(nvl) == 0);
 CHECK(nvlist_exists_number(nvl, "nvlist/number/1"));

 CHECK(!nvlist_exists_number(nvl, "nvlist/number/-1"));
 nvlist_add_number(nvl, "nvlist/number/-1", -1);
 CHECK(nvlist_error(nvl) == 0);
 CHECK(nvlist_exists_number(nvl, "nvlist/number/-1"));

 CHECK(!nvlist_exists_number(nvl, "nvlist/number/UINT64_MAX"));
 nvlist_add_number(nvl, "nvlist/number/UINT64_MAX", UINT64_MAX);
 CHECK(nvlist_error(nvl) == 0);
 CHECK(nvlist_exists_number(nvl, "nvlist/number/UINT64_MAX"));

 CHECK(!nvlist_exists_number(nvl, "nvlist/number/INT64_MIN"));
 nvlist_add_number(nvl, "nvlist/number/INT64_MIN", INT64_MIN);
 CHECK(nvlist_error(nvl) == 0);
 CHECK(nvlist_exists_number(nvl, "nvlist/number/INT64_MIN"));

 CHECK(!nvlist_exists_number(nvl, "nvlist/number/INT64_MAX"));
 nvlist_add_number(nvl, "nvlist/number/INT64_MAX", INT64_MAX);
 CHECK(nvlist_error(nvl) == 0);
 CHECK(nvlist_exists_number(nvl, "nvlist/number/INT64_MAX"));

 CHECK(!nvlist_exists_string(nvl, "nvlist/string/"));
 nvlist_add_string(nvl, "nvlist/string/", "");
 CHECK(nvlist_error(nvl) == 0);
 CHECK(nvlist_exists_string(nvl, "nvlist/string/"));

 CHECK(!nvlist_exists_string(nvl, "nvlist/string/x"));
 nvlist_add_string(nvl, "nvlist/string/x", "x");
 CHECK(nvlist_error(nvl) == 0);
 CHECK(nvlist_exists_string(nvl, "nvlist/string/x"));

 CHECK(!nvlist_exists_string(nvl, "nvlist/string/abcdefghijklmnopqrstuvwxyz"));
 nvlist_add_string(nvl, "nvlist/string/abcdefghijklmnopqrstuvwxyz", "abcdefghijklmnopqrstuvwxyz");
 CHECK(nvlist_error(nvl) == 0);
 CHECK(nvlist_exists_string(nvl, "nvlist/string/abcdefghijklmnopqrstuvwxyz"));

 CHECK(!nvlist_exists_string(nvl, "nvlist/stringf/"));
 nvlist_add_stringf(nvl, "nvlist/stringf/", "%s", "");
 CHECK(nvlist_error(nvl) == 0);
 CHECK(nvlist_exists_string(nvl, "nvlist/stringf/"));

 CHECK(!nvlist_exists_string(nvl, "nvlist/stringf/x"));
 nvlist_add_stringf(nvl, "nvlist/stringf/x", "%s", "x");
 CHECK(nvlist_error(nvl) == 0);
 CHECK(nvlist_exists_string(nvl, "nvlist/stringf/x"));

 CHECK(!nvlist_exists_string(nvl, "nvlist/stringf/666Xabc"));
 nvlist_add_stringf(nvl, "nvlist/stringf/666Xabc", "%d%c%s", 666, 'X', "abc");
 CHECK(nvlist_error(nvl) == 0);
 CHECK(nvlist_exists_string(nvl, "nvlist/stringf/666Xabc"));

 CHECK(!nvlist_exists_descriptor(nvl, "nvlist/descriptor/STDERR_FILENO"));
 nvlist_add_descriptor(nvl, "nvlist/descriptor/STDERR_FILENO", STDERR_FILENO);
 CHECK(nvlist_error(nvl) == 0);
 CHECK(nvlist_exists_descriptor(nvl, "nvlist/descriptor/STDERR_FILENO"));

 CHECK(!nvlist_exists_binary(nvl, "nvlist/binary/x"));
 nvlist_add_binary(nvl, "nvlist/binary/x", "x", 1);
 CHECK(nvlist_error(nvl) == 0);
 CHECK(nvlist_exists_binary(nvl, "nvlist/binary/x"));

 CHECK(!nvlist_exists_binary(nvl, "nvlist/binary/abcdefghijklmnopqrstuvwxyz"));
 nvlist_add_binary(nvl, "nvlist/binary/abcdefghijklmnopqrstuvwxyz", "abcdefghijklmnopqrstuvwxyz", sizeof("abcdefghijklmnopqrstuvwxyz"));
 CHECK(nvlist_error(nvl) == 0);
 CHECK(nvlist_exists_binary(nvl, "nvlist/binary/abcdefghijklmnopqrstuvwxyz"));

 CHECK(!nvlist_exists_nvlist(nvl, "nvlist/nvlist"));
 nvlist_add_nvlist(nvl, "nvlist/nvlist", nvl);
 CHECK(nvlist_error(nvl) == 0);
 CHECK(nvlist_exists_nvlist(nvl, "nvlist/nvlist"));

 CHECK(nvlist_exists_null(nvl, "nvlist/null"));
 CHECK(nvlist_exists_bool(nvl, "nvlist/bool/true"));
 CHECK(nvlist_exists_bool(nvl, "nvlist/bool/false"));
 CHECK(nvlist_exists_number(nvl, "nvlist/number/0"));
 CHECK(nvlist_exists_number(nvl, "nvlist/number/1"));
 CHECK(nvlist_exists_number(nvl, "nvlist/number/-1"));
 CHECK(nvlist_exists_number(nvl, "nvlist/number/UINT64_MAX"));
 CHECK(nvlist_exists_number(nvl, "nvlist/number/INT64_MIN"));
 CHECK(nvlist_exists_number(nvl, "nvlist/number/INT64_MAX"));
 CHECK(nvlist_exists_string(nvl, "nvlist/string/"));
 CHECK(nvlist_exists_string(nvl, "nvlist/string/x"));
 CHECK(nvlist_exists_string(nvl, "nvlist/string/abcdefghijklmnopqrstuvwxyz"));
 CHECK(nvlist_exists_string(nvl, "nvlist/stringf/"));
 CHECK(nvlist_exists_string(nvl, "nvlist/stringf/x"));
 CHECK(nvlist_exists_string(nvl, "nvlist/stringf/666Xabc"));
 CHECK(nvlist_exists_descriptor(nvl, "nvlist/descriptor/STDERR_FILENO"));
 CHECK(nvlist_exists_binary(nvl, "nvlist/binary/x"));
 CHECK(nvlist_exists_binary(nvl, "nvlist/binary/abcdefghijklmnopqrstuvwxyz"));
 CHECK(nvlist_exists_nvlist(nvl, "nvlist/nvlist"));

 cnvl = nvlist_get_nvlist(nvl, "nvlist/nvlist");
 CHECK(nvlist_exists_null(cnvl, "nvlist/null"));
 CHECK(nvlist_exists_bool(cnvl, "nvlist/bool/true"));
 CHECK(nvlist_exists_bool(cnvl, "nvlist/bool/false"));
 CHECK(nvlist_exists_number(cnvl, "nvlist/number/0"));
 CHECK(nvlist_exists_number(cnvl, "nvlist/number/1"));
 CHECK(nvlist_exists_number(cnvl, "nvlist/number/-1"));
 CHECK(nvlist_exists_number(cnvl, "nvlist/number/UINT64_MAX"));
 CHECK(nvlist_exists_number(cnvl, "nvlist/number/INT64_MIN"));
 CHECK(nvlist_exists_number(cnvl, "nvlist/number/INT64_MAX"));
 CHECK(nvlist_exists_string(cnvl, "nvlist/string/"));
 CHECK(nvlist_exists_string(cnvl, "nvlist/string/x"));
 CHECK(nvlist_exists_string(cnvl, "nvlist/string/abcdefghijklmnopqrstuvwxyz"));
 CHECK(nvlist_exists_string(cnvl, "nvlist/stringf/"));
 CHECK(nvlist_exists_string(cnvl, "nvlist/stringf/x"));
 CHECK(nvlist_exists_string(cnvl, "nvlist/stringf/666Xabc"));
 CHECK(nvlist_exists_descriptor(cnvl, "nvlist/descriptor/STDERR_FILENO"));
 CHECK(nvlist_exists_binary(cnvl, "nvlist/binary/x"));
 CHECK(nvlist_exists_binary(cnvl, "nvlist/binary/abcdefghijklmnopqrstuvwxyz"));

 nvlist_destroy(nvl);

 return (0);
}
