
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucl_emitter_functions {int ud; int (* ucl_emitter_append_character ) (char,unsigned int,int ) ;} ;


 int stub1 (char,unsigned int,int ) ;

__attribute__((used)) static inline void
ucl_add_tabs (const struct ucl_emitter_functions *func, unsigned int tabs,
  bool compact)
{
 if (!compact && tabs > 0) {
  func->ucl_emitter_append_character (' ', tabs * 4, func->ud);
 }
}
