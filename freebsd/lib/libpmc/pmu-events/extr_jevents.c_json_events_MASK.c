#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct msrmap {char* pname; } ;
struct TYPE_11__ {scalar_t__ type; int size; } ;
typedef  TYPE_1__ jsmntok_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int EIO ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int,TYPE_1__*,char*) ; 
 scalar_t__ JSMN_ARRAY ; 
 scalar_t__ JSMN_OBJECT ; 
 scalar_t__ JSMN_STRING ; 
 int /*<<< orphan*/  FUNC1 (char*,char**,char*,char*,TYPE_1__*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,size_t,TYPE_1__*) ; 
 scalar_t__ FUNC7 (char*,TYPE_1__*,char*) ; 
 struct msrmap* FUNC8 (char*,TYPE_1__*) ; 
 scalar_t__ FUNC9 (char*,TYPE_1__*,int,char**,TYPE_1__*) ; 
 TYPE_1__* FUNC10 (char const*,char**,size_t*,int*) ; 
 char const* FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,unsigned long long) ; 
 char* FUNC13 (char const*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 int FUNC15 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char FUNC16 (char) ; 
 int FUNC17 (char const*,char*,char**,char**,char**,char**,char**,char**,char**,char**,char**,char**,char**,unsigned long long) ; 
 int /*<<< orphan*/  unit_to_pmu ; 

int FUNC18(const char *fn,
	  int (*func)(void *data, char *name, const char *event, char *desc,
		      char *long_desc,
		      char *pmu, char *unit, char *perpkg,
		      char *metric_expr,
		      char *metric_name, char *metric_group),
	  void *data)
{
	int err;
	size_t size;
	jsmntok_t *tokens, *tok;
	int i, j, len;
	char *map;
	char buf[128];

	if (!fn)
		return -ENOENT;

	tokens = FUNC10(fn, &map, &size, &len);
	if (!tokens)
		return -EIO;
	FUNC0(tokens->type == JSMN_ARRAY, tokens, "expected top level array");
	tok = tokens + 1;
	for (i = 0; i < tokens->size; i++) {
		char *event = NULL, *desc = NULL, *name = NULL;
		char *long_desc = NULL;
		char *extra_desc = NULL;
		char *pmu = NULL;
		char *filter = NULL;
		char *perpkg = NULL;
		char *unit = NULL;
		char *metric_expr = NULL;
		char *metric_name = NULL;
		char *metric_group = NULL;
		char *arch_std = NULL;
		unsigned long long eventcode = 0;
		struct msrmap *msr = NULL;
		jsmntok_t *msrval = NULL;
		jsmntok_t *precise = NULL;
		jsmntok_t *obj = tok++;

		FUNC0(obj->type == JSMN_OBJECT, obj, "expected object");
		for (j = 0; j < obj->size; j += 2) {
			jsmntok_t *field, *val;
			int nz;
			char *s;

			field = tok + j;
			FUNC0(field->type == JSMN_STRING, tok + j,
			       "Expected field name");
			val = tok + j + 1;
			FUNC0(val->type == JSMN_STRING, tok + j + 1,
			       "Expected string value");

			nz = !FUNC7(map, val, "0");
			if (FUNC9(map, field, nz, &event, val)) {
				/* ok */
			} else if (FUNC7(map, field, "EventCode")) {
				char *code = NULL;
				FUNC1(map, &code, "", "", val);
				eventcode |= FUNC15(code, NULL, 0);
				FUNC5(code);
			} else if (FUNC7(map, field, "ExtSel")) {
				char *code = NULL;
				FUNC1(map, &code, "", "", val);
				eventcode |= FUNC15(code, NULL, 0) << 21;
				FUNC5(code);
			} else if (FUNC7(map, field, "EventName")) {
				FUNC1(map, &name, "", "", val);
			} else if (FUNC7(map, field, "BriefDescription")) {
				FUNC1(map, &desc, "", "", val);
				FUNC3(desc);
			} else if (FUNC7(map, field,
					     "PublicDescription")) {
				FUNC1(map, &long_desc, "", "", val);
				FUNC3(long_desc);
			} else if (FUNC7(map, field, "PEBS") && nz) {
				precise = val;
			} else if (FUNC7(map, field, "MSRIndex") && nz) {
				msr = FUNC8(map, val);
			} else if (FUNC7(map, field, "MSRValue")) {
				msrval = val;
			} else if (FUNC7(map, field, "Errata") &&
				   !FUNC7(map, val, "null")) {
				FUNC1(map, &extra_desc, ". ",
					" Spec update: ", val);
			} else if (FUNC7(map, field, "Data_LA") && nz) {
				FUNC1(map, &extra_desc, ". ",
					" Supports address when precise",
					NULL);
			} else if (FUNC7(map, field, "Unit")) {
				const char *ppmu;

				ppmu = FUNC2(unit_to_pmu, map, val);
				if (ppmu) {
					pmu = FUNC13(ppmu);
				} else {
					if (!pmu)
						pmu = FUNC13("uncore_");
					FUNC1(map, &pmu, "", "", val);
					for (s = pmu; *s; s++)
						*s = FUNC16(*s);
				}
				FUNC1(map, &desc, ". ", "Unit: ", NULL);
				FUNC1(map, &desc, "", pmu, NULL);
				FUNC1(map, &desc, "", " ", NULL);
			} else if (FUNC7(map, field, "Filter")) {
				FUNC1(map, &filter, "", "", val);
			} else if (FUNC7(map, field, "ScaleUnit")) {
				FUNC1(map, &unit, "", "", val);
			} else if (FUNC7(map, field, "PerPkg")) {
				FUNC1(map, &perpkg, "", "", val);
			} else if (FUNC7(map, field, "MetricName")) {
				FUNC1(map, &metric_name, "", "", val);
			} else if (FUNC7(map, field, "MetricGroup")) {
				FUNC1(map, &metric_group, "", "", val);
			} else if (FUNC7(map, field, "MetricExpr")) {
				FUNC1(map, &metric_expr, "", "", val);
				for (s = metric_expr; *s; s++)
					*s = FUNC16(*s);
			} else if (FUNC7(map, field, "ArchStdEvent")) {
				FUNC1(map, &arch_std, "", "", val);
				for (s = arch_std; *s; s++)
					*s = FUNC16(*s);
			}
			/* ignore unknown fields */
		}
		if (precise && desc && !FUNC14(desc, "(Precise Event)")) {
			if (FUNC7(map, precise, "2"))
				FUNC1(map, &extra_desc, " ",
						"(Must be precise)", NULL);
			else
				FUNC1(map, &extra_desc, " ",
						"(Precise event)", NULL);
		}
		FUNC12(buf, sizeof(buf), "event=%#llx", eventcode);
		FUNC1(map, &event, ",", buf, NULL);
		if (desc && extra_desc)
			FUNC1(map, &desc, " ", extra_desc, NULL);
		if (long_desc && extra_desc)
			FUNC1(map, &long_desc, " ", extra_desc, NULL);
		if (filter)
			FUNC1(map, &event, ",", filter, NULL);
		if (msr != NULL)
			FUNC1(map, &event, ",", msr->pname, msrval);
		if (name)
			FUNC4(name);

		if (arch_std) {
			/*
			 * An arch standard event is referenced, so try to
			 * fixup any unassigned values.
			 */
			err = FUNC17(fn, arch_std, &event, &desc, &name,
					&long_desc, &pmu, &filter, &perpkg,
					&unit, &metric_expr, &metric_name,
					&metric_group, eventcode);
			if (err)
				goto free_strings;
		}
		err = func(data, name, FUNC11(name, event), desc, long_desc,
			   pmu, unit, perpkg, metric_expr, metric_name, metric_group);
free_strings:
		FUNC5(event);
		FUNC5(desc);
		FUNC5(name);
		FUNC5(long_desc);
		FUNC5(extra_desc);
		FUNC5(pmu);
		FUNC5(filter);
		FUNC5(perpkg);
		FUNC5(unit);
		FUNC5(metric_expr);
		FUNC5(metric_name);
		FUNC5(metric_group);
		FUNC5(arch_std);

		if (err)
			break;
		tok += j;
	}
	FUNC0(tok - tokens == len, tok, "unexpected objects at end");
	err = 0;
out_free:
	FUNC6(map, size, tokens);
	return err;
}