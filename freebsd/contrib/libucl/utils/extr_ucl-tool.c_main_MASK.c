#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ucl_object_t ;
typedef  scalar_t__ ucl_emitter_t ;
struct ucl_schema_error {char* msg; } ;
struct ucl_parser {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t BUFSIZ ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 scalar_t__ UCL_EMIT_CONFIG ; 
 scalar_t__ UCL_EMIT_JSON ; 
 scalar_t__ UCL_EMIT_JSON_COMPACT ; 
 scalar_t__ UCL_EMIT_MSGPACK ; 
 scalar_t__ UCL_EMIT_YAML ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC6 (unsigned char*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int,size_t,int /*<<< orphan*/ *) ; 
 char FUNC8 (int,char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned char* FUNC9 (size_t) ; 
 char* optarg ; 
 int /*<<< orphan*/  opts ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 unsigned char* FUNC11 (unsigned char*,size_t) ; 
 int /*<<< orphan*/ * stderr ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 char* FUNC13 (int /*<<< orphan*/ *,scalar_t__) ; 
 unsigned char* FUNC14 (int /*<<< orphan*/ *,scalar_t__,size_t*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct ucl_schema_error*) ; 
 int /*<<< orphan*/  FUNC16 (struct ucl_parser*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC17 (struct ucl_parser*,char const*) ; 
 char* FUNC18 (struct ucl_parser*) ; 
 int /*<<< orphan*/ * FUNC19 (struct ucl_parser*) ; 
 struct ucl_parser* FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (char*,int /*<<< orphan*/ *) ; 

int FUNC22(int argc, char **argv) {
  char ch;
  FILE *in = stdin, *out = stdout;
  const char *schema = NULL;
  unsigned char *buf = NULL;
  size_t size = 0, r = 0;
  struct ucl_parser *parser = NULL;
  ucl_object_t *obj = NULL;
  ucl_emitter_t emitter = UCL_EMIT_CONFIG;

  while((ch = FUNC8(argc, argv, "hi:o:s:f:", opts, NULL)) != -1) {
    switch (ch) {
    case 'i':
      in = FUNC4(optarg, "r");
      if (in == NULL) {
        FUNC10("fopen on input file");
        FUNC0(EXIT_FAILURE);
      }
      break;
    case 'o':
      out = FUNC4(optarg, "w");
      if (out == NULL) {
        FUNC10("fopen on output file");
        FUNC0(EXIT_FAILURE);
      }
      break;
    case 's':
      schema = optarg;
      break;
    case 'f':
      if (FUNC12(optarg, "ucl") == 0) {
        emitter = UCL_EMIT_CONFIG;
      } else if (FUNC12(optarg, "json") == 0) {
        emitter = UCL_EMIT_JSON;
      } else if (FUNC12(optarg, "yaml") == 0) {
        emitter = UCL_EMIT_YAML;
      } else if (FUNC12(optarg, "compact_json") == 0) {
        emitter = UCL_EMIT_JSON_COMPACT;
      } else if (FUNC12(optarg, "msgpack") == 0) {
        emitter = UCL_EMIT_MSGPACK;
      } else {
        FUNC5(stderr, "Unknown output format: %s\n", optarg);
        FUNC0(EXIT_FAILURE);
      }
      break;
    case 'h':
      FUNC21(argv[0], stdout);
      FUNC0(0);
    default:
      FUNC21(argv[0], stderr);
      FUNC0(EXIT_FAILURE);
      break;
    }
  }

  parser = FUNC20(0);
  buf = FUNC9(BUFSIZ);
  size = BUFSIZ;
  while(!FUNC2(in) && !FUNC3(in)) {
    if (r == size) {
      buf = FUNC11(buf, size*2);
      size *= 2;
      if (buf == NULL) {
        FUNC10("realloc");
        FUNC0(EXIT_FAILURE);
      }
    }
    r += FUNC6(buf + r, 1, size - r, in);
  }
  if (FUNC3(in)) {
    FUNC5(stderr, "Failed to read the input file.\n");
    FUNC0(EXIT_FAILURE);
  }
  FUNC1(in);
  if (!FUNC16(parser, buf, r)) {
    FUNC5(stderr, "Failed to parse input file: %s\n",
            FUNC18(parser));
    FUNC0(EXIT_FAILURE);
  }
  if ((obj = FUNC19(parser)) == NULL) {
    FUNC5(stderr, "Failed to get root object: %s\n",
            FUNC18(parser));
    FUNC0(EXIT_FAILURE);
  }
  if (schema != NULL) {
    struct ucl_parser *schema_parser = FUNC20(0);
    ucl_object_t *schema_obj = NULL;
    struct ucl_schema_error error;

    if (!FUNC17(schema_parser, schema)) {
      FUNC5(stderr, "Failed to parse schema file: %s\n",
              FUNC18(schema_parser));
      FUNC0(EXIT_FAILURE);
    }
    if ((schema_obj = FUNC19(schema_parser)) == NULL) {
      FUNC5(stderr, "Failed to get root object: %s\n",
              FUNC18(schema_parser));
      FUNC0(EXIT_FAILURE);
    }
    if (!FUNC15(schema_obj, obj, &error)) {
      FUNC5(stderr, "Validation failed: %s\n", error.msg);
      FUNC0(EXIT_FAILURE);
    }
  }

  if (emitter != UCL_EMIT_MSGPACK) {
    FUNC5(out, "%s\n", FUNC13(obj, emitter));
  }
  else {
    size_t len;
    unsigned char *res;

    res = FUNC14(obj, emitter, &len);
    FUNC7(res, 1, len, out);
  }

  return 0;
}