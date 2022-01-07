
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct private_uuencode {int encoded_buff; int name; } ;
struct archive_write_filter {scalar_t__ data; } ;


 int ARCHIVE_OK ;
 int archive_string_free (int *) ;
 int free (struct private_uuencode*) ;

__attribute__((used)) static int
archive_filter_uuencode_free(struct archive_write_filter *f)
{
 struct private_uuencode *state = (struct private_uuencode *)f->data;

 archive_string_free(&state->name);
 archive_string_free(&state->encoded_buff);
 free(state);
 return (ARCHIVE_OK);
}
