; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_clean.c___thr_cleanup_push_imp.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_clean.c___thr_cleanup_push_imp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._pthread_cleanup_info = type { i32 }
%struct.pthread = type { %struct.pthread_cleanup* }
%struct.pthread_cleanup = type { void (i8*)*, %struct.pthread_cleanup*, i64, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__thr_cleanup_push_imp(void (i8*)* %0, i8* %1, %struct._pthread_cleanup_info* %2) #0 {
  %4 = alloca void (i8*)*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._pthread_cleanup_info*, align 8
  %7 = alloca %struct.pthread*, align 8
  %8 = alloca %struct.pthread_cleanup*, align 8
  store void (i8*)* %0, void (i8*)** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct._pthread_cleanup_info* %2, %struct._pthread_cleanup_info** %6, align 8
  %9 = call %struct.pthread* (...) @_get_curthread()
  store %struct.pthread* %9, %struct.pthread** %7, align 8
  %10 = load %struct._pthread_cleanup_info*, %struct._pthread_cleanup_info** %6, align 8
  %11 = bitcast %struct._pthread_cleanup_info* %10 to i8*
  %12 = bitcast i8* %11 to %struct.pthread_cleanup*
  store %struct.pthread_cleanup* %12, %struct.pthread_cleanup** %8, align 8
  %13 = load void (i8*)*, void (i8*)** %4, align 8
  %14 = load %struct.pthread_cleanup*, %struct.pthread_cleanup** %8, align 8
  %15 = getelementptr inbounds %struct.pthread_cleanup, %struct.pthread_cleanup* %14, i32 0, i32 0
  store void (i8*)* %13, void (i8*)** %15, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load %struct.pthread_cleanup*, %struct.pthread_cleanup** %8, align 8
  %18 = getelementptr inbounds %struct.pthread_cleanup, %struct.pthread_cleanup* %17, i32 0, i32 3
  store i8* %16, i8** %18, align 8
  %19 = load %struct.pthread_cleanup*, %struct.pthread_cleanup** %8, align 8
  %20 = getelementptr inbounds %struct.pthread_cleanup, %struct.pthread_cleanup* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = load %struct.pthread*, %struct.pthread** %7, align 8
  %22 = getelementptr inbounds %struct.pthread, %struct.pthread* %21, i32 0, i32 0
  %23 = load %struct.pthread_cleanup*, %struct.pthread_cleanup** %22, align 8
  %24 = load %struct.pthread_cleanup*, %struct.pthread_cleanup** %8, align 8
  %25 = getelementptr inbounds %struct.pthread_cleanup, %struct.pthread_cleanup* %24, i32 0, i32 1
  store %struct.pthread_cleanup* %23, %struct.pthread_cleanup** %25, align 8
  %26 = load %struct.pthread_cleanup*, %struct.pthread_cleanup** %8, align 8
  %27 = load %struct.pthread*, %struct.pthread** %7, align 8
  %28 = getelementptr inbounds %struct.pthread, %struct.pthread* %27, i32 0, i32 0
  store %struct.pthread_cleanup* %26, %struct.pthread_cleanup** %28, align 8
  ret void
}

declare dso_local %struct.pthread* @_get_curthread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
