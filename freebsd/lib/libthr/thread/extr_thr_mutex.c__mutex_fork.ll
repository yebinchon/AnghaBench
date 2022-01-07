; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_mutex.c__mutex_fork.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_mutex.c__mutex_fork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread = type { i64, i32* }

@TMQ_NORM = common dso_local global i64 0, align 8
@TMQ_NORM_PRIV = common dso_local global i64 0, align 8
@TMQ_NORM_PP = common dso_local global i64 0, align 8
@TMQ_NORM_PP_PRIV = common dso_local global i64 0, align 8
@UMUTEX_CONTESTED = common dso_local global i32 0, align 4
@TMQ_ROBUST_PP = common dso_local global i64 0, align 8
@TMQ_ROBUST_PP_PRIV = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_mutex_fork(%struct.pthread* %0) #0 {
  %2 = alloca %struct.pthread*, align 8
  store %struct.pthread* %0, %struct.pthread** %2, align 8
  %3 = load %struct.pthread*, %struct.pthread** %2, align 8
  %4 = load %struct.pthread*, %struct.pthread** %2, align 8
  %5 = getelementptr inbounds %struct.pthread, %struct.pthread* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  %7 = load i64, i64* @TMQ_NORM, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  %9 = load %struct.pthread*, %struct.pthread** %2, align 8
  %10 = getelementptr inbounds %struct.pthread, %struct.pthread* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* @TMQ_NORM_PRIV, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = call i32 @queue_fork(%struct.pthread* %3, i32* %8, i32* %13, i32 0)
  %15 = load %struct.pthread*, %struct.pthread** %2, align 8
  %16 = load %struct.pthread*, %struct.pthread** %2, align 8
  %17 = getelementptr inbounds %struct.pthread, %struct.pthread* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @TMQ_NORM_PP, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load %struct.pthread*, %struct.pthread** %2, align 8
  %22 = getelementptr inbounds %struct.pthread, %struct.pthread* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @TMQ_NORM_PP_PRIV, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* @UMUTEX_CONTESTED, align 4
  %27 = call i32 @queue_fork(%struct.pthread* %15, i32* %20, i32* %25, i32 %26)
  %28 = load %struct.pthread*, %struct.pthread** %2, align 8
  %29 = load %struct.pthread*, %struct.pthread** %2, align 8
  %30 = getelementptr inbounds %struct.pthread, %struct.pthread* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @TMQ_ROBUST_PP, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load %struct.pthread*, %struct.pthread** %2, align 8
  %35 = getelementptr inbounds %struct.pthread, %struct.pthread* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @TMQ_ROBUST_PP_PRIV, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* @UMUTEX_CONTESTED, align 4
  %40 = call i32 @queue_fork(%struct.pthread* %28, i32* %33, i32* %38, i32 %39)
  %41 = load %struct.pthread*, %struct.pthread** %2, align 8
  %42 = getelementptr inbounds %struct.pthread, %struct.pthread* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  ret void
}

declare dso_local i32 @queue_fork(%struct.pthread*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
