
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const nvlist_t ;


 int CHECK (int) ;
 int STDERR_FILENO ;
 int dup (int ) ;
 void* malloc (int) ;
 int memcpy (void*,char*,int) ;
 void* nvlist_clone (int const*) ;
 int const* nvlist_create (int ) ;
 int nvlist_destroy (int const*) ;
 scalar_t__ nvlist_error (int const*) ;
 int nvlist_exists_binary (int const*,char*) ;
 int nvlist_exists_descriptor (int const*,char*) ;
 int nvlist_exists_nvlist (int const*,char*) ;
 int nvlist_exists_string (int const*,char*) ;
 void* nvlist_get_binary (int const*,char*,size_t*) ;
 int nvlist_get_descriptor (int const*,char*) ;
 void* nvlist_get_nvlist (int const*,char*) ;
 void* nvlist_get_string (int const*,char*) ;
 int nvlist_move_binary (int const*,char*,void*,int) ;
 int nvlist_move_descriptor (int const*,char*,int) ;
 int nvlist_move_nvlist (int const*,char*,void*) ;
 int nvlist_move_string (int const*,char*,void*) ;
 int printf (char*) ;
 void* strdup (char*) ;

int
main(void)
{
 const nvlist_t *cnvl;
 nvlist_t *nvl;
 void *ptr;
 size_t size;
 int fd;

 printf("1..52\n");

 nvl = nvlist_create(0);

 CHECK(!nvlist_exists_string(nvl, "nvlist/string/"));
 ptr = strdup("");
 CHECK(ptr != ((void*)0));
 nvlist_move_string(nvl, "nvlist/string/", ptr);
 CHECK(nvlist_error(nvl) == 0);
 CHECK(nvlist_exists_string(nvl, "nvlist/string/"));
 CHECK(ptr == nvlist_get_string(nvl, "nvlist/string/"));

 CHECK(!nvlist_exists_string(nvl, "nvlist/string/x"));
 ptr = strdup("x");
 CHECK(ptr != ((void*)0));
 nvlist_move_string(nvl, "nvlist/string/x", ptr);
 CHECK(nvlist_error(nvl) == 0);
 CHECK(nvlist_exists_string(nvl, "nvlist/string/x"));
 CHECK(ptr == nvlist_get_string(nvl, "nvlist/string/x"));

 CHECK(!nvlist_exists_string(nvl,
     "nvlist/string/abcdefghijklmnopqrstuvwxyz"));
 ptr = strdup("abcdefghijklmnopqrstuvwxyz");
 CHECK(ptr != ((void*)0));
 nvlist_move_string(nvl, "nvlist/string/abcdefghijklmnopqrstuvwxyz",
     ptr);
 CHECK(nvlist_error(nvl) == 0);
 CHECK(nvlist_exists_string(nvl,
     "nvlist/string/abcdefghijklmnopqrstuvwxyz"));
 CHECK(ptr ==
     nvlist_get_string(nvl, "nvlist/string/abcdefghijklmnopqrstuvwxyz"));

 CHECK(!nvlist_exists_descriptor(nvl,
     "nvlist/descriptor/STDERR_FILENO"));
 fd = dup(STDERR_FILENO);
 CHECK(fd >= 0);
 nvlist_move_descriptor(nvl, "nvlist/descriptor/STDERR_FILENO", fd);
 CHECK(nvlist_error(nvl) == 0);
 CHECK(nvlist_exists_descriptor(nvl, "nvlist/descriptor/STDERR_FILENO"));
 CHECK(fd ==
     nvlist_get_descriptor(nvl, "nvlist/descriptor/STDERR_FILENO"));

 CHECK(!nvlist_exists_binary(nvl, "nvlist/binary/x"));
 ptr = malloc(1);
 CHECK(ptr != ((void*)0));
 memcpy(ptr, "x", 1);
 nvlist_move_binary(nvl, "nvlist/binary/x", ptr, 1);
 CHECK(nvlist_error(nvl) == 0);
 CHECK(nvlist_exists_binary(nvl, "nvlist/binary/x"));
 CHECK(ptr == nvlist_get_binary(nvl, "nvlist/binary/x", ((void*)0)));
 CHECK(ptr == nvlist_get_binary(nvl, "nvlist/binary/x", &size));
 CHECK(size == 1);

 CHECK(!nvlist_exists_binary(nvl,
     "nvlist/binary/abcdefghijklmnopqrstuvwxyz"));
 ptr = malloc(sizeof("abcdefghijklmnopqrstuvwxyz"));
 CHECK(ptr != ((void*)0));
 memcpy(ptr, "abcdefghijklmnopqrstuvwxyz",
     sizeof("abcdefghijklmnopqrstuvwxyz"));
 nvlist_move_binary(nvl, "nvlist/binary/abcdefghijklmnopqrstuvwxyz",
     ptr, sizeof("abcdefghijklmnopqrstuvwxyz"));
 CHECK(nvlist_error(nvl) == 0);
 CHECK(nvlist_exists_binary(nvl,
     "nvlist/binary/abcdefghijklmnopqrstuvwxyz"));
 CHECK(ptr == nvlist_get_binary(nvl,
     "nvlist/binary/abcdefghijklmnopqrstuvwxyz", ((void*)0)));
 CHECK(ptr == nvlist_get_binary(nvl,
     "nvlist/binary/abcdefghijklmnopqrstuvwxyz", &size));
 CHECK(size == sizeof("abcdefghijklmnopqrstuvwxyz"));

 CHECK(!nvlist_exists_nvlist(nvl, "nvlist/nvlist"));
 ptr = nvlist_clone(nvl);
 CHECK(ptr != ((void*)0));
 nvlist_move_nvlist(nvl, "nvlist/nvlist", ptr);
 CHECK(nvlist_error(nvl) == 0);
 CHECK(nvlist_exists_nvlist(nvl, "nvlist/nvlist"));
 CHECK(ptr == nvlist_get_nvlist(nvl, "nvlist/nvlist"));

 CHECK(nvlist_exists_string(nvl, "nvlist/string/"));
 CHECK(nvlist_exists_string(nvl, "nvlist/string/x"));
 CHECK(nvlist_exists_string(nvl,
     "nvlist/string/abcdefghijklmnopqrstuvwxyz"));
 CHECK(nvlist_exists_descriptor(nvl, "nvlist/descriptor/STDERR_FILENO"));
 CHECK(nvlist_exists_binary(nvl, "nvlist/binary/x"));
 CHECK(nvlist_exists_binary(nvl,
     "nvlist/binary/abcdefghijklmnopqrstuvwxyz"));
 CHECK(nvlist_exists_nvlist(nvl, "nvlist/nvlist"));

 cnvl = nvlist_get_nvlist(nvl, "nvlist/nvlist");
 CHECK(nvlist_exists_string(cnvl, "nvlist/string/"));
 CHECK(nvlist_exists_string(cnvl, "nvlist/string/x"));
 CHECK(nvlist_exists_string(cnvl,
     "nvlist/string/abcdefghijklmnopqrstuvwxyz"));
 CHECK(nvlist_exists_descriptor(cnvl,
     "nvlist/descriptor/STDERR_FILENO"));
 CHECK(nvlist_exists_binary(cnvl, "nvlist/binary/x"));
 CHECK(nvlist_exists_binary(cnvl,
     "nvlist/binary/abcdefghijklmnopqrstuvwxyz"));

 nvlist_destroy(nvl);

 return (0);
}
