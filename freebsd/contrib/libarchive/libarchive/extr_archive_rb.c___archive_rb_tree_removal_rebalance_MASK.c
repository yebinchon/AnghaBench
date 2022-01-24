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
struct archive_rb_tree {int dummy; } ;
struct archive_rb_node {struct archive_rb_node** rb_nodes; struct archive_rb_node* rb_right; struct archive_rb_node* rb_left; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct archive_rb_node*) ; 
 unsigned int RB_DIR_OTHER ; 
 struct archive_rb_node* FUNC1 (struct archive_rb_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_rb_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_rb_node*) ; 
 unsigned int FUNC4 (struct archive_rb_node*) ; 
 scalar_t__ FUNC5 (struct archive_rb_node*) ; 
 scalar_t__ FUNC6 (struct archive_rb_tree*,struct archive_rb_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct archive_rb_node*,unsigned int) ; 

__attribute__((used)) static void
FUNC8(struct archive_rb_tree *rbt,
    struct archive_rb_node *parent, unsigned int which)
{

	while (FUNC0(parent->rb_nodes[which])) {
		unsigned int other = which ^ RB_DIR_OTHER;
		struct archive_rb_node *brother = parent->rb_nodes[other];

		if (brother == NULL)
			return;/* The tree may be broken. */
		/*
		 * For cases 1, 2a, and 2b, our brother's children must
		 * be black and our father must be black
		 */
		if (FUNC0(parent)
		    && FUNC0(brother->rb_left)
		    && FUNC0(brother->rb_right)) {
			if (FUNC5(brother)) {
				/*
				 * Case 1: Our brother is red, swap its
				 * position (and colors) with our parent. 
				 * This should now be case 2b (unless C or E
				 * has a red child which is case 3; thus no
				 * explicit branch to case 2b).
				 *
				 *    B         ->        D
				 *  A     d     ->    b     E
				 *      C   E   ->  A   C
				 */
				FUNC7(parent, other);
				brother = parent->rb_nodes[other];
				if (brother == NULL)
					return;/* The tree may be broken. */
			} else {
				/*
				 * Both our parent and brother are black.
				 * Change our brother to red, advance up rank
				 * and go through the loop again.
				 *
				 *    B         ->   *B
				 * *A     D     ->  A     d
				 *      C   E   ->      C   E
				 */
				FUNC3(brother);
				if (FUNC6(rbt, parent))
					return;	/* root == parent == black */
				which = FUNC4(parent);
				parent = FUNC1(parent);
				continue;
			}
		}
		/*
		 * Avoid an else here so that case 2a above can hit either
		 * case 2b, 3, or 4.
		 */
		if (FUNC5(parent)
		    && FUNC0(brother)
		    && FUNC0(brother->rb_left)
		    && FUNC0(brother->rb_right)) {
			/*
			 * We are black, our father is red, our brother and
			 * both nephews are black.  Simply invert/exchange the
			 * colors of our father and brother (to black and red
			 * respectively).
			 *
			 *	|    f        -->    F        |
			 *	|  *     B    -->  *     b    |
			 *	|      N   N  -->      N   N  |
			 */
			FUNC2(parent);
			FUNC3(brother);
			break;		/* We're done! */
		} else {
			/*
			 * Our brother must be black and have at least one
			 * red child (it may have two).
			 */
			if (FUNC0(brother->rb_nodes[other])) {
				/*
				 * Case 3: our brother is black, our near
				 * nephew is red, and our far nephew is black.
				 * Swap our brother with our near nephew.  
				 * This result in a tree that matches case 4.
				 * (Our father could be red or black).
				 *
				 *	|    F      -->    F      |
				 *	|  x     B  -->  x   B    |
				 *	|      n    -->        n  |
				 */
				FUNC7(brother, which);
				brother = parent->rb_nodes[other];
			}
			/*
			 * Case 4: our brother is black and our far nephew
			 * is red.  Swap our father and brother locations and
			 * change our far nephew to black.  (these can be
			 * done in either order so we change the color first).
			 * The result is a valid red-black tree and is a
			 * terminal case.  (again we don't care about the
			 * father's color)
			 *
			 * If the father is red, we will get a red-black-black
			 * tree:
			 *	|  f      ->  f      -->    b    |
			 *	|    B    ->    B    -->  F   N  |
			 *	|      n  ->      N  -->         |
			 *
			 * If the father is black, we will get an all black
			 * tree:
			 *	|  F      ->  F      -->    B    |
			 *	|    B    ->    B    -->  F   N  |
			 *	|      n  ->      N  -->         |
			 *
			 * If we had two red nephews, then after the swap,
			 * our former father would have a red grandson. 
			 */
			if (brother->rb_nodes[other] == NULL)
				return;/* The tree may be broken. */
			FUNC2(brother->rb_nodes[other]);
			FUNC7(parent, other);
			break;		/* We're done! */
		}
	}
}