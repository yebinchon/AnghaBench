; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_clean.c___thr_cleanup_pop_imp.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_clean.c___thr_cleanup_pop_imp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread = type { %struct.pthread_cleanup* }
%struct.pthread_cleanup = type { i64, i32, i32 (i32)*, %struct.pthread_cleanup* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__thr_cleanup_pop_imp(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pthread*, align 8
  %4 = alloca %struct.pthread_cleanup*, align 8
  store i32 %0, i32* %2, align 4
  %5 = call %struct.pthread* (...) @_get_curthread()
  store %struct.pthread* %5, %struct.pthread** %3, align 8
  %6 = load %struct.pthread*, %struct.pthread** %3, align 8
  %7 = getelementptr inbounds %struct.pthread, %struct.pthread* %6, i32 0, i32 0
  %8 = load %struct.pthread_cleanup*, %struct.pthread_cleanup** %7, align 8
  store %struct.pthread_cleanup* %8, %struct.pthread_cleanup** %4, align 8
  %9 = icmp ne %struct.pthread_cleanup* %8, null
  br i1 %9, label %10, label %35

10:                                               ; preds = %1
  %11 = load %struct.pthread_cleanup*, %struct.pthread_cleanup** %4, align 8
  %12 = getelementptr inbounds %struct.pthread_cleanup, %struct.pthread_cleanup* %11, i32 0, i32 3
  %13 = load %struct.pthread_cleanup*, %struct.pthread_cleanup** %12, align 8
  %14 = load %struct.pthread*, %struct.pthread** %3, align 8
  %15 = getelementptr inbounds %struct.pthread, %struct.pthread* %14, i32 0, i32 0
  store %struct.pthread_cleanup* %13, %struct.pthread_cleanup** %15, align 8
  %16 = load i32, i32* %2, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %10
  %19 = load %struct.pthread_cleanup*, %struct.pthread_cleanup** %4, align 8
  %20 = getelementptr inbounds %struct.pthread_cleanup, %struct.pthread_cleanup* %19, i32 0, i32 2
  %21 = load i32 (i32)*, i32 (i32)** %20, align 8
  %22 = load %struct.pthread_cleanup*, %struct.pthread_cleanup** %4, align 8
  %23 = getelementptr inbounds %struct.pthread_cleanup, %struct.pthread_cleanup* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 %21(i32 %24)
  br label %26

26:                                               ; preds = %18, %10
  %27 = load %struct.pthread_cleanup*, %struct.pthread_cleanup** %4, align 8
  %28 = getelementptr inbounds %struct.pthread_cleanup, %struct.pthread_cleanup* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.pthread_cleanup*, %struct.pthread_cleanup** %4, align 8
  %33 = call i32 @free(%struct.pthread_cleanup* %32)
  br label %34

34:                                               ; preds = %31, %26
  br label %35

35:                                               ; preds = %34, %1
  ret void
}

declare dso_local %struct.pthread* @_get_curthread(...) #1

declare dso_local i32 @free(%struct.pthread_cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
