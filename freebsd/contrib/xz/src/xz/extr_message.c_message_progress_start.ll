; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_message.c_message_progress_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_message.c_message_progress_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@progress_strm = common dso_local global i32* null, align 8
@expected_in_size = common dso_local global i32 0, align 4
@progress_started = common dso_local global i32 0, align 4
@verbosity = common dso_local global i64 0, align 8
@V_VERBOSE = common dso_local global i64 0, align 8
@progress_automatic = common dso_local global i64 0, align 8
@progress_needs_updating = common dso_local global i32 0, align 4
@progress_next_update = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @message_progress_start(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32*, i32** %3, align 8
  store i32* %5, i32** @progress_strm, align 8
  %6 = load i32, i32* %4, align 4
  store i32 %6, i32* @expected_in_size, align 4
  store i32 1, i32* @progress_started, align 4
  %7 = load i64, i64* @verbosity, align 8
  %8 = load i64, i64* @V_VERBOSE, align 8
  %9 = icmp sge i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i64, i64* @progress_automatic, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 1, i32* @progress_needs_updating, align 4
  store i32 1000, i32* @progress_next_update, align 4
  br label %14

14:                                               ; preds = %13, %10, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
