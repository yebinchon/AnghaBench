
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj {int dummy; } ;
typedef enum varobj_languages { ____Placeholder_varobj_languages } varobj_languages ;


 int variable_language (struct varobj*) ;

enum varobj_languages
varobj_get_language (struct varobj *var)
{
  return variable_language (var);
}
