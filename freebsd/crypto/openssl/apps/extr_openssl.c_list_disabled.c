
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIO_puts (int ,char*) ;
 int bio_out ;

__attribute__((used)) static void list_disabled(void)
{
    BIO_puts(bio_out, "Disabled algorithms:\n");
    BIO_puts(bio_out, "ZLIB\n");

}
