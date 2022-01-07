; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.sig.c_handle_pending_signals.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.sig.c_handle_pending_signals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@phup_disabled = common dso_local global i32 0, align 4
@phup_pending = common dso_local global i64 0, align 8
@handle_interrupt = common dso_local global i32 0, align 4
@pintr_disabled = common dso_local global i32 0, align 4
@pintr_pending = common dso_local global i64 0, align 8
@pchild_disabled = common dso_local global i32 0, align 4
@pchild_pending = common dso_local global i64 0, align 8
@alrmcatch_disabled = common dso_local global i32 0, align 4
@alrmcatch_pending = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handle_pending_signals() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @phup_disabled, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %0
  %5 = load i64, i64* @phup_pending, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %4
  store i64 0, i64* @phup_pending, align 8
  %8 = load i32, i32* @handle_interrupt, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @handle_interrupt, align 4
  %10 = call i32 (...) @phup()
  %11 = load i32, i32* @handle_interrupt, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* @handle_interrupt, align 4
  br label %13

13:                                               ; preds = %7, %4, %0
  %14 = load i32, i32* @pintr_disabled, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %13
  %17 = load i64, i64* @pintr_pending, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  store i64 0, i64* @pintr_pending, align 8
  %20 = load i32, i32* @handle_interrupt, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @handle_interrupt, align 4
  %22 = call i32 (...) @pintr()
  %23 = load i32, i32* @handle_interrupt, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* @handle_interrupt, align 4
  store i32 1, i32* %1, align 4
  br label %25

25:                                               ; preds = %19, %16, %13
  %26 = load i32, i32* @pchild_disabled, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %25
  %29 = load i64, i64* @pchild_pending, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  store i64 0, i64* @pchild_pending, align 8
  %32 = load i32, i32* @handle_interrupt, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* @handle_interrupt, align 4
  %34 = call i32 (...) @pchild()
  %35 = load i32, i32* @handle_interrupt, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* @handle_interrupt, align 4
  br label %37

37:                                               ; preds = %31, %28, %25
  %38 = load i32, i32* @alrmcatch_disabled, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %37
  %41 = load i64, i64* @alrmcatch_pending, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  store i64 0, i64* @alrmcatch_pending, align 8
  %44 = load i32, i32* @handle_interrupt, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* @handle_interrupt, align 4
  %46 = call i32 (...) @alrmcatch()
  %47 = load i32, i32* @handle_interrupt, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* @handle_interrupt, align 4
  br label %49

49:                                               ; preds = %43, %40, %37
  %50 = load i32, i32* %1, align 4
  ret i32 %50
}

declare dso_local i32 @phup(...) #1

declare dso_local i32 @pintr(...) #1

declare dso_local i32 @pchild(...) #1

declare dso_local i32 @alrmcatch(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
