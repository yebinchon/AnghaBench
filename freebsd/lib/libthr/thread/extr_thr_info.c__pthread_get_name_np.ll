; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_info.c__pthread_get_name_np.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_info.c__pthread_get_name_np.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread = type { i64 }

@PS_DEAD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_pthread_get_name_np(%struct.pthread* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.pthread*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.pthread*, align 8
  store %struct.pthread* %0, %struct.pthread** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = call %struct.pthread* (...) @_get_curthread()
  store %struct.pthread* %8, %struct.pthread** %7, align 8
  %9 = load %struct.pthread*, %struct.pthread** %7, align 8
  %10 = load %struct.pthread*, %struct.pthread** %4, align 8
  %11 = icmp eq %struct.pthread* %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %3
  %13 = load %struct.pthread*, %struct.pthread** %7, align 8
  %14 = load %struct.pthread*, %struct.pthread** %4, align 8
  %15 = call i32 @THR_THREAD_LOCK(%struct.pthread* %13, %struct.pthread* %14)
  %16 = load %struct.pthread*, %struct.pthread** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @thr_get_name_np(%struct.pthread* %16, i8* %17, i64 %18)
  %20 = load %struct.pthread*, %struct.pthread** %7, align 8
  %21 = load %struct.pthread*, %struct.pthread** %4, align 8
  %22 = call i32 @THR_THREAD_UNLOCK(%struct.pthread* %20, %struct.pthread* %21)
  br label %51

23:                                               ; preds = %3
  %24 = load %struct.pthread*, %struct.pthread** %7, align 8
  %25 = load %struct.pthread*, %struct.pthread** %4, align 8
  %26 = call i64 @_thr_find_thread(%struct.pthread* %24, %struct.pthread* %25, i32 0)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %23
  %29 = load %struct.pthread*, %struct.pthread** %4, align 8
  %30 = getelementptr inbounds %struct.pthread, %struct.pthread* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PS_DEAD, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.pthread*, %struct.pthread** %4, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @thr_get_name_np(%struct.pthread* %35, i8* %36, i64 %37)
  br label %39

39:                                               ; preds = %34, %28
  %40 = load %struct.pthread*, %struct.pthread** %7, align 8
  %41 = load %struct.pthread*, %struct.pthread** %4, align 8
  %42 = call i32 @THR_THREAD_UNLOCK(%struct.pthread* %40, %struct.pthread* %41)
  br label %50

43:                                               ; preds = %23
  %44 = load i64, i64* %6, align 8
  %45 = icmp ugt i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  store i8 0, i8* %48, align 1
  br label %49

49:                                               ; preds = %46, %43
  br label %50

50:                                               ; preds = %49, %39
  br label %51

51:                                               ; preds = %50, %12
  ret void
}

declare dso_local %struct.pthread* @_get_curthread(...) #1

declare dso_local i32 @THR_THREAD_LOCK(%struct.pthread*, %struct.pthread*) #1

declare dso_local i32 @thr_get_name_np(%struct.pthread*, i8*, i64) #1

declare dso_local i32 @THR_THREAD_UNLOCK(%struct.pthread*, %struct.pthread*) #1

declare dso_local i64 @_thr_find_thread(%struct.pthread*, %struct.pthread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
