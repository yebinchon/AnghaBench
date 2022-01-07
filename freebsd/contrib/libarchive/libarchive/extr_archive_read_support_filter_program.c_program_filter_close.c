
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct program_filter {int description; struct program_filter* out_buf; } ;
struct archive_read_filter {scalar_t__ data; } ;


 int archive_string_free (int *) ;
 int child_stop (struct archive_read_filter*,struct program_filter*) ;
 int free (struct program_filter*) ;

__attribute__((used)) static int
program_filter_close(struct archive_read_filter *self)
{
 struct program_filter *state;
 int e;

 state = (struct program_filter *)self->data;
 e = child_stop(self, state);


 free(state->out_buf);
 archive_string_free(&state->description);
 free(state);

 return (e);
}
