
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zip {size_t central_directory_bytes; struct cd_segment* central_directory_last; struct cd_segment* central_directory; } ;
struct cd_segment {scalar_t__ p; scalar_t__ buff; scalar_t__ buff_size; struct cd_segment* next; } ;


 struct cd_segment* calloc (int,int) ;
 int free (struct cd_segment*) ;
 unsigned char* malloc (int) ;

__attribute__((used)) static unsigned char *
cd_alloc(struct zip *zip, size_t length)
{
 unsigned char *p;

 if (zip->central_directory == ((void*)0)
     || (zip->central_directory_last->p + length
  > zip->central_directory_last->buff + zip->central_directory_last->buff_size)) {
  struct cd_segment *segment = calloc(1, sizeof(*segment));
  if (segment == ((void*)0))
   return ((void*)0);
  segment->buff_size = 64 * 1024;
  segment->buff = malloc(segment->buff_size);
  if (segment->buff == ((void*)0)) {
   free(segment);
   return ((void*)0);
  }
  segment->p = segment->buff;

  if (zip->central_directory == ((void*)0)) {
   zip->central_directory
       = zip->central_directory_last
       = segment;
  } else {
   zip->central_directory_last->next = segment;
   zip->central_directory_last = segment;
  }
 }

 p = zip->central_directory_last->p;
 zip->central_directory_last->p += length;
 zip->central_directory_bytes += length;
 return (p);
}
