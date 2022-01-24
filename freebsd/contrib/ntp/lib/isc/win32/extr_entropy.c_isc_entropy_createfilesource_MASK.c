#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  isc_result_t ;
struct TYPE_11__ {int /*<<< orphan*/  handle; } ;
struct TYPE_12__ {TYPE_1__ file; } ;
struct TYPE_13__ {TYPE_2__ sources; int /*<<< orphan*/  name; int /*<<< orphan*/  bad; scalar_t__ total; TYPE_4__* ent; int /*<<< orphan*/  type; int /*<<< orphan*/  magic; } ;
typedef  TYPE_3__ isc_entropysource_t ;
struct TYPE_14__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  mctx; int /*<<< orphan*/  nsources; int /*<<< orphan*/  sources; } ;
typedef  TYPE_4__ isc_entropy_t ;
typedef  int /*<<< orphan*/  HCRYPTPROV ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPT_VERIFYCONTEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENTROPY_SOURCETYPE_FILE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  ISC_FALSE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ISC_R_IOERROR ; 
 int /*<<< orphan*/  ISC_R_NOMEMORY ; 
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PROV_RSA_FULL ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOURCE_MAGIC ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

isc_result_t
FUNC12(isc_entropy_t *ent, const char *fname) {
	isc_result_t ret;
	isc_entropysource_t *source;
	HCRYPTPROV hcryptprov;
	DWORD errval;
	BOOL err;

	FUNC6(FUNC8(ent));
	FUNC6(fname != NULL);

	FUNC5(&ent->lock);

	source = NULL;

	/*
	 * The first time we just try to acquire the context
	 */
	err = FUNC0(&hcryptprov, NULL, NULL, PROV_RSA_FULL,
				  CRYPT_VERIFYCONTEXT);
	if (!err){
		errval = FUNC2();
		ret = ISC_R_IOERROR;
		goto errout;
	}

	source = FUNC9(ent->mctx, sizeof(isc_entropysource_t));
	if (source == NULL) {
		ret = ISC_R_NOMEMORY;
		goto closecontext;
	}

	/*
	 * From here down, no failures can occur.
	 */
	source->magic = SOURCE_MAGIC;
	source->type = ENTROPY_SOURCETYPE_FILE;
	source->ent = ent;
	source->total = 0;
	source->bad = ISC_FALSE;
	FUNC11(source->name, 0, sizeof(source->name));
	FUNC3(source, link);
	source->sources.file.handle = hcryptprov;

	/*
	 * Hook it into the entropy system.
	 */
	FUNC4(ent->sources, source, link);
	ent->nsources++;

	FUNC7(&ent->lock);
	return (ISC_R_SUCCESS);

 closecontext:
	FUNC1(hcryptprov, 0);

 errout:
	if (source != NULL)
		FUNC10(ent->mctx, source, sizeof(isc_entropysource_t));

	FUNC7(&ent->lock);

	return (ret);
}