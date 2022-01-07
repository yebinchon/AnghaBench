
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UCL_CHARACTER_VALUE_END ;
 int ucl_test_character (unsigned char const,int ) ;

__attribute__((used)) static inline bool
ucl_lex_is_atom_end (const unsigned char c)
{
 return ucl_test_character (c, UCL_CHARACTER_VALUE_END);
}
