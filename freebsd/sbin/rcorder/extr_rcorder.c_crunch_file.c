
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int filenode ;
typedef int FILE ;


 int BEFORE_LEN ;
 int BEFORE_STR ;
 int KEYWORDS_LEN ;
 int KEYWORDS_STR ;
 int KEYWORD_LEN ;
 int KEYWORD_STR ;
 int PROVIDES_LEN ;
 int PROVIDES_STR ;
 int PROVIDE_LEN ;
 int PROVIDE_STR ;
 int REQUIRES_LEN ;
 int REQUIRES_STR ;
 int REQUIRE_LEN ;
 int REQUIRE_STR ;
 int S_ISREG (int ) ;
 int fclose (int *) ;
 int fileno (int *) ;
 int * filenode_new (char*) ;
 int * fopen (char*,char*) ;
 char* fparseln (int *,int *,int *,char*,int ) ;
 int free (char*) ;
 int fstat (int ,struct stat*) ;
 int parse_before (int *,char*) ;
 int parse_keywords (int *,char*) ;
 int parse_provide (int *,char*) ;
 int parse_require (int *,char*) ;
 scalar_t__ strncmp (int ,char*,int) ;
 int warn (char*,char*) ;
 int warnx (char*,char*) ;

__attribute__((used)) static void
crunch_file(char *filename)
{
 FILE *fp;
 char *buf;
 int require_flag, provide_flag, before_flag, keywords_flag;
 enum { BEFORE_PARSING, PARSING, PARSING_DONE } state;
 filenode *node;
 char delims[3] = { '\\', '\\', '\0' };
 struct stat st;

 if ((fp = fopen(filename, "r")) == ((void*)0)) {
  warn("could not open %s", filename);
  return;
 }

 if (fstat(fileno(fp), &st) == -1) {
  warn("could not stat %s", filename);
  fclose(fp);
  return;
 }

 if (!S_ISREG(st.st_mode)) {



  fclose(fp);
  return;
 }

 node = filenode_new(filename);





 for (state = BEFORE_PARSING; state != PARSING_DONE &&
     (buf = fparseln(fp, ((void*)0), ((void*)0), delims, 0)) != ((void*)0); free(buf)) {
  require_flag = provide_flag = before_flag = keywords_flag = 0;
  if (strncmp(REQUIRE_STR, buf, REQUIRE_LEN) == 0)
   require_flag = REQUIRE_LEN;
  else if (strncmp(REQUIRES_STR, buf, REQUIRES_LEN) == 0)
   require_flag = REQUIRES_LEN;
  else if (strncmp(PROVIDE_STR, buf, PROVIDE_LEN) == 0)
   provide_flag = PROVIDE_LEN;
  else if (strncmp(PROVIDES_STR, buf, PROVIDES_LEN) == 0)
   provide_flag = PROVIDES_LEN;
  else if (strncmp(BEFORE_STR, buf, BEFORE_LEN) == 0)
   before_flag = BEFORE_LEN;
  else if (strncmp(KEYWORD_STR, buf, KEYWORD_LEN) == 0)
   keywords_flag = KEYWORD_LEN;
  else if (strncmp(KEYWORDS_STR, buf, KEYWORDS_LEN) == 0)
   keywords_flag = KEYWORDS_LEN;
  else {
   if (state == PARSING)
    state = PARSING_DONE;
   continue;
  }

  state = PARSING;
  if (require_flag)
   parse_require(node, buf + require_flag);
  else if (provide_flag)
   parse_provide(node, buf + provide_flag);
  else if (before_flag)
   parse_before(node, buf + before_flag);
  else if (keywords_flag)
   parse_keywords(node, buf + keywords_flag);
 }
 fclose(fp);
}
