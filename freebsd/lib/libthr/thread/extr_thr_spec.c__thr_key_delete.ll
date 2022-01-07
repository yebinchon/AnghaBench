; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_spec.c__thr_key_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_spec.c__thr_key_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.pthread = type { i32 }

@PTHREAD_KEYS_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@_keytable_lock = common dso_local global i32 0, align 4
@_thread_keytable = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_thr_key_delete(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.pthread*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = sub nsw i32 %7, 1
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @PTHREAD_KEYS_MAX, align 4
  %11 = icmp uge i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %2, align 4
  br label %37

14:                                               ; preds = %1
  %15 = call %struct.pthread* (...) @_get_curthread()
  store %struct.pthread* %15, %struct.pthread** %4, align 8
  %16 = load %struct.pthread*, %struct.pthread** %4, align 8
  %17 = call i32 @THR_LOCK_ACQUIRE(%struct.pthread* %16, i32* @_keytable_lock)
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_thread_keytable, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %14
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_thread_keytable, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  store i32 0, i32* %6, align 4
  br label %33

31:                                               ; preds = %14
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %31, %25
  %34 = load %struct.pthread*, %struct.pthread** %4, align 8
  %35 = call i32 @THR_LOCK_RELEASE(%struct.pthread* %34, i32* @_keytable_lock)
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %33, %12
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.pthread* @_get_curthread(...) #1

declare dso_local i32 @THR_LOCK_ACQUIRE(%struct.pthread*, i32*) #1

declare dso_local i32 @THR_LOCK_RELEASE(%struct.pthread*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
