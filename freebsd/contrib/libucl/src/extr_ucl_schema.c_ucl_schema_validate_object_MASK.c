#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
struct TYPE_25__ {scalar_t__ type; scalar_t__ len; } ;
typedef  TYPE_1__ ucl_object_t ;
typedef  int /*<<< orphan*/ * ucl_object_iter_t ;
struct ucl_schema_error {int dummy; } ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 scalar_t__ UCL_ARRAY ; 
 scalar_t__ UCL_BOOLEAN ; 
 scalar_t__ UCL_OBJECT ; 
 int /*<<< orphan*/  UCL_SCHEMA_CONSTRAINT ; 
 int /*<<< orphan*/  UCL_SCHEMA_INVALID_SCHEMA ; 
 int /*<<< orphan*/  UCL_SCHEMA_MISSING_PROPERTY ; 
 scalar_t__ FUNC0 (char*,char*) ; 
 TYPE_1__* FUNC1 (TYPE_1__ const*,int /*<<< orphan*/ **,int) ; 
 char* FUNC2 (TYPE_1__ const*) ; 
 TYPE_1__* FUNC3 (TYPE_1__ const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ const*) ; 
 scalar_t__ FUNC5 (TYPE_1__ const*,scalar_t__*) ; 
 char* FUNC6 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC7 (struct ucl_schema_error*,int /*<<< orphan*/ ,TYPE_1__ const*,char*,...) ; 
 TYPE_1__* FUNC8 (TYPE_1__ const*,char*,int) ; 
 int FUNC9 (TYPE_1__ const*,TYPE_1__ const*,int,struct ucl_schema_error*,TYPE_1__ const*,TYPE_1__*) ; 
 int FUNC10 (TYPE_1__ const*,TYPE_1__ const*,struct ucl_schema_error*,TYPE_1__ const*,TYPE_1__*) ; 

__attribute__((used)) static bool
FUNC11 (const ucl_object_t *schema,
		const ucl_object_t *obj, struct ucl_schema_error *err,
		const ucl_object_t *root,
		ucl_object_t *ext_ref)
{
	const ucl_object_t *elt, *prop, *found, *additional_schema = NULL,
			*required = NULL, *pat, *pelt;
	ucl_object_iter_t iter = NULL, piter = NULL;
	bool ret = true, allow_additional = true;
	int64_t minmax;

	while (ret && (elt = FUNC1 (schema, &iter, true)) != NULL) {
		if (elt->type == UCL_OBJECT &&
				FUNC0 (FUNC2 (elt), "properties") == 0) {
			piter = NULL;
			while (ret && (prop = FUNC1 (elt, &piter, true)) != NULL) {
				found = FUNC3 (obj, FUNC2 (prop));
				if (found) {
					ret = FUNC9 (prop, found, true, err, root,
							ext_ref);
				}
			}
		}
		else if (FUNC0 (FUNC2 (elt), "additionalProperties") == 0) {
			if (elt->type == UCL_BOOLEAN) {
				if (!FUNC4 (elt)) {
					/* Deny additional fields completely */
					allow_additional = false;
				}
			}
			else if (elt->type == UCL_OBJECT) {
				/* Define validator for additional fields */
				additional_schema = elt;
			}
			else {
				FUNC7 (err, UCL_SCHEMA_INVALID_SCHEMA, elt,
						"additionalProperties attribute is invalid in schema");
				ret = false;
				break;
			}
		}
		else if (FUNC0 (FUNC2 (elt), "required") == 0) {
			if (elt->type == UCL_ARRAY) {
				required = elt;
			}
			else {
				FUNC7 (err, UCL_SCHEMA_INVALID_SCHEMA, elt,
						"required attribute is invalid in schema");
				ret = false;
				break;
			}
		}
		else if (FUNC0 (FUNC2 (elt), "minProperties") == 0
				&& FUNC5 (elt, &minmax)) {
			if (obj->len < minmax) {
				FUNC7 (err, UCL_SCHEMA_CONSTRAINT, obj,
						"object has not enough properties: %u, minimum is: %u",
						obj->len, (unsigned)minmax);
				ret = false;
				break;
			}
		}
		else if (FUNC0 (FUNC2 (elt), "maxProperties") == 0
				&& FUNC5 (elt, &minmax)) {
			if (obj->len > minmax) {
				FUNC7 (err, UCL_SCHEMA_CONSTRAINT, obj,
						"object has too many properties: %u, maximum is: %u",
						obj->len, (unsigned)minmax);
				ret = false;
				break;
			}
		}
		else if (FUNC0 (FUNC2 (elt), "patternProperties") == 0) {
			const ucl_object_t *vobj;
			ucl_object_iter_t viter;
			piter = NULL;
			while (ret && (prop = FUNC1 (elt, &piter, true)) != NULL) {
				viter = NULL;
				while (ret && (vobj = FUNC1 (obj, &viter, true)) != NULL) {
					found = FUNC8 (vobj, FUNC2 (prop), false);
					if (found) {
						ret = FUNC9 (prop, found, true, err, root,
								ext_ref);
					}
				}
			}
		}
		else if (elt->type == UCL_OBJECT &&
				FUNC0 (FUNC2 (elt), "dependencies") == 0) {
			ret = FUNC10 (elt, obj, err, root,
					ext_ref);
		}
	}

	if (ret) {
		/* Additional properties */
		if (!allow_additional || additional_schema != NULL) {
			/* Check if we have exactly the same properties in schema and object */
			iter = NULL;
			prop = FUNC3 (schema, "properties");
			while ((elt = FUNC1 (obj, &iter, true)) != NULL) {
				found = FUNC3 (prop, FUNC2 (elt));
				if (found == NULL) {
					/* Try patternProperties */
					piter = NULL;
					pat = FUNC3 (schema, "patternProperties");
					while ((pelt = FUNC1 (pat, &piter, true)) != NULL) {
						found = FUNC8 (obj, FUNC2 (pelt), true);
						if (found != NULL) {
							break;
						}
					}
				}
				if (found == NULL) {
					if (!allow_additional) {
						FUNC7 (err, UCL_SCHEMA_CONSTRAINT, obj,
								"object has non-allowed property %s",
								FUNC2 (elt));
						ret = false;
						break;
					}
					else if (additional_schema != NULL) {
						if (!FUNC9 (additional_schema, elt,
								true, err, root, ext_ref)) {
							ret = false;
							break;
						}
					}
				}
			}
		}
		/* Required properties */
		if (required != NULL) {
			iter = NULL;
			while ((elt = FUNC1 (required, &iter, true)) != NULL) {
				if (FUNC3 (obj, FUNC6 (elt)) == NULL) {
					FUNC7 (err, UCL_SCHEMA_MISSING_PROPERTY, obj,
							"object has missing property %s",
							FUNC6 (elt));
					ret = false;
					break;
				}
			}
		}
	}


	return ret;
}