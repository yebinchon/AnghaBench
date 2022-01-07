; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_signals.c_signals_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_signals.c_signals_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i64, i64, i32 }

@signals_init.sigs = internal constant [6 x i32] [i32 132, i32 130, i32 133, i32 131, i32 129, i32 128], align 16
@hooked_signals = common dso_local global i32 0, align 4
@signal_handler = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i64 0, align 8
@signals_are_initialized = common dso_local global i32 0, align 4
@message_progress_sigs = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @signals_init() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.sigaction, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.sigaction, align 8
  %5 = call i32 @sigemptyset(i32* @hooked_signals)
  store i64 0, i64* %1, align 8
  br label %6

6:                                                ; preds = %15, %0
  %7 = load i64, i64* %1, align 8
  %8 = call i64 @ARRAY_SIZE(i32* getelementptr inbounds ([6 x i32], [6 x i32]* @signals_init.sigs, i64 0, i64 0))
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  %11 = load i64, i64* %1, align 8
  %12 = getelementptr inbounds [6 x i32], [6 x i32]* @signals_init.sigs, i64 0, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @sigaddset(i32* @hooked_signals, i32 %13)
  br label %15

15:                                               ; preds = %10
  %16 = load i64, i64* %1, align 8
  %17 = add i64 %16, 1
  store i64 %17, i64* %1, align 8
  br label %6

18:                                               ; preds = %6
  %19 = load i32, i32* @hooked_signals, align 4
  %20 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 2
  store i32 %19, i32* %20, align 8
  %21 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 0
  store i64 ptrtoint (i32* @signal_handler to i64), i64* %22, align 8
  store i64 0, i64* %3, align 8
  br label %23

23:                                               ; preds = %48, %18
  %24 = load i64, i64* %3, align 8
  %25 = call i64 @ARRAY_SIZE(i32* getelementptr inbounds ([6 x i32], [6 x i32]* @signals_init.sigs, i64 0, i64 0))
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %51

27:                                               ; preds = %23
  %28 = load i64, i64* %3, align 8
  %29 = getelementptr inbounds [6 x i32], [6 x i32]* @signals_init.sigs, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @sigaction(i32 %30, %struct.sigaction* null, %struct.sigaction* %4)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SIG_IGN, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %48

39:                                               ; preds = %33, %27
  %40 = load i64, i64* %3, align 8
  %41 = getelementptr inbounds [6 x i32], [6 x i32]* @signals_init.sigs, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @sigaction(i32 %42, %struct.sigaction* %2, %struct.sigaction* null)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = call i32 (...) @message_signal_handler()
  br label %47

47:                                               ; preds = %45, %39
  br label %48

48:                                               ; preds = %47, %38
  %49 = load i64, i64* %3, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %3, align 8
  br label %23

51:                                               ; preds = %23
  store i32 1, i32* @signals_are_initialized, align 4
  ret void
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i64 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #1

declare dso_local i32 @message_signal_handler(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
