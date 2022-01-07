
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucl_parser {int * cur_file; int err; } ;
struct stat {size_t st_size; } ;
typedef enum ucl_parse_type { ____Placeholder_ucl_parse_type } ucl_parse_type ;
typedef enum ucl_duplicate_strategy { ____Placeholder_ucl_duplicate_strategy } ucl_duplicate_strategy ;


 unsigned char* MAP_FAILED ;
 int MAP_SHARED ;
 int PROT_READ ;
 int errno ;
 int free (int *) ;
 int fstat (int,struct stat*) ;
 int strerror (int ) ;
 int ucl_create_err (int *,char*,int,int ) ;
 unsigned char* ucl_mmap (int *,size_t,int ,int ,int,int ) ;
 int ucl_munmap (unsigned char*,size_t) ;
 int ucl_parser_add_chunk_full (struct ucl_parser*,unsigned char*,size_t,unsigned int,int,int) ;

bool
ucl_parser_add_fd_full (struct ucl_parser *parser, int fd,
  unsigned priority, enum ucl_duplicate_strategy strat,
  enum ucl_parse_type parse_type)
{
 unsigned char *buf;
 size_t len;
 bool ret;
 struct stat st;

 if (fstat (fd, &st) == -1) {
  ucl_create_err (&parser->err, "cannot stat fd %d: %s",
   fd, strerror (errno));
  return 0;
 }
 if (st.st_size == 0) {
  return 1;
 }
 if ((buf = ucl_mmap (((void*)0), st.st_size, PROT_READ, MAP_SHARED, fd, 0)) == MAP_FAILED) {
  ucl_create_err (&parser->err, "cannot mmap fd %d: %s",
   fd, strerror (errno));
  return 0;
 }

 if (parser->cur_file) {
  free (parser->cur_file);
 }
 parser->cur_file = ((void*)0);
 len = st.st_size;
 ret = ucl_parser_add_chunk_full (parser, buf, len, priority, strat,
   parse_type);

 if (len > 0) {
  ucl_munmap (buf, len);
 }

 return ret;
}
