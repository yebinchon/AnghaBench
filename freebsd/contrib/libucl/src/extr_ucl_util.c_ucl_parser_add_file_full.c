
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucl_parser {int cur_file; int err; } ;
typedef enum ucl_parse_type { ____Placeholder_ucl_parse_type } ucl_parse_type ;
typedef enum ucl_duplicate_strategy { ____Placeholder_ucl_duplicate_strategy } ucl_duplicate_strategy ;


 int PATH_MAX ;
 int errno ;
 int free (int ) ;
 int strdup (char*) ;
 int strerror (int ) ;
 int ucl_create_err (int *,char*,char const*,int ) ;
 int ucl_fetch_file (char*,unsigned char**,size_t*,int *,int) ;
 int ucl_munmap (unsigned char*,size_t) ;
 int ucl_parser_add_chunk_full (struct ucl_parser*,unsigned char*,size_t,unsigned int,int,int) ;
 int ucl_parser_set_filevars (struct ucl_parser*,char*,int) ;
 int * ucl_realpath (char const*,char*) ;

bool
ucl_parser_add_file_full (struct ucl_parser *parser, const char *filename,
  unsigned priority, enum ucl_duplicate_strategy strat,
  enum ucl_parse_type parse_type)
{
 unsigned char *buf;
 size_t len;
 bool ret;
 char realbuf[PATH_MAX];

 if (ucl_realpath (filename, realbuf) == ((void*)0)) {
  ucl_create_err (&parser->err, "cannot open file %s: %s",
    filename,
    strerror (errno));
  return 0;
 }

 if (!ucl_fetch_file (realbuf, &buf, &len, &parser->err, 1)) {
  return 0;
 }

 if (parser->cur_file) {
  free (parser->cur_file);
 }
 parser->cur_file = strdup (realbuf);
 ucl_parser_set_filevars (parser, realbuf, 0);
 ret = ucl_parser_add_chunk_full (parser, buf, len, priority, strat,
   parse_type);

 if (len > 0) {
  ucl_munmap (buf, len);
 }

 return ret;
}
