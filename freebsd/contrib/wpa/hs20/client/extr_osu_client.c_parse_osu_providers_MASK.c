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
struct osu_lang_text {int /*<<< orphan*/  text; int /*<<< orphan*/  lang; } ;
struct osu_icon {int /*<<< orphan*/  filename; int /*<<< orphan*/  mime_type; int /*<<< orphan*/  lang; int /*<<< orphan*/  id; } ;
struct osu_data {scalar_t__ friendly_name_count; scalar_t__ serv_desc_count; scalar_t__ icon_count; struct osu_icon* icon; struct osu_lang_text* serv_desc; struct osu_lang_text* friendly_name; int /*<<< orphan*/  osu_nai2; int /*<<< orphan*/  osu_nai; int /*<<< orphan*/  osu_ssid2; int /*<<< orphan*/  osu_ssid; int /*<<< orphan*/  methods; int /*<<< orphan*/  url; int /*<<< orphan*/  bssid; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ MAX_OSU_VALS ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct osu_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*,char*) ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 
 struct osu_data* FUNC7 (struct osu_data*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char*,char*) ; 
 char* FUNC9 (char*,char) ; 
 scalar_t__ FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static struct osu_data * FUNC13(const char *fname, size_t *count)
{
	FILE *f;
	char buf[1000];
	struct osu_data *osu = NULL, *last = NULL;
	size_t osu_count = 0;
	char *pos, *end;

	f = FUNC3(fname, "r");
	if (f == NULL) {
		FUNC12(MSG_ERROR, "Could not open %s", fname);
		return NULL;
	}

	while (FUNC2(buf, sizeof(buf), f)) {
		pos = FUNC9(buf, '\n');
		if (pos)
			*pos = '\0';

		if (FUNC10(buf, "OSU-PROVIDER ", 13) == 0) {
			last = FUNC7(osu, (osu_count + 1) * sizeof(*osu));
			if (last == NULL)
				break;
			osu = last;
			last = &osu[osu_count++];
			FUNC4(last, 0, sizeof(*last));
			FUNC8(last->bssid, sizeof(last->bssid), "%s",
				 buf + 13);
			continue;
		}
		if (!last)
			continue;

		if (FUNC10(buf, "uri=", 4) == 0) {
			FUNC8(last->url, sizeof(last->url), "%s", buf + 4);
			continue;
		}

		if (FUNC10(buf, "methods=", 8) == 0) {
			last->methods = FUNC11(buf + 8, NULL, 16);
			continue;
		}

		if (FUNC10(buf, "osu_ssid=", 9) == 0) {
			FUNC8(last->osu_ssid, sizeof(last->osu_ssid),
				 "%s", buf + 9);
			continue;
		}

		if (FUNC10(buf, "osu_ssid2=", 10) == 0) {
			FUNC8(last->osu_ssid2, sizeof(last->osu_ssid2),
				 "%s", buf + 10);
			continue;
		}

		if (FUNC6(buf, "osu_nai=", 8) == 0) {
			FUNC5(last->osu_nai, sizeof(last->osu_nai),
				    "%s", buf + 8);
			continue;
		}

		if (FUNC6(buf, "osu_nai2=", 9) == 0) {
			FUNC5(last->osu_nai2, sizeof(last->osu_nai2),
				    "%s", buf + 9);
			continue;
		}

		if (FUNC10(buf, "friendly_name=", 14) == 0) {
			struct osu_lang_text *txt;
			if (last->friendly_name_count == MAX_OSU_VALS)
				continue;
			pos = FUNC9(buf + 14, ':');
			if (pos == NULL)
				continue;
			*pos++ = '\0';
			txt = &last->friendly_name[last->friendly_name_count++];
			FUNC8(txt->lang, sizeof(txt->lang), "%s", buf + 14);
			FUNC8(txt->text, sizeof(txt->text), "%s", pos);
		}

		if (FUNC10(buf, "desc=", 5) == 0) {
			struct osu_lang_text *txt;
			if (last->serv_desc_count == MAX_OSU_VALS)
				continue;
			pos = FUNC9(buf + 5, ':');
			if (pos == NULL)
				continue;
			*pos++ = '\0';
			txt = &last->serv_desc[last->serv_desc_count++];
			FUNC8(txt->lang, sizeof(txt->lang), "%s", buf + 5);
			FUNC8(txt->text, sizeof(txt->text), "%s", pos);
		}

		if (FUNC10(buf, "icon=", 5) == 0) {
			struct osu_icon *icon;
			if (last->icon_count == MAX_OSU_VALS)
				continue;
			icon = &last->icon[last->icon_count++];
			icon->id = FUNC0(buf + 5);
			pos = FUNC9(buf, ':');
			if (pos == NULL)
				continue;
			pos = FUNC9(pos + 1, ':');
			if (pos == NULL)
				continue;
			pos = FUNC9(pos + 1, ':');
			if (pos == NULL)
				continue;
			pos++;
			end = FUNC9(pos, ':');
			if (!end)
				continue;
			*end = '\0';
			FUNC8(icon->lang, sizeof(icon->lang), "%s", pos);
			pos = end + 1;

			end = FUNC9(pos, ':');
			if (end)
				*end = '\0';
			FUNC8(icon->mime_type, sizeof(icon->mime_type),
				 "%s", pos);
			if (!pos)
				continue;
			pos = end + 1;

			end = FUNC9(pos, ':');
			if (end)
				*end = '\0';
			FUNC8(icon->filename, sizeof(icon->filename),
				 "%s", pos);
			continue;
		}
	}

	FUNC1(f);

	*count = osu_count;
	return osu;
}