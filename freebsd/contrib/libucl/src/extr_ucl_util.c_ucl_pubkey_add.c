
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucl_pubkey {int * key; } ;
struct ucl_parser {int keys; int err; } ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new_mem_buf (void*,size_t) ;
 int ERR_error_string (int ,int *) ;
 int ERR_get_error () ;
 int EXIT_FAILURE ;
 int LL_PREPEND (int ,struct ucl_pubkey*) ;
 int * PEM_read_bio_PUBKEY (int *,int **,int *,int *) ;
 struct ucl_pubkey* UCL_ALLOC (int) ;
 int UCL_FREE (int,struct ucl_pubkey*) ;
 int ucl_create_err (int *,char*,...) ;

bool
ucl_pubkey_add (struct ucl_parser *parser, const unsigned char *key, size_t len)
{

 ucl_create_err (&parser->err, "cannot check signatures without openssl");
 return 0;
 return 1;
}
