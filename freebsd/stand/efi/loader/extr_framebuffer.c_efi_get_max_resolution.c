
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct named_resolution {int width; int height; } ;


 scalar_t__ efi_resolution_compare (struct named_resolution*,char*) ;
 int free (char*) ;
 char* getenv (char*) ;
 int nitems (struct named_resolution*) ;
 struct named_resolution* resolutions ;
 char* strchr (char*,char) ;
 char* strdup (char*) ;
 scalar_t__ strtol (char*,int *,int ) ;

__attribute__((used)) static void
efi_get_max_resolution(int *width, int *height)
{
 struct named_resolution *res;
 char *maxres;
 char *height_start, *width_start;
 int idx;

 *width = *height = 0;
 maxres = getenv("efi_max_resolution");

 if (maxres == ((void*)0))
  return;

 for (idx = 0; idx < nitems(resolutions); ++idx) {
  res = &resolutions[idx];
  if (efi_resolution_compare(res, maxres)) {
   *width = res->width;
   *height = res->height;
   return;
  }
 }

 maxres = strdup(maxres);
 if (maxres == ((void*)0))
  return;
 height_start = strchr(maxres, 'x');
 if (height_start == ((void*)0)) {
  free(maxres);
  return;
 }
 width_start = maxres;
 *height_start++ = 0;

 *width = (int)strtol(width_start, ((void*)0), 0);
 *height = (int)strtol(height_start, ((void*)0), 0);
 free(maxres);
}
