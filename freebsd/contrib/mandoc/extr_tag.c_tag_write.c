
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tag_entry {scalar_t__ prio; size_t nlines; char* s; struct tag_entry* lines; } ;
struct TYPE_2__ {int tfd; char* ofn; char* tfn; int * tagname; } ;
typedef int FILE ;


 int MANDOCERR_FDOPEN ;
 int MANDOCERR_TAG ;
 int close (int) ;
 int errno ;
 int fclose (int *) ;
 int * fdopen (int,char*) ;
 int fprintf (int *,char*,char*,char*,struct tag_entry) ;
 int free (struct tag_entry*) ;
 int mandoc_msg (int ,int ,int ,char*,int *) ;
 int ohash_delete (int *) ;
 int * ohash_find (int *,int ) ;
 struct tag_entry* ohash_first (int *,unsigned int*) ;
 struct tag_entry* ohash_next (int *,unsigned int*) ;
 int ohash_qlookup (int *,int *) ;
 int * strerror (int ) ;
 int tag_data ;
 TYPE_1__ tag_files ;
 int unlink (char*) ;

void
tag_write(void)
{
 FILE *stream;
 struct tag_entry *entry;
 size_t i;
 unsigned int slot;
 int empty;

 if (tag_files.tfd <= 0)
  return;
 if (tag_files.tagname != ((void*)0) && ohash_find(&tag_data,
            ohash_qlookup(&tag_data, tag_files.tagname)) == ((void*)0)) {
  mandoc_msg(MANDOCERR_TAG, 0, 0, "%s", tag_files.tagname);
  tag_files.tagname = ((void*)0);
 }
 if ((stream = fdopen(tag_files.tfd, "w")) == ((void*)0))
  mandoc_msg(MANDOCERR_FDOPEN, 0, 0, "%s", strerror(errno));
 empty = 1;
 entry = ohash_first(&tag_data, &slot);
 while (entry != ((void*)0)) {
  if (stream != ((void*)0) && entry->prio >= 0) {
   for (i = 0; i < entry->nlines; i++) {
    fprintf(stream, "%s %s %zu\n",
        entry->s, tag_files.ofn, entry->lines[i]);
    empty = 0;
   }
  }
  free(entry->lines);
  free(entry);
  entry = ohash_next(&tag_data, &slot);
 }
 ohash_delete(&tag_data);
 if (stream != ((void*)0))
  fclose(stream);
 else
  close(tag_files.tfd);
 tag_files.tfd = -1;
 if (empty) {
  unlink(tag_files.tfn);
  *tag_files.tfn = '\0';
 }
}
