; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_edit.c_search_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_edit.c_search_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EDIT_KEY_EOF = common dso_local global i32 0, align 4
@EDIT_KEY_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @search_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @search_key(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %15 [
    i32 132, label %5
    i32 136, label %5
    i32 130, label %5
    i32 129, label %5
    i32 131, label %5
    i32 133, label %5
    i32 139, label %5
    i32 138, label %5
    i32 134, label %8
    i32 128, label %8
    i32 137, label %11
    i32 140, label %11
    i32 135, label %13
  ]

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  %6 = call i32 (...) @search_stop()
  %7 = load i32, i32* %3, align 4
  store i32 %7, i32* %2, align 4
  br label %27

8:                                                ; preds = %1, %1
  %9 = call i32 (...) @search_cancel()
  %10 = load i32, i32* @EDIT_KEY_EOF, align 4
  store i32 %10, i32* %2, align 4
  br label %27

11:                                               ; preds = %1, %1
  %12 = call i32 (...) @search_backspace()
  br label %25

13:                                               ; preds = %1
  %14 = call i32 (...) @search_next()
  br label %25

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = icmp uge i32 %16, 32
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load i32, i32* %3, align 4
  %20 = icmp ule i32 %19, 255
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @search_char(i32 %22)
  br label %24

24:                                               ; preds = %21, %18, %15
  br label %25

25:                                               ; preds = %24, %13, %11
  %26 = load i32, i32* @EDIT_KEY_NONE, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %25, %8, %5
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @search_stop(...) #1

declare dso_local i32 @search_cancel(...) #1

declare dso_local i32 @search_backspace(...) #1

declare dso_local i32 @search_next(...) #1

declare dso_local i32 @search_char(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
