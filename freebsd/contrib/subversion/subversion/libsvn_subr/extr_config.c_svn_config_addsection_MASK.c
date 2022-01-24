#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  sections; int /*<<< orphan*/  pool; scalar_t__ section_names_case_sensitive; } ;
typedef  TYPE_1__ svn_config_t ;
struct TYPE_8__ {char* name; int /*<<< orphan*/  options; } ;
typedef  TYPE_2__ cfg_section_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,int) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,TYPE_2__*) ; 

__attribute__((used)) static cfg_section_t *
FUNC5(svn_config_t *cfg,
                      const char *section)
{
  cfg_section_t *s;
  const char *hash_key;

  s = FUNC0(cfg->pool, sizeof(cfg_section_t));
  s->name = FUNC1(cfg->pool, section);
  if(cfg->section_names_case_sensitive)
    hash_key = s->name;
  else
    hash_key = FUNC2(FUNC1(cfg->pool, section));
  s->options = FUNC3(cfg->pool);

  FUNC4(cfg->sections, hash_key, s);

  return s;
}