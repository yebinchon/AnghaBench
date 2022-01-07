
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lafe_line_reader {char* line_end; char* buff_end; char* line_start; char* buff; int buff_length; int * f; int pathname; scalar_t__ nullSeparator; } ;


 int ENOMEM ;
 int errno ;
 int fclose (int *) ;
 scalar_t__ feof (int *) ;
 scalar_t__ ferror (int *) ;
 size_t fread (char*,int,size_t,int *) ;
 int lafe_errc (int,int ,char*,int ) ;
 int lafe_line_reader_find_eol (struct lafe_line_reader*) ;
 int memmove (char*,char*,int) ;
 char* realloc (char*,size_t) ;
 int * stdin ;

const char *
lafe_line_reader_next(struct lafe_line_reader *lr)
{
 size_t bytes_wanted, bytes_read, new_buff_size;
 char *line_start, *p;

 for (;;) {

  while (lr->line_end < lr->buff_end) {
   line_start = lr->line_start;
   lr->line_start = ++lr->line_end;
   lafe_line_reader_find_eol(lr);

   if (lr->nullSeparator || line_start[0] != '\0')
    return (line_start);
  }


  if (lr->f == ((void*)0)) {
   if (lr->line_start == lr->buff_end)
    return (((void*)0));
   line_start = lr->line_start;
   lr->line_start = lr->buff_end;
   return (line_start);
  }


  if (lr->line_start > lr->buff) {

   memmove(lr->buff, lr->line_start,
       lr->buff_end - lr->line_start);
   lr->buff_end -= lr->line_start - lr->buff;
   lr->line_end -= lr->line_start - lr->buff;
   lr->line_start = lr->buff;
  } else {

   new_buff_size = lr->buff_length * 2;
   if (new_buff_size <= lr->buff_length)
    lafe_errc(1, ENOMEM,
        "Line too long in %s", lr->pathname);
   lr->buff_length = new_buff_size;




   p = realloc(lr->buff, new_buff_size + 1);
   if (p == ((void*)0))
    lafe_errc(1, ENOMEM,
        "Line too long in %s", lr->pathname);
   lr->buff_end = p + (lr->buff_end - lr->buff);
   lr->line_end = p + (lr->line_end - lr->buff);
   lr->line_start = lr->buff = p;
  }


  bytes_wanted = lr->buff + lr->buff_length - lr->buff_end;
  bytes_read = fread(lr->buff_end, 1, bytes_wanted, lr->f);
  lr->buff_end += bytes_read;
  *lr->buff_end = '\0';
  lafe_line_reader_find_eol(lr);

  if (ferror(lr->f))
   lafe_errc(1, errno, "Can't read %s", lr->pathname);
  if (feof(lr->f)) {
   if (lr->f != stdin)
    fclose(lr->f);
   lr->f = ((void*)0);
  }
 }
}
