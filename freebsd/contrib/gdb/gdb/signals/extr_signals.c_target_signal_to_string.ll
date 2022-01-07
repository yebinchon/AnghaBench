; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/signals/extr_signals.c_target_signal_to_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/signals/extr_signals.c_target_signal_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@TARGET_SIGNAL_FIRST = common dso_local global i32 0, align 4
@TARGET_SIGNAL_LAST = common dso_local global i32 0, align 4
@signals = common dso_local global %struct.TYPE_2__* null, align 8
@TARGET_SIGNAL_UNKNOWN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @target_signal_to_string(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @TARGET_SIGNAL_FIRST, align 4
  %6 = icmp uge i32 %4, %5
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @TARGET_SIGNAL_LAST, align 4
  %10 = icmp ule i32 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @signals, align 8
  %13 = load i32, i32* %3, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %2, align 8
  br label %24

18:                                               ; preds = %7, %1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @signals, align 8
  %20 = load i64, i64* @TARGET_SIGNAL_UNKNOWN, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %2, align 8
  br label %24

24:                                               ; preds = %18, %11
  %25 = load i8*, i8** %2, align 8
  ret i8* %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
