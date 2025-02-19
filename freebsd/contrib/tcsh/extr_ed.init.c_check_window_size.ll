; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.init.c_check_window_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.init.c_check_window_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pintr_disabled = common dso_local global i32 0, align 4
@disabled_cleanup = common dso_local global i32 0, align 4
@GettingInput = common dso_local global i64 0, align 8
@windowchg = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_window_size(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @pintr_disabled, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @pintr_disabled, align 4
  %7 = load i32, i32* @disabled_cleanup, align 4
  %8 = call i32 @cleanup_push(i32* @pintr_disabled, i32 %7)
  %9 = call i64 @GetSize(i32* %3, i32* %4)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* %2, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %11, %1
  %15 = load i64, i64* @GettingInput, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = call i32 (...) @ClearLines()
  %19 = call i32 (...) @ClearDisp()
  %20 = call i32 @MoveToLine(i32 0)
  %21 = call i32 @MoveToChar(i32 0)
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @ChangeSize(i32 %22, i32 %23)
  %25 = call i32 (...) @Refresh()
  br label %30

26:                                               ; preds = %14
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @ChangeSize(i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %17
  br label %31

31:                                               ; preds = %30, %11
  store i64 0, i64* @windowchg, align 8
  %32 = call i32 @cleanup_until(i32* @pintr_disabled)
  ret void
}

declare dso_local i32 @cleanup_push(i32*, i32) #1

declare dso_local i64 @GetSize(i32*, i32*) #1

declare dso_local i32 @ClearLines(...) #1

declare dso_local i32 @ClearDisp(...) #1

declare dso_local i32 @MoveToLine(i32) #1

declare dso_local i32 @MoveToChar(i32) #1

declare dso_local i32 @ChangeSize(i32, i32) #1

declare dso_local i32 @Refresh(...) #1

declare dso_local i32 @cleanup_until(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
