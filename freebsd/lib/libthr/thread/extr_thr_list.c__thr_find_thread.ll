; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_list.c__thr_find_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_list.c__thr_find_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@PS_DEAD = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_thr_find_thread(%struct.pthread* %0, %struct.pthread* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pthread*, align 8
  %6 = alloca %struct.pthread*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pthread*, align 8
  %9 = alloca i32, align 4
  store %struct.pthread* %0, %struct.pthread** %5, align 8
  store %struct.pthread* %1, %struct.pthread** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.pthread*, %struct.pthread** %6, align 8
  %11 = icmp eq %struct.pthread* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %4, align 4
  br label %45

14:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  %15 = load %struct.pthread*, %struct.pthread** %5, align 8
  %16 = call i32 @THREAD_LIST_RDLOCK(%struct.pthread* %15)
  %17 = load %struct.pthread*, %struct.pthread** %6, align 8
  %18 = call %struct.pthread* @_thr_hash_find(%struct.pthread* %17)
  store %struct.pthread* %18, %struct.pthread** %8, align 8
  %19 = load %struct.pthread*, %struct.pthread** %8, align 8
  %20 = icmp ne %struct.pthread* %19, null
  br i1 %20, label %21, label %39

21:                                               ; preds = %14
  %22 = load %struct.pthread*, %struct.pthread** %5, align 8
  %23 = load %struct.pthread*, %struct.pthread** %8, align 8
  %24 = call i32 @THR_THREAD_LOCK(%struct.pthread* %22, %struct.pthread* %23)
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %21
  %28 = load %struct.pthread*, %struct.pthread** %8, align 8
  %29 = getelementptr inbounds %struct.pthread, %struct.pthread* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PS_DEAD, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.pthread*, %struct.pthread** %5, align 8
  %35 = load %struct.pthread*, %struct.pthread** %8, align 8
  %36 = call i32 @THR_THREAD_UNLOCK(%struct.pthread* %34, %struct.pthread* %35)
  %37 = load i32, i32* @ESRCH, align 4
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %33, %27, %21
  br label %41

39:                                               ; preds = %14
  %40 = load i32, i32* @ESRCH, align 4
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %39, %38
  %42 = load %struct.pthread*, %struct.pthread** %5, align 8
  %43 = call i32 @THREAD_LIST_UNLOCK(%struct.pthread* %42)
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %41, %12
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @THREAD_LIST_RDLOCK(%struct.pthread*) #1

declare dso_local %struct.pthread* @_thr_hash_find(%struct.pthread*) #1

declare dso_local i32 @THR_THREAD_LOCK(%struct.pthread*, %struct.pthread*) #1

declare dso_local i32 @THR_THREAD_UNLOCK(%struct.pthread*, %struct.pthread*) #1

declare dso_local i32 @THREAD_LIST_UNLOCK(%struct.pthread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
