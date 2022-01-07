; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.set.c_update_wordchars.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.set.c_update_wordchars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@word_chars = common dso_local global i64 0, align 8
@STR_WORD_CHARS = common dso_local global i64 0, align 8
@STR_WORD_CHARS_VI = common dso_local global i64 0, align 8
@VImode = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_wordchars() #0 {
  %1 = load i64, i64* @word_chars, align 8
  %2 = load i64, i64* @STR_WORD_CHARS, align 8
  %3 = icmp eq i64 %1, %2
  br i1 %3, label %8, label %4

4:                                                ; preds = %0
  %5 = load i64, i64* @word_chars, align 8
  %6 = load i64, i64* @STR_WORD_CHARS_VI, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %17

8:                                                ; preds = %4, %0
  %9 = load i64, i64* @VImode, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = load i64, i64* @STR_WORD_CHARS_VI, align 8
  br label %15

13:                                               ; preds = %8
  %14 = load i64, i64* @STR_WORD_CHARS, align 8
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i64 [ %12, %11 ], [ %14, %13 ]
  store i64 %16, i64* @word_chars, align 8
  br label %17

17:                                               ; preds = %15, %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
