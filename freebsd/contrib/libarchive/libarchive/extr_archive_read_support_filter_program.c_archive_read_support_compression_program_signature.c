
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;


 int archive_read_support_filter_program_signature (struct archive*,char const*,void const*,size_t) ;

int
archive_read_support_compression_program_signature(struct archive *a,
    const char *cmd, const void *signature, size_t signature_len)
{
 return archive_read_support_filter_program_signature(a,
     cmd, signature, signature_len);
}
