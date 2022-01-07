; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_cond.c_drop_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_cond.c_drop_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread = type { i64, %struct.TYPE_2__*, i32**, %struct.pthread_mutex* }
%struct.TYPE_2__ = type { i32 }
%struct.pthread_mutex = type { i32 }
%struct.broadcast_arg = type { i64, i32**, %struct.pthread* }

@MAX_DEFER_WAITERS = common dso_local global i64 0, align 8
@PMUTEX_FLAG_DEFERRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pthread*, i8*)* @drop_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drop_cb(%struct.pthread* %0, i8* %1) #0 {
  %3 = alloca %struct.pthread*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.broadcast_arg*, align 8
  %6 = alloca %struct.pthread_mutex*, align 8
  %7 = alloca %struct.pthread*, align 8
  store %struct.pthread* %0, %struct.pthread** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.broadcast_arg*
  store %struct.broadcast_arg* %9, %struct.broadcast_arg** %5, align 8
  %10 = load %struct.broadcast_arg*, %struct.broadcast_arg** %5, align 8
  %11 = getelementptr inbounds %struct.broadcast_arg, %struct.broadcast_arg* %10, i32 0, i32 2
  %12 = load %struct.pthread*, %struct.pthread** %11, align 8
  store %struct.pthread* %12, %struct.pthread** %7, align 8
  %13 = load %struct.pthread*, %struct.pthread** %3, align 8
  %14 = getelementptr inbounds %struct.pthread, %struct.pthread* %13, i32 0, i32 3
  %15 = load %struct.pthread_mutex*, %struct.pthread_mutex** %14, align 8
  store %struct.pthread_mutex* %15, %struct.pthread_mutex** %6, align 8
  %16 = load %struct.pthread_mutex*, %struct.pthread_mutex** %6, align 8
  %17 = call i64 @PMUTEX_OWNER_ID(%struct.pthread_mutex* %16)
  %18 = load %struct.pthread*, %struct.pthread** %7, align 8
  %19 = call i64 @TID(%struct.pthread* %18)
  %20 = icmp eq i64 %17, %19
  br i1 %20, label %21, label %55

21:                                               ; preds = %2
  %22 = load %struct.pthread*, %struct.pthread** %7, align 8
  %23 = getelementptr inbounds %struct.pthread, %struct.pthread* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MAX_DEFER_WAITERS, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %21
  %28 = load %struct.pthread*, %struct.pthread** %7, align 8
  %29 = getelementptr inbounds %struct.pthread, %struct.pthread* %28, i32 0, i32 2
  %30 = load i32**, i32*** %29, align 8
  %31 = load %struct.pthread*, %struct.pthread** %7, align 8
  %32 = getelementptr inbounds %struct.pthread, %struct.pthread* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @_thr_wake_all(i32** %30, i64 %33)
  %35 = load %struct.pthread*, %struct.pthread** %7, align 8
  %36 = getelementptr inbounds %struct.pthread, %struct.pthread* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %27, %21
  %38 = load %struct.pthread*, %struct.pthread** %3, align 8
  %39 = getelementptr inbounds %struct.pthread, %struct.pthread* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load %struct.pthread*, %struct.pthread** %7, align 8
  %43 = getelementptr inbounds %struct.pthread, %struct.pthread* %42, i32 0, i32 2
  %44 = load i32**, i32*** %43, align 8
  %45 = load %struct.pthread*, %struct.pthread** %7, align 8
  %46 = getelementptr inbounds %struct.pthread, %struct.pthread* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %46, align 8
  %49 = getelementptr inbounds i32*, i32** %44, i64 %47
  store i32* %41, i32** %49, align 8
  %50 = load i32, i32* @PMUTEX_FLAG_DEFERRED, align 4
  %51 = load %struct.pthread_mutex*, %struct.pthread_mutex** %6, align 8
  %52 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %84

55:                                               ; preds = %2
  %56 = load %struct.broadcast_arg*, %struct.broadcast_arg** %5, align 8
  %57 = getelementptr inbounds %struct.broadcast_arg, %struct.broadcast_arg* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @MAX_DEFER_WAITERS, align 8
  %60 = icmp sge i64 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %55
  %62 = load %struct.broadcast_arg*, %struct.broadcast_arg** %5, align 8
  %63 = getelementptr inbounds %struct.broadcast_arg, %struct.broadcast_arg* %62, i32 0, i32 1
  %64 = load i32**, i32*** %63, align 8
  %65 = load %struct.broadcast_arg*, %struct.broadcast_arg** %5, align 8
  %66 = getelementptr inbounds %struct.broadcast_arg, %struct.broadcast_arg* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @_thr_wake_all(i32** %64, i64 %67)
  %69 = load %struct.broadcast_arg*, %struct.broadcast_arg** %5, align 8
  %70 = getelementptr inbounds %struct.broadcast_arg, %struct.broadcast_arg* %69, i32 0, i32 0
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %61, %55
  %72 = load %struct.pthread*, %struct.pthread** %3, align 8
  %73 = getelementptr inbounds %struct.pthread, %struct.pthread* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load %struct.broadcast_arg*, %struct.broadcast_arg** %5, align 8
  %77 = getelementptr inbounds %struct.broadcast_arg, %struct.broadcast_arg* %76, i32 0, i32 1
  %78 = load i32**, i32*** %77, align 8
  %79 = load %struct.broadcast_arg*, %struct.broadcast_arg** %5, align 8
  %80 = getelementptr inbounds %struct.broadcast_arg, %struct.broadcast_arg* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %80, align 8
  %83 = getelementptr inbounds i32*, i32** %78, i64 %81
  store i32* %75, i32** %83, align 8
  br label %84

84:                                               ; preds = %71, %37
  ret void
}

declare dso_local i64 @PMUTEX_OWNER_ID(%struct.pthread_mutex*) #1

declare dso_local i64 @TID(%struct.pthread*) #1

declare dso_local i32 @_thr_wake_all(i32**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
