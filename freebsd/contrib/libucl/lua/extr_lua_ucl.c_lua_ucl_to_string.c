
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;
typedef int lua_State ;
typedef enum ucl_emitter { ____Placeholder_ucl_emitter } ucl_emitter ;


 int free (unsigned char*) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,char const*) ;
 unsigned char* ucl_object_emit (int const*,int) ;

__attribute__((used)) static int
lua_ucl_to_string (lua_State *L, const ucl_object_t *obj, enum ucl_emitter type)
{
 unsigned char *result;

 result = ucl_object_emit (obj, type);

 if (result != ((void*)0)) {
  lua_pushstring (L, (const char *)result);
  free (result);
 }
 else {
  lua_pushnil (L);
 }

 return 1;
}
