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
struct getargs {scalar_t__ type; char const* arg_help; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct getargs) ; 
 scalar_t__ arg_counter ; 
 scalar_t__ arg_double ; 
 scalar_t__ arg_integer ; 
 scalar_t__ arg_string ; 
 scalar_t__ arg_strings ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 size_t FUNC2 (char const*) ; 
 char* FUNC3 (char const*) ; 

__attribute__((used)) static size_t
FUNC4 (char *string,
	   size_t len,
	   int mdoc,
	   int longp,
	   struct getargs *arg,
	   char *(i18n)(const char *))
{
    const char *s;

    *string = '\0';

    if (FUNC0(*arg) || (!longp && arg->type == arg_counter))
	return 0;

    if(mdoc){
	if(longp)
	    FUNC1(string, "= Ns", len);
	FUNC1(string, " Ar ", len);
    } else {
	if (longp)
	    FUNC1 (string, "=", len);
	else
	    FUNC1 (string, " ", len);
    }

    if (arg->arg_help)
	s = (*i18n)(arg->arg_help);
    else if (arg->type == arg_integer || arg->type == arg_counter)
	s = "integer";
    else if (arg->type == arg_string)
	s = "string";
    else if (arg->type == arg_strings)
	s = "strings";
    else if (arg->type == arg_double)
	s = "float";
    else
	s = "<undefined>";

    FUNC1(string, s, len);
    return 1 + FUNC2(s);
}