
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct varobj {TYPE_3__* root; } ;
typedef enum varobj_languages { ____Placeholder_varobj_languages } varobj_languages ;
struct TYPE_6__ {TYPE_2__* exp; } ;
struct TYPE_5__ {TYPE_1__* language_defn; } ;
struct TYPE_4__ {int la_language; } ;





 int vlang_c ;
 int vlang_cplus ;
 int vlang_java ;

__attribute__((used)) static enum varobj_languages
variable_language (struct varobj *var)
{
  enum varobj_languages lang;

  switch (var->root->exp->language_defn->la_language)
    {
    default:
    case 130:
      lang = vlang_c;
      break;
    case 129:
      lang = vlang_cplus;
      break;
    case 128:
      lang = vlang_java;
      break;
    }

  return lang;
}
