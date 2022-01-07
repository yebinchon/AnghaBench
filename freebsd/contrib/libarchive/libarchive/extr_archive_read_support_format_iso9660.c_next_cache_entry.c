
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {struct file_info** last; struct file_info* first; } ;
struct TYPE_9__ {scalar_t__ used; TYPE_3__** files; } ;
struct TYPE_6__ {int * first; } ;
struct iso9660 {scalar_t__ current_position; TYPE_5__ cache_files; TYPE_4__ pending_files; struct file_info* rr_moved; TYPE_1__ re_files; } ;
struct file_info {scalar_t__ cl_offset; scalar_t__ offset; int re_descendant; int mode; int number; int nlinks; struct file_info* next; scalar_t__ re; scalar_t__ rr_moved_has_re_only; scalar_t__ rr_moved; TYPE_2__* parent; } ;
struct archive_read {int archive; } ;
typedef int intmax_t ;
typedef int int64_t ;
struct TYPE_8__ {int number; } ;
struct TYPE_7__ {scalar_t__ re_descendant; int subdirs; } ;


 int AE_IFDIR ;
 int AE_IFMT ;
 int AE_IFREG ;
 int ARCHIVE_EOF ;
 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int archive_set_error (int *,int ,char*,int ,int ) ;
 int cache_add_entry (struct iso9660*,struct file_info*) ;
 struct file_info* cache_get_entry (struct iso9660*) ;
 struct file_info* next_entry (struct iso9660*) ;
 int re_add_entry (struct iso9660*,struct file_info*) ;
 struct file_info* re_get_entry (struct iso9660*) ;
 int read_children (struct archive_read*,struct file_info*) ;
 scalar_t__ rede_add_entry (struct file_info*) ;
 struct file_info* rede_get_entry (struct file_info*) ;

__attribute__((used)) static int
next_cache_entry(struct archive_read *a, struct iso9660 *iso9660,
    struct file_info **pfile)
{
 struct file_info *file;
 struct {
  struct file_info *first;
  struct file_info **last;
 } empty_files;
 int64_t number;
 int count;

 file = cache_get_entry(iso9660);
 if (file != ((void*)0)) {
  *pfile = file;
  return (ARCHIVE_OK);
 }

 for (;;) {
  struct file_info *re, *d;

  *pfile = file = next_entry(iso9660);
  if (file == ((void*)0)) {




   if (iso9660->re_files.first != ((void*)0) &&
       iso9660->rr_moved != ((void*)0) &&
       iso9660->rr_moved->rr_moved_has_re_only)

    cache_add_entry(iso9660, iso9660->rr_moved);
   while ((re = re_get_entry(iso9660)) != ((void*)0)) {

    while ((d = rede_get_entry(re)) != ((void*)0))
     cache_add_entry(iso9660, d);
   }
   if (iso9660->cache_files.first != ((void*)0))
    return (next_cache_entry(a, iso9660, pfile));
   return (ARCHIVE_EOF);
  }

  if (file->cl_offset) {
   struct file_info *first_re = ((void*)0);
   int nexted_re = 0;





   while ((re = re_get_entry(iso9660))
       != first_re) {
    if (first_re == ((void*)0))
     first_re = re;
    if (re->offset == file->cl_offset) {
     re->parent->subdirs--;
     re->parent = file->parent;
     re->re = 0;
     if (re->parent->re_descendant) {
      nexted_re = 1;
      re->re_descendant = 1;
      if (rede_add_entry(re) < 0)
       goto fatal_rr;


      while ((d = rede_get_entry(
          re)) != ((void*)0))
       if (rede_add_entry(d)
           < 0)
        goto fatal_rr;
      break;
     }


     *pfile = file = re;

     while ((d = rede_get_entry(
         file)) != ((void*)0))
      cache_add_entry(
          iso9660, d);
     break;
    } else
     re_add_entry(iso9660, re);
   }
   if (nexted_re) {





    continue;
   }
  } else if ((file->mode & AE_IFMT) == AE_IFDIR) {
   int r;


   r = read_children(a, file);
   if (r != ARCHIVE_OK)
    return (r);





   if (file->rr_moved) {




    if (file->rr_moved_has_re_only)
     continue;

   } else if (file->re) {





    re_add_entry(iso9660, file);
    continue;
   } else if (file->re_descendant) {






    if (rede_add_entry(file) == 0)
     continue;



   }
  }
  break;
 }

 if ((file->mode & AE_IFMT) != AE_IFREG || file->number == -1)
  return (ARCHIVE_OK);

 count = 0;
 number = file->number;
 iso9660->cache_files.first = ((void*)0);
 iso9660->cache_files.last = &(iso9660->cache_files.first);
 empty_files.first = ((void*)0);
 empty_files.last = &empty_files.first;



 while (iso9660->pending_files.used > 0 &&
     (iso9660->pending_files.files[0]->number == -1 ||
      iso9660->pending_files.files[0]->number == number)) {
  if (file->number == -1) {
   file->next = ((void*)0);
   *empty_files.last = file;
   empty_files.last = &(file->next);
  } else {
   count++;
   cache_add_entry(iso9660, file);
  }
  file = next_entry(iso9660);
 }

 if (count == 0) {
  *pfile = file;
  return ((file == ((void*)0))?ARCHIVE_EOF:ARCHIVE_OK);
 }
 if (file->number == -1) {
  file->next = ((void*)0);
  *empty_files.last = file;
  empty_files.last = &(file->next);
 } else {
  count++;
  cache_add_entry(iso9660, file);
 }

 if (count > 1) {




  for (file = iso9660->cache_files.first;
      file != ((void*)0); file = file->next)
   file->nlinks = count;
 }


 if (empty_files.first != ((void*)0)) {
  *iso9660->cache_files.last = empty_files.first;
  iso9660->cache_files.last = empty_files.last;
 }
 *pfile = cache_get_entry(iso9660);
 return ((*pfile == ((void*)0))?ARCHIVE_EOF:ARCHIVE_OK);

fatal_rr:
 archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
     "Failed to connect 'CL' pointer to 'RE' rr_moved pointer of "
     "Rockridge extensions: current position = %jd, CL offset = %jd",
     (intmax_t)iso9660->current_position, (intmax_t)file->cl_offset);
 return (ARCHIVE_FATAL);
}
