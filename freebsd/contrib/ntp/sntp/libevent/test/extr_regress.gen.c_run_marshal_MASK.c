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
struct run {int some_bytes_length; int notes_length; int other_numbers_length; int /*<<< orphan*/ * other_numbers_data; scalar_t__ other_numbers_set; int /*<<< orphan*/  large_number_data; scalar_t__ large_number_set; int /*<<< orphan*/ * notes_data; scalar_t__ notes_set; int /*<<< orphan*/  fixed_bytes_data; int /*<<< orphan*/  some_bytes_data; scalar_t__ some_bytes_set; int /*<<< orphan*/  how_data; } ;
struct evbuffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RUN_FIXED_BYTES ; 
 int /*<<< orphan*/  RUN_HOW ; 
 int /*<<< orphan*/  RUN_LARGE_NUMBER ; 
 int /*<<< orphan*/  RUN_NOTES ; 
 int /*<<< orphan*/  RUN_OTHER_NUMBERS ; 
 int /*<<< orphan*/  RUN_SOME_BYTES ; 
 int /*<<< orphan*/  FUNC0 (struct evbuffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct evbuffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct evbuffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(struct evbuffer *evbuf, const struct run *tmp){
  FUNC3(evbuf, RUN_HOW, tmp->how_data);
  if (tmp->some_bytes_set) {
    FUNC0(evbuf, RUN_SOME_BYTES, tmp->some_bytes_data, tmp->some_bytes_length);
  }
  FUNC0(evbuf, RUN_FIXED_BYTES, tmp->fixed_bytes_data, (24));
  if (tmp->notes_set) {
    {
      int i;
      for (i = 0; i < tmp->notes_length; ++i) {
    FUNC3(evbuf, RUN_NOTES, tmp->notes_data[i]);
      }
    }
  }
  if (tmp->large_number_set) {
    FUNC2(evbuf, RUN_LARGE_NUMBER, tmp->large_number_data);
  }
  if (tmp->other_numbers_set) {
    {
      int i;
      for (i = 0; i < tmp->other_numbers_length; ++i) {
    FUNC1(evbuf, RUN_OTHER_NUMBERS, tmp->other_numbers_data[i]);
      }
    }
  }
}