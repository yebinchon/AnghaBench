
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;


 char* pt_section_filename (int *) ;
 int ptu_null (char const*) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result filename_null(void)
{
 const char *name;

 name = pt_section_filename(((void*)0));
 ptu_null(name);

 return ptu_passed();
}
