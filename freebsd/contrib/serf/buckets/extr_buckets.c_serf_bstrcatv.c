
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {scalar_t__ iov_len; int iov_base; } ;
typedef int serf_bucket_alloc_t ;
typedef int apr_size_t ;


 int memcpy (char*,int ,scalar_t__) ;
 char* serf_bucket_mem_alloc (int *,int) ;

char *serf_bstrcatv(serf_bucket_alloc_t *allocator, struct iovec *vec,
                    int vecs, apr_size_t *bytes_written)
{
    int i;
    apr_size_t new_len = 0;
    char *c, *newstr;

    for (i = 0; i < vecs; i++) {
        new_len += vec[i].iov_len;
    }


    newstr = serf_bucket_mem_alloc(allocator, new_len);

    c = newstr;
    for (i = 0; i < vecs; i++) {
        memcpy(c, vec[i].iov_base, vec[i].iov_len);
        c += vec[i].iov_len;
    }

    if (bytes_written) {
        *bytes_written = c - newstr;
    }

    return newstr;
}
