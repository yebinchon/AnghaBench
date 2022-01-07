
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lafe_line_reader {char* line_end; scalar_t__ nullSeparator; } ;


 int strcspn (char*,char*) ;

__attribute__((used)) static void
lafe_line_reader_find_eol(struct lafe_line_reader *lr)
{

 lr->line_end += strcspn(lr->line_end,
     lr->nullSeparator ? "" : "\x0d\x0a");
 *lr->line_end = '\0';
}
