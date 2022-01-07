
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_meta {scalar_t__ macroset; } ;
struct mparse {int dummy; } ;
typedef enum outt { ____Placeholder_outt } outt ;


 scalar_t__ MACROSET_MAN ;
 scalar_t__ MACROSET_MDOC ;



 int STDIN_FILENO ;
 int html_man (void*,struct roff_meta*) ;
 int html_mdoc (void*,struct roff_meta*) ;
 int mparse_readfd (struct mparse*,int ,char*) ;
 struct roff_meta* mparse_result (struct mparse*) ;
 int terminal_man (void*,struct roff_meta*) ;
 int terminal_mdoc (void*,struct roff_meta*) ;

__attribute__((used)) static void
process(struct mparse *parser, enum outt outtype, void *formatter)
{
 struct roff_meta *meta;

 mparse_readfd(parser, STDIN_FILENO, "<unixfd>");
 meta = mparse_result(parser);
 if (meta->macroset == MACROSET_MDOC) {
  switch (outtype) {
  case 130:
  case 128:
   terminal_mdoc(formatter, meta);
   break;
  case 129:
   html_mdoc(formatter, meta);
   break;
  }
 }
 if (meta->macroset == MACROSET_MAN) {
  switch (outtype) {
  case 130:
  case 128:
   terminal_man(formatter, meta);
   break;
  case 129:
   html_man(formatter, meta);
   break;
  }
 }
}
