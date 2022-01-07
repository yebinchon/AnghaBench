
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_5__ {scalar_t__ used; size_t len; int data; } ;
typedef TYPE_1__ au_record_t ;


 size_t AUDIT_TRAILER_SIZE ;
 int EINVAL ;
 int ENOMEM ;
 size_t MAX_AUDIT_HEADER_SIZE ;
 size_t MAX_AUDIT_RECORD_SIZE ;
 scalar_t__ au_assemble (TYPE_1__*,short) ;
 int au_teardown (TYPE_1__*) ;
 int errno ;
 int fprintf (int ,char*,size_t) ;
 int memcpy (int *,int ,size_t) ;
 TYPE_1__** open_desc_table ;
 int stderr ;

int
au_close_buffer(int d, short event, u_char *buffer, size_t *buflen)
{
 size_t tot_rec_size;
 au_record_t *rec;
 int retval;

 rec = open_desc_table[d];
 if ((rec == ((void*)0)) || (rec->used == 0)) {
  errno = EINVAL;
  return (-1);
 }

 retval = 0;
 tot_rec_size = rec->len + MAX_AUDIT_HEADER_SIZE + AUDIT_TRAILER_SIZE;
 if ((tot_rec_size > MAX_AUDIT_RECORD_SIZE) ||
     (tot_rec_size > *buflen)) {



  fprintf(stderr, "au_close_buffer failed %zd", tot_rec_size);
  errno = ENOMEM;
  retval = -1;
  goto cleanup;
 }

 if (au_assemble(rec, event) < 0) {

  retval = -1;
  goto cleanup;
 }

 memcpy(buffer, rec->data, rec->len);
 *buflen = rec->len;

cleanup:
 au_teardown(rec);
 return (retval);
}
