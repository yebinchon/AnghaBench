
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lafe_line_reader {int nullSeparator; int buff_length; int * buff; int buff_end; int line_end; int line_start; int * f; int pathname; } ;


 int ENOMEM ;
 struct lafe_line_reader* calloc (int,int) ;
 int errno ;
 int * fopen (char const*,char*) ;
 int lafe_errc (int,int ,char*,char const*) ;
 int * stdin ;
 scalar_t__ strcmp (char const*,char*) ;
 int strdup (char const*) ;

struct lafe_line_reader *
lafe_line_reader(const char *pathname, int nullSeparator)
{
 struct lafe_line_reader *lr;

 lr = calloc(1, sizeof(*lr));
 if (lr == ((void*)0))
  lafe_errc(1, ENOMEM, "Can't open %s", pathname);

 lr->nullSeparator = nullSeparator;
 lr->pathname = strdup(pathname);

 if (strcmp(pathname, "-") == 0)
  lr->f = stdin;
 else
  lr->f = fopen(pathname, "r");
 if (lr->f == ((void*)0))
  lafe_errc(1, errno, "Couldn't open %s", pathname);
 lr->buff_length = 8192;
 lr->line_start = lr->line_end = lr->buff_end = lr->buff = ((void*)0);

 return (lr);
}
