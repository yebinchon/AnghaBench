; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_kill.c__Tthr_kill.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_kill.c__Tthr_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread = type { i32 }

@_SIG_MAXSIG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_Tthr_kill(%struct.pthread* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pthread*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pthread*, align 8
  %7 = alloca i32, align 4
  store %struct.pthread* %0, %struct.pthread** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @_SIG_MAXSIG, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10, %2
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %3, align 4
  br label %48

16:                                               ; preds = %10
  %17 = call %struct.pthread* (...) @_get_curthread()
  store %struct.pthread* %17, %struct.pthread** %6, align 8
  %18 = load %struct.pthread*, %struct.pthread** %6, align 8
  %19 = load %struct.pthread*, %struct.pthread** %4, align 8
  %20 = icmp eq %struct.pthread* %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load i32, i32* %5, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load %struct.pthread*, %struct.pthread** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @_thr_send_sig(%struct.pthread* %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %21
  store i32 0, i32* %7, align 4
  br label %46

29:                                               ; preds = %16
  %30 = load %struct.pthread*, %struct.pthread** %6, align 8
  %31 = load %struct.pthread*, %struct.pthread** %4, align 8
  %32 = call i32 @_thr_find_thread(%struct.pthread* %30, %struct.pthread* %31, i32 0)
  store i32 %32, i32* %7, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load i32, i32* %5, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load %struct.pthread*, %struct.pthread** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @_thr_send_sig(%struct.pthread* %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %34
  %42 = load %struct.pthread*, %struct.pthread** %6, align 8
  %43 = load %struct.pthread*, %struct.pthread** %4, align 8
  %44 = call i32 @THR_THREAD_UNLOCK(%struct.pthread* %42, %struct.pthread* %43)
  br label %45

45:                                               ; preds = %41, %29
  br label %46

46:                                               ; preds = %45, %28
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %14
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.pthread* @_get_curthread(...) #1

declare dso_local i32 @_thr_send_sig(%struct.pthread*, i32) #1

declare dso_local i32 @_thr_find_thread(%struct.pthread*, %struct.pthread*, i32) #1

declare dso_local i32 @THR_THREAD_UNLOCK(%struct.pthread*, %struct.pthread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
