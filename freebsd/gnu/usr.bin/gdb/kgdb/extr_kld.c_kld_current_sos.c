
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct so_list {char* so_original_name; char* so_name; struct so_list* next; TYPE_1__* lm_info; } ;
struct TYPE_2__ {scalar_t__ base_address; } ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ find_kld_path (char*,char*,int) ;
 int free_so (struct so_list*) ;
 scalar_t__ kernel_file_addr ;
 scalar_t__ linker_files_addr ;
 int memset (struct so_list*,int ,int) ;
 scalar_t__ off_address ;
 scalar_t__ off_filename ;
 scalar_t__ off_next ;
 scalar_t__ off_pathname ;
 scalar_t__ read_pointer (scalar_t__) ;
 char* safe_strerror (int) ;
 int strlcpy (char*,char*,int) ;
 int target_read_string (scalar_t__,char**,int,int*) ;
 int warning (char*,char*,...) ;
 int xfree (char*) ;
 void* xmalloc (int) ;

__attribute__((used)) static struct so_list *
kld_current_sos (void)
{
 struct so_list *head, **prev, *new;
 CORE_ADDR kld, kernel;
 char *path;
 int error;

 if (linker_files_addr == 0 || kernel_file_addr == 0 ||
     off_address == 0 || off_filename == 0 || off_next == 0)
  return (((void*)0));

 head = ((void*)0);
 prev = &head;





 kernel = read_pointer(kernel_file_addr);
 for (kld = read_pointer(linker_files_addr); kld != 0;
      kld = read_pointer(kld + off_next)) {

  if (kld == kernel)
   continue;

  new = xmalloc(sizeof(*new));
  memset(new, 0, sizeof(*new));

  new->lm_info = xmalloc(sizeof(*new->lm_info));
  new->lm_info->base_address = 0;


  target_read_string(read_pointer(kld + off_filename),
      &path, sizeof(new->so_original_name), &error);
  if (error != 0) {
   warning("kld_current_sos: Can't read filename: %s\n",
       safe_strerror(error));
   free_so(new);
   continue;
  }
  strlcpy(new->so_original_name, path,
      sizeof(new->so_original_name));
  xfree(path);





  if (find_kld_path(new->so_original_name, new->so_name,
      sizeof(new->so_name))) {
                         ;
  } else if (off_pathname != 0) {
   target_read_string(read_pointer(kld + off_pathname),
       &path, sizeof(new->so_name), &error);
   if (error != 0) {
    warning(
      "kld_current_sos: Can't read pathname for \"%s\": %s\n",
        new->so_original_name,
        safe_strerror(error));
    strlcpy(new->so_name, new->so_original_name,
        sizeof(new->so_name));
   } else {
    strlcpy(new->so_name, path,
        sizeof(new->so_name));
    xfree(path);
   }
  } else
   strlcpy(new->so_name, new->so_original_name,
       sizeof(new->so_name));


  new->lm_info->base_address = read_pointer(kld + off_address);
  if (new->lm_info->base_address == 0) {
   warning(
       "kld_current_sos: Invalid address for kld \"%s\"",
       new->so_original_name);
   free_so(new);
   continue;
  }


  *prev = new;
  prev = &new->next;
 }

 return (head);
}
