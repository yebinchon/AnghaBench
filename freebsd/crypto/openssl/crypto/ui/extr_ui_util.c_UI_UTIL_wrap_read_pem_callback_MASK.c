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
struct pem_password_cb_data {int rwflag; int /*<<< orphan*/ * cb; } ;
typedef  int /*<<< orphan*/  pem_password_cb ;
typedef  int /*<<< orphan*/  UI_METHOD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pem_password_cb_data*) ; 
 struct pem_password_cb_data* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct pem_password_cb_data*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  get_index_once ; 
 int /*<<< orphan*/  ui_close ; 
 int /*<<< orphan*/  ui_method_data_index ; 
 int /*<<< orphan*/  ui_method_data_index_init ; 
 int /*<<< orphan*/  ui_open ; 
 int /*<<< orphan*/  ui_read ; 
 int /*<<< orphan*/  ui_write ; 

UI_METHOD *FUNC10(pem_password_cb *cb, int rwflag)
{
    struct pem_password_cb_data *data = NULL;
    UI_METHOD *ui_method = NULL;

    if ((data = FUNC1(sizeof(*data))) == NULL
        || (ui_method = FUNC3("PEM password callback wrapper")) == NULL
        || FUNC7(ui_method, ui_open) < 0
        || FUNC8(ui_method, ui_read) < 0
        || FUNC9(ui_method, ui_write) < 0
        || FUNC5(ui_method, ui_close) < 0
        || !FUNC2(&get_index_once, ui_method_data_index_init)
        || FUNC6(ui_method, ui_method_data_index, data) < 0) {
        FUNC4(ui_method);
        FUNC0(data);
        return NULL;
    }
    data->rwflag = rwflag;
    data->cb = cb;

    return ui_method;
}