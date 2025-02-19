
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct preloaded_file {size_t f_size; char* f_name; int f_addr; struct preloaded_file* f_next; } ;


 int COPYOUT (int ,void*,size_t) ;
 int fdt_check_overlay_compatible (void*,void*) ;
 int fdt_open_into (void*,void*,size_t) ;
 int fdt_overlay_apply (void*,void*) ;
 int fdt_overlays_applied ;
 char* fdt_strerror (int) ;
 void* fdtp ;
 size_t fdtp_size ;
 struct preloaded_file* file_findfile (int *,char*) ;
 int free (void*) ;
 void* malloc (size_t) ;
 int printf (char*,...) ;

void
fdt_apply_overlays()
{
 struct preloaded_file *fp;
 size_t max_overlay_size, next_fdtp_size;
 size_t current_fdtp_size;
 void *current_fdtp;
 void *next_fdtp;
 void *overlay;
 int rv;

 if ((fdtp == ((void*)0)) || (fdtp_size == 0))
  return;

 if (fdt_overlays_applied)
  return;

 max_overlay_size = 0;
 for (fp = file_findfile(((void*)0), "dtbo"); fp != ((void*)0); fp = fp->f_next) {
  if (max_overlay_size < fp->f_size)
   max_overlay_size = fp->f_size;
 }


 if (max_overlay_size == 0)
  return;

 overlay = malloc(max_overlay_size);
 if (overlay == ((void*)0)) {
  printf("failed to allocate memory for DTB blob with overlays\n");
  return;
 }
 current_fdtp = fdtp;
 current_fdtp_size = fdtp_size;
 for (fp = file_findfile(((void*)0), "dtbo"); fp != ((void*)0); fp = fp->f_next) {
  COPYOUT(fp->f_addr, overlay, fp->f_size);

  rv = fdt_check_overlay_compatible(current_fdtp, overlay);
  if (rv != 0) {
   printf("DTB overlay '%s' not compatible\n", fp->f_name);
   continue;
  }
  printf("applying DTB overlay '%s'\n", fp->f_name);
  next_fdtp_size = current_fdtp_size + fp->f_size;
  next_fdtp = malloc(next_fdtp_size);
  if (next_fdtp == ((void*)0)) {




   printf("failed to allocate memory for overlay base\n");
   continue;
  }
  rv = fdt_open_into(current_fdtp, next_fdtp, next_fdtp_size);
  if (rv != 0) {
   free(next_fdtp);
   printf("failed to open base dtb into overlay base\n");
   continue;
  }

  rv = fdt_overlay_apply(next_fdtp, overlay);
  if (rv == 0) {

   if (current_fdtp != fdtp)
    free(current_fdtp);
   current_fdtp = next_fdtp;
   current_fdtp_size = next_fdtp_size;
  } else {





   free(next_fdtp);
   printf("failed to apply overlay: %s\n",
       fdt_strerror(rv));
  }
 }

 if (current_fdtp != fdtp) {
  free(fdtp);
  fdtp = current_fdtp;
  fdtp_size = current_fdtp_size;
 }
 free(overlay);
 fdt_overlays_applied = 1;
}
