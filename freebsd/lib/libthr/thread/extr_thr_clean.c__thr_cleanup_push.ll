; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_clean.c__thr_cleanup_push.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_clean.c__thr_cleanup_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread = type { i32, %struct.pthread_cleanup* }
%struct.pthread_cleanup = type { void (i8*)*, i32, %struct.pthread_cleanup*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_thr_cleanup_push(void (i8*)* %0, i8* %1) #0 {
  %3 = alloca void (i8*)*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pthread*, align 8
  %6 = alloca %struct.pthread_cleanup*, align 8
  store void (i8*)* %0, void (i8*)** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = call %struct.pthread* (...) @_get_curthread()
  store %struct.pthread* %7, %struct.pthread** %5, align 8
  %8 = call i64 @malloc(i32 32)
  %9 = inttoptr i64 %8 to %struct.pthread_cleanup*
  store %struct.pthread_cleanup* %9, %struct.pthread_cleanup** %6, align 8
  %10 = icmp ne %struct.pthread_cleanup* %9, null
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = load void (i8*)*, void (i8*)** %3, align 8
  %13 = load %struct.pthread_cleanup*, %struct.pthread_cleanup** %6, align 8
  %14 = getelementptr inbounds %struct.pthread_cleanup, %struct.pthread_cleanup* %13, i32 0, i32 0
  store void (i8*)* %12, void (i8*)** %14, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = load %struct.pthread_cleanup*, %struct.pthread_cleanup** %6, align 8
  %17 = getelementptr inbounds %struct.pthread_cleanup, %struct.pthread_cleanup* %16, i32 0, i32 3
  store i8* %15, i8** %17, align 8
  %18 = load %struct.pthread_cleanup*, %struct.pthread_cleanup** %6, align 8
  %19 = getelementptr inbounds %struct.pthread_cleanup, %struct.pthread_cleanup* %18, i32 0, i32 1
  store i32 1, i32* %19, align 8
  %20 = load %struct.pthread*, %struct.pthread** %5, align 8
  %21 = getelementptr inbounds %struct.pthread, %struct.pthread* %20, i32 0, i32 1
  %22 = load %struct.pthread_cleanup*, %struct.pthread_cleanup** %21, align 8
  %23 = load %struct.pthread_cleanup*, %struct.pthread_cleanup** %6, align 8
  %24 = getelementptr inbounds %struct.pthread_cleanup, %struct.pthread_cleanup* %23, i32 0, i32 2
  store %struct.pthread_cleanup* %22, %struct.pthread_cleanup** %24, align 8
  %25 = load %struct.pthread_cleanup*, %struct.pthread_cleanup** %6, align 8
  %26 = load %struct.pthread*, %struct.pthread** %5, align 8
  %27 = getelementptr inbounds %struct.pthread, %struct.pthread* %26, i32 0, i32 1
  store %struct.pthread_cleanup* %25, %struct.pthread_cleanup** %27, align 8
  br label %28

28:                                               ; preds = %11, %2
  ret void
}

declare dso_local %struct.pthread* @_get_curthread(...) #1

declare dso_local i64 @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
