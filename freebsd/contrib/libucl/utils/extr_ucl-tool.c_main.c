
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;
typedef scalar_t__ ucl_emitter_t ;
struct ucl_schema_error {char* msg; } ;
struct ucl_parser {int dummy; } ;
typedef int FILE ;


 size_t BUFSIZ ;
 int EXIT_FAILURE ;
 scalar_t__ UCL_EMIT_CONFIG ;
 scalar_t__ UCL_EMIT_JSON ;
 scalar_t__ UCL_EMIT_JSON_COMPACT ;
 scalar_t__ UCL_EMIT_MSGPACK ;
 scalar_t__ UCL_EMIT_YAML ;
 int exit (int ) ;
 int fclose (int *) ;
 int feof (int *) ;
 scalar_t__ ferror (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,...) ;
 scalar_t__ fread (unsigned char*,int,size_t,int *) ;
 int fwrite (unsigned char*,int,size_t,int *) ;
 char getopt_long (int,char**,char*,int ,int *) ;
 unsigned char* malloc (size_t) ;
 char* optarg ;
 int opts ;
 int perror (char*) ;
 unsigned char* realloc (unsigned char*,size_t) ;
 int * stderr ;
 int * stdin ;
 int * stdout ;
 int strcmp (char*,char*) ;
 char* ucl_object_emit (int *,scalar_t__) ;
 unsigned char* ucl_object_emit_len (int *,scalar_t__,size_t*) ;
 int ucl_object_validate (int *,int *,struct ucl_schema_error*) ;
 int ucl_parser_add_chunk (struct ucl_parser*,unsigned char*,size_t) ;
 int ucl_parser_add_file (struct ucl_parser*,char const*) ;
 char* ucl_parser_get_error (struct ucl_parser*) ;
 int * ucl_parser_get_object (struct ucl_parser*) ;
 struct ucl_parser* ucl_parser_new (int ) ;
 int usage (char*,int *) ;

int main(int argc, char **argv) {
  char ch;
  FILE *in = stdin, *out = stdout;
  const char *schema = ((void*)0);
  unsigned char *buf = ((void*)0);
  size_t size = 0, r = 0;
  struct ucl_parser *parser = ((void*)0);
  ucl_object_t *obj = ((void*)0);
  ucl_emitter_t emitter = UCL_EMIT_CONFIG;

  while((ch = getopt_long(argc, argv, "hi:o:s:f:", opts, ((void*)0))) != -1) {
    switch (ch) {
    case 'i':
      in = fopen(optarg, "r");
      if (in == ((void*)0)) {
        perror("fopen on input file");
        exit(EXIT_FAILURE);
      }
      break;
    case 'o':
      out = fopen(optarg, "w");
      if (out == ((void*)0)) {
        perror("fopen on output file");
        exit(EXIT_FAILURE);
      }
      break;
    case 's':
      schema = optarg;
      break;
    case 'f':
      if (strcmp(optarg, "ucl") == 0) {
        emitter = UCL_EMIT_CONFIG;
      } else if (strcmp(optarg, "json") == 0) {
        emitter = UCL_EMIT_JSON;
      } else if (strcmp(optarg, "yaml") == 0) {
        emitter = UCL_EMIT_YAML;
      } else if (strcmp(optarg, "compact_json") == 0) {
        emitter = UCL_EMIT_JSON_COMPACT;
      } else if (strcmp(optarg, "msgpack") == 0) {
        emitter = UCL_EMIT_MSGPACK;
      } else {
        fprintf(stderr, "Unknown output format: %s\n", optarg);
        exit(EXIT_FAILURE);
      }
      break;
    case 'h':
      usage(argv[0], stdout);
      exit(0);
    default:
      usage(argv[0], stderr);
      exit(EXIT_FAILURE);
      break;
    }
  }

  parser = ucl_parser_new(0);
  buf = malloc(BUFSIZ);
  size = BUFSIZ;
  while(!feof(in) && !ferror(in)) {
    if (r == size) {
      buf = realloc(buf, size*2);
      size *= 2;
      if (buf == ((void*)0)) {
        perror("realloc");
        exit(EXIT_FAILURE);
      }
    }
    r += fread(buf + r, 1, size - r, in);
  }
  if (ferror(in)) {
    fprintf(stderr, "Failed to read the input file.\n");
    exit(EXIT_FAILURE);
  }
  fclose(in);
  if (!ucl_parser_add_chunk(parser, buf, r)) {
    fprintf(stderr, "Failed to parse input file: %s\n",
            ucl_parser_get_error(parser));
    exit(EXIT_FAILURE);
  }
  if ((obj = ucl_parser_get_object(parser)) == ((void*)0)) {
    fprintf(stderr, "Failed to get root object: %s\n",
            ucl_parser_get_error(parser));
    exit(EXIT_FAILURE);
  }
  if (schema != ((void*)0)) {
    struct ucl_parser *schema_parser = ucl_parser_new(0);
    ucl_object_t *schema_obj = ((void*)0);
    struct ucl_schema_error error;

    if (!ucl_parser_add_file(schema_parser, schema)) {
      fprintf(stderr, "Failed to parse schema file: %s\n",
              ucl_parser_get_error(schema_parser));
      exit(EXIT_FAILURE);
    }
    if ((schema_obj = ucl_parser_get_object(schema_parser)) == ((void*)0)) {
      fprintf(stderr, "Failed to get root object: %s\n",
              ucl_parser_get_error(schema_parser));
      exit(EXIT_FAILURE);
    }
    if (!ucl_object_validate(schema_obj, obj, &error)) {
      fprintf(stderr, "Validation failed: %s\n", error.msg);
      exit(EXIT_FAILURE);
    }
  }

  if (emitter != UCL_EMIT_MSGPACK) {
    fprintf(out, "%s\n", ucl_object_emit(obj, emitter));
  }
  else {
    size_t len;
    unsigned char *res;

    res = ucl_object_emit_len(obj, emitter, &len);
    fwrite(res, 1, len, out);
  }

  return 0;
}
