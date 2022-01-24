#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int32_t ;
struct TYPE_27__ {scalar_t__ i_cnt; size_t i_next; TYPE_4__* i_event; scalar_t__ (* scr_event ) (TYPE_2__*,TYPE_4__*,int,int) ;int /*<<< orphan*/  seqb; } ;
struct TYPE_28__ {int e_event; int e_c; scalar_t__ e_value; TYPE_3__ e_ch; } ;
struct TYPE_26__ {TYPE_3__* gp; } ;
struct TYPE_25__ {int* output; int ilen; int olen; } ;
typedef  TYPE_1__ SEQ ;
typedef  TYPE_2__ SCR ;
typedef  TYPE_3__ GS ;
typedef  TYPE_4__ EVENT ;

/* Variables and functions */
 int CH_MAPPED ; 
 int CH_NOMAP ; 
 int CH_NOT_DIGIT ; 
 int EC_INTERRUPT ; 
 int EC_MAPCOMMAND ; 
 int EC_MAPINPUT ; 
 int EC_MAPNODIGIT ; 
 int EC_QUOTED ; 
 int EC_RAW ; 
 int EC_TIMEOUT ; 
 int const E_CHARACTER ; 
#define  E_ERR 132 
#define  E_INTERRUPT 131 
#define  E_SIGHUP 130 
#define  E_SIGTERM 129 
#define  E_TIMEOUT 128 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  G_INTERRUPTED ; 
 int G_SCRWIN ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ K_ESCAPE ; 
 scalar_t__ K_NOTUSED ; 
 int FUNC4 (int) ; 
 int MAX_BIT_SEQ ; 
 int /*<<< orphan*/  O_ESCAPETIME ; 
 scalar_t__ FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  O_KEYTIME ; 
 int /*<<< orphan*/  O_REMAP ; 
 int /*<<< orphan*/  O_TIMEOUT ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int RCV_EMAIL ; 
 int RCV_ENDSESSION ; 
 int RCV_PRESERVE ; 
 int /*<<< orphan*/  SEQ_COMMAND ; 
 int /*<<< orphan*/  SEQ_INPUT ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int*,TYPE_4__*,int) ; 
 TYPE_1__* FUNC10 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC11 (TYPE_2__*) ; 
 scalar_t__ FUNC12 (TYPE_2__*,TYPE_4__*,int,int) ; 
 scalar_t__ FUNC13 (TYPE_2__*,TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,TYPE_4__*) ; 
 scalar_t__ FUNC15 (TYPE_2__*,int /*<<< orphan*/ *,int*,int,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int) ; 

int
FUNC17(
	SCR *sp,
	EVENT *argp,
	int timeout,
	u_int32_t flags)
{
	EVENT *evp, ev;
	GS *gp;
	SEQ *qp;
	int init_nomap, ispartial, istimeout, remap_cnt;

	gp = sp->gp;

	/* If simply checking for interrupts, argp may be NULL. */
	if (argp == NULL)
		argp = &ev;

retry:	istimeout = remap_cnt = 0;

	/*
	 * If the queue isn't empty and we're timing out for characters,
	 * return immediately.
	 */
	if (gp->i_cnt != 0 && FUNC4(EC_TIMEOUT))
		return (0);

	/*
	 * If the queue is empty, we're checking for interrupts, or we're
	 * timing out for characters, get more events.
	 */
	if (gp->i_cnt == 0 || FUNC4(EC_INTERRUPT | EC_TIMEOUT)) {
		/*
		 * If we're reading new characters, check any scripting
		 * windows for input.
		 */
		if (FUNC1(gp, G_SCRWIN) && FUNC11(sp))
			return (1);
loop:		if (gp->scr_event(sp, argp,
		    FUNC4(EC_INTERRUPT | EC_QUOTED | EC_RAW), timeout))
			return (1);
		switch (argp->e_event) {
		case E_ERR:
		case E_SIGHUP:
		case E_SIGTERM:
			/*
			 * Fatal conditions cause the file to be synced to
			 * disk immediately.
			 */
			FUNC16(sp, RCV_ENDSESSION | RCV_PRESERVE |
			    (argp->e_event == E_SIGTERM ? 0: RCV_EMAIL));
			return (1);
		case E_TIMEOUT:
			istimeout = 1;
			break;
		case E_INTERRUPT:
			/* Set the global interrupt flag. */
			FUNC2(sp->gp, G_INTERRUPTED);

			/*
			 * If the caller was interested in interrupts, return
			 * immediately.
			 */
			if (FUNC4(EC_INTERRUPT))
				return (0);
			goto append;
		default:
append:			if (FUNC14(sp, argp))
				return (1);
			break;
		}
	}

	/*
	 * If the caller was only interested in interrupts or timeouts, return
	 * immediately.  (We may have gotten characters, and that's okay, they
	 * were queued up for later use.)
	 */
	if (FUNC4(EC_INTERRUPT | EC_TIMEOUT))
		return (0);
	 
newmap:	evp = &gp->i_event[gp->i_next];

	/* 
	 * If the next event in the queue isn't a character event, return
	 * it, we're done.
	 */
	if (evp->e_event != E_CHARACTER) {
		*argp = *evp;
		FUNC7(1);
		return (0);
	}
	
	/*
	 * If the key isn't mappable because:
	 *
	 *	+ ... the timeout has expired
	 *	+ ... it's not a mappable key
	 *	+ ... neither the command or input map flags are set
	 *	+ ... there are no maps that can apply to it
	 *
	 * return it forthwith.
	 */
	if (istimeout || FUNC1(&evp->e_ch, CH_NOMAP) ||
	    !FUNC4(EC_MAPCOMMAND | EC_MAPINPUT) ||
	    ((evp->e_c & ~MAX_BIT_SEQ) == 0 &&
	    !FUNC8(gp->seqb, evp->e_c)))
		goto nomap;

	/* Search the map. */
	qp = FUNC10(sp, NULL, evp, NULL, gp->i_cnt,
	    FUNC4(EC_MAPCOMMAND) ? SEQ_COMMAND : SEQ_INPUT, &ispartial);

	/*
	 * If get a partial match, get more characters and retry the map.
	 * If time out without further characters, return the characters
	 * unmapped.
	 *
	 * !!!
	 * <escape> characters are a problem.  Cursor keys start with <escape>
	 * characters, so there's almost always a map in place that begins with
	 * an <escape> character.  If we timeout <escape> keys in the same way
	 * that we timeout other keys, the user will get a noticeable pause as
	 * they enter <escape> to terminate input mode.  If key timeout is set
	 * for a slow link, users will get an even longer pause.  Nvi used to
	 * simply timeout <escape> characters at 1/10th of a second, but this
	 * loses over PPP links where the latency is greater than 100Ms.
	 */
	if (ispartial) {
		if (FUNC5(sp, O_TIMEOUT))
			timeout = (evp->e_value == K_ESCAPE ?
			    FUNC6(sp, O_ESCAPETIME) :
			    FUNC6(sp, O_KEYTIME)) * 100;
		else
			timeout = 0;
		goto loop;
	}

	/* If no map, return the character. */
	if (qp == NULL) {
nomap:		if (!FUNC3(evp->e_c) && FUNC4(EC_MAPNODIGIT))
			goto not_digit;
		*argp = *evp;
		FUNC7(1);
		return (0);
	}

	/*
	 * If looking for the end of a digit string, and the first character
	 * of the map is it, pretend we haven't seen the character.
	 */
	if (FUNC4(EC_MAPNODIGIT) &&
	    qp->output != NULL && !FUNC3(qp->output[0])) {
not_digit:	argp->e_c = CH_NOT_DIGIT;
		argp->e_value = K_NOTUSED;
		argp->e_event = E_CHARACTER;
		FUNC0(&argp->e_ch, 0);
		return (0);
	}

	/* Find out if the initial segments are identical. */
	init_nomap = !FUNC9(qp->output, &gp->i_event[gp->i_next], qp->ilen);

	/* Delete the mapped characters from the queue. */
	FUNC7(qp->ilen);

	/* If keys mapped to nothing, go get more. */
	if (qp->output == NULL)
		goto retry;

	/* If remapping characters... */
	if (FUNC5(sp, O_REMAP)) {
		/*
		 * Periodically check for interrupts.  Always check the first
		 * time through, because it's possible to set up a map that
		 * will return a character every time, but will expand to more,
		 * e.g. "map! a aaaa" will always return a 'a', but we'll never
		 * get anywhere useful.
		 */
		if ((++remap_cnt == 1 || remap_cnt % 10 == 0) &&
		    (gp->scr_event(sp, &ev,
		    EC_INTERRUPT, 0) || ev.e_event == E_INTERRUPT)) {
			FUNC2(sp->gp, G_INTERRUPTED);
			argp->e_event = E_INTERRUPT;
			return (0);
		}

		/*
		 * If an initial part of the characters mapped, they are not
		 * further remapped -- return the first one.  Push the rest
		 * of the characters, or all of the characters if no initial
		 * part mapped, back on the queue.
		 */
		if (init_nomap) {
			if (FUNC15(sp, NULL, qp->output + qp->ilen,
			    qp->olen - qp->ilen, CH_MAPPED))
				return (1);
			if (FUNC15(sp, NULL,
			    qp->output, qp->ilen, CH_NOMAP | CH_MAPPED))
				return (1);
			evp = &gp->i_event[gp->i_next];
			goto nomap;
		}
		if (FUNC15(sp, NULL, qp->output, qp->olen, CH_MAPPED))
			return (1);
		goto newmap;
	}

	/* Else, push the characters on the queue and return one. */
	if (FUNC15(sp, NULL, qp->output, qp->olen, CH_MAPPED | CH_NOMAP))
		return (1);

	goto nomap;
}