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
typedef  int wchar_t ;

/* Variables and functions */
 int /*<<< orphan*/  XOF_COLUMNS ; 
 int /*<<< orphan*/  info ; 
 int /*<<< orphan*/  info_count ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (int,char**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

int
FUNC13 (int argc, char **argv)
{
    struct employee {
	const char *e_first;
	const char *e_nic;
	const char *e_last;
	unsigned e_dept;
	unsigned e_percent;
    } employees[] = {
	{ "Jim", "რეგტ", "გთხოვთ ახ", 431, 90 },
	{ "Terry", "<one", "Οὐχὶ ταὐτὰ παρίσταταί μοι Jones", 660, 90 },
	{ "Leslie", "Les", "Patterson", 341,60 },
	{ "Ashley", "Ash", "Meter & Smith", 1440, 40 },
	{ "0123456789", "0123456789", "012345678901234567890", 1440, 40 },
	{ "ახლა", "გაიარო", "საერთაშორისო", 123, 90 },
	{ "෴ණ්ණ෴෴ණ්ණ෴", "Mick",
	  "෴ණ්ණ෴෴ණ්ණ෴෴ණ්ණ෴෴෴", 110, 20 },
	{ NULL, NULL }
    }, *ep = employees;
    int rc, i;

    argc = FUNC9(argc, argv);
    if (argc < 0)
	return 1;

    FUNC11(NULL, info, info_count);
    FUNC10(NULL, XOF_COLUMNS);

    FUNC6("indian-languages");
    
    FUNC4("{T:Sample text}\n");
    FUNC4("This sample text was taken from the Punjabi Wikipedia "
	    "article on Lahore and transliterated into the Latin script.\n");

    FUNC4("{T:Gurmukhi:}\n");
    FUNC4("{:gurmukhi}\n",
	    "ਲਹੌਰ ਪਾਕਿਸਤਾਨੀ ਪੰਜਾਬ ਦੀ ਰਾਜਧਾਨੀ ਹੈ । ਲੋਕ ਗਿਣਤੀ ਦੇ ਨਾਲ ਕਰਾਚੀ ਤੋਂ ਬਾਅਦ ਲਹੌਰ ਦੂਜਾ ਸਭ ਤੋਂ ਵੱਡਾ ਸ਼ਹਿਰ ਹੈ । ਲਹੌਰ ਪਾਕਿਸਤਾਨ ਦਾ ਸਿਆਸੀ, ਰਹਤਲੀ ਤੇ ਪੜ੍ਹਾਈ ਦਾ ਗੜ੍ਹ ਹੈ ਅਤੇ ਇਸ ਲਈ ਇਹਨੂੰ ਪਾਕਿਸਤਾਨ ਦਾ ਦਿਲ ਵੀ ਕਿਹਾ ਜਾਂਦਾ ਹੈ । ਲਹੌਰ ਦਰਿਆ-ਏ-ਰਾਵੀ ਦੇ ਕੰਢੇ ਤੇ ਵਸਦਾ ਹੈ ਤੇ ਇਸਦੀ ਲੋਕ ਗਿਣਤੀ ਇੱਕ ਕਰੋੜ ਦੇ ਨੇੜੇ ਹੈ ।");


    FUNC4("{T:Shahmukhi:}\n");
    FUNC4("{:shahmukhi}\n",
	    "لہور پاکستانی پنجاب دا دارالحکومت اے۔ لوک گنتی دے نال کراچی توں بعد لہور دوجا سبھ توں وڈا شہر اے۔ لہور پاکستان دا سیاسی، رہتلی تے پڑھائی دا گڑھ اے تے اس لئی ایھنوں پاکستان دا دل وی کیھا جاندا اے۔ لہور دریاۓ راوی دے کنڈھے تے وسدا اے اسدی لوک گنتی اک کروڑ دے نیڑے اے ۔");

    FUNC4("{T:Transliteration}:\n");
    FUNC4("{:tranliteration}\n",
	    "lahor pākistān panjāb dā dārul hakūmat ē. lōk giṇtī dē nāḷ karācī tō᷈ bāad lahor dūjā sab tō᷈ vaḍḍā shahr ē. lahor pākistān dā siāsī, rahtalī tē paṛā̀ī dā gā́ṛ ē tē is laī ihnū᷈ pākistān dā dil vī kehā jāndā ē. lahor dariāē rāvī dē kanḍē tē vasdā ē. isdī lōk giṇtī ikk karōṛ dē nēṛē ē.");

    FUNC1("indian-languages");

    FUNC6("employees");

    wchar_t wc[] = { L'෴', L'ණ', L'්', L'ණ', 0x17D2, L'෴', 0 };
    for (i = 0; wc[i]; i++)
	FUNC4("Wide char: {lq:wc/%lc - %#lx - %d}\n",
		wc[i], (unsigned long) wc[i], FUNC12(wc[i]));

    wchar_t msg[] = { L'1', 0x034f, L'2', 0x20dd, 0 };
    for (i = 0; msg[i]; i++)
	FUNC4("Wide char: {lq:wc/%lc - %#lx - %d}\n",
		msg[i], (unsigned long) msg[i], FUNC12((int) msg[i]));
    FUNC4("Cool: [{:fancy/%ls}]\n", msg);

    FUNC4("Οὐχὶ ταὐτὰ παρίσταταί μοι {:v1/%s}, {:v2/%s}\n",
	    "γιγνώσκειν", "ὦ ἄνδρες ᾿Αθηναῖοι");

    rc = FUNC4("გთხოვთ {:v1/%s} {:v2/%s}\n",
	    "ახლავე გაიაროთ რეგისტრაცია",
	    "Unicode-ის მეათე საერთაშორისო");
    FUNC4("{Twc:Width}{:width/%d}\n", rc);

    /* Okay, Sinhala is uber cool ... */
    rc = FUNC4("[{:sinhala}]\n", "෴ණ්ණ෴");
    FUNC4("{Twc:Width}{:width/%d}\n", rc);

    rc = FUNC4("[{:sinhala}]\n", "෴");
    FUNC4("{Twc:Width}{:width/%d}\n", rc);

    rc = FUNC4("[{:sinhala/%-4..4s/%s}]\n", "෴ණ්ණ෴෴ණ්ණ෴");
    FUNC4("{Twc:Width}{:width/%d}\n", rc);

    FUNC4("[{:not-sinhala/%-4..4s/%s}]\n", "123456");

    rc = FUNC4("[{:tag/%s}]\n", "ර්‍ඝ");
    FUNC4("{Twc:Width}{:width/%d}\n", rc);

    FUNC8("employee");

    FUNC4("{T:First Name/%-25s}{T:Last Name/%-14s}"
	    "{T:/%-12s}{T:Time (%)}\n", "Department");
    for ( ; ep->e_first; ep++) {
	FUNC7("employee");
	FUNC4("{[:-25}{:first-name/%s} ({:nic-name/\"%s\"}){]:}"
		"{:last-name/%-14..14s/%s}"
		"{:department/%8u}{:percent-time/%8u}\n",
		ep->e_first, ep->e_nic, ep->e_last, ep->e_dept, ep->e_percent);
	if (ep->e_percent > 50) {
	    FUNC0("full-time", "%s", "honest & for true");
	    FUNC4("{e:benefits/%s}", "full");
	}
	FUNC2("employee");
    }

    FUNC3("employee");
    FUNC1("employees");

    FUNC5();

    return 0;
}