; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_sig.c_check_deferred_signal.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_sig.c_check_deferred_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread = type { i32, %struct.TYPE_11__, i32, %struct.sigaction }
%struct.TYPE_11__ = type { i64 }
%struct.sigaction = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pthread*)* @check_deferred_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_deferred_signal(%struct.pthread* %0) #0 {
  %2 = alloca %struct.pthread*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.sigaction, align 4
  %5 = alloca %struct.TYPE_10__, align 4
  %6 = alloca i32, align 4
  store %struct.pthread* %0, %struct.pthread** %2, align 8
  %7 = load %struct.pthread*, %struct.pthread** %2, align 8
  %8 = getelementptr inbounds %struct.pthread, %struct.pthread* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load %struct.pthread*, %struct.pthread** %2, align 8
  %14 = getelementptr inbounds %struct.pthread, %struct.pthread* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br label %17

17:                                               ; preds = %12, %1
  %18 = phi i1 [ true, %1 ], [ %16, %12 ]
  %19 = zext i1 %18 to i32
  %20 = call i64 @__predict_true(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %62

23:                                               ; preds = %17
  %24 = load %struct.pthread*, %struct.pthread** %2, align 8
  %25 = getelementptr inbounds %struct.pthread, %struct.pthread* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = call i32 (...) @__getcontextx_size()
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call %struct.TYPE_9__* @alloca(i32 %27)
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %3, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = call i32 @getcontext(%struct.TYPE_9__* %29) #4
  %31 = load %struct.pthread*, %struct.pthread** %2, align 8
  %32 = getelementptr inbounds %struct.pthread, %struct.pthread* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %23
  %37 = load %struct.pthread*, %struct.pthread** %2, align 8
  %38 = getelementptr inbounds %struct.pthread, %struct.pthread* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  br label %62

39:                                               ; preds = %23
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = bitcast %struct.TYPE_9__* %40 to i8*
  %42 = call i32 @__fillcontextx2(i8* %41)
  %43 = load %struct.pthread*, %struct.pthread** %2, align 8
  %44 = getelementptr inbounds %struct.pthread, %struct.pthread* %43, i32 0, i32 3
  %45 = bitcast %struct.sigaction* %4 to i8*
  %46 = bitcast %struct.sigaction* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 %46, i64 4, i1 false)
  %47 = load %struct.pthread*, %struct.pthread** %2, align 8
  %48 = getelementptr inbounds %struct.pthread, %struct.pthread* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.pthread*, %struct.pthread** %2, align 8
  %53 = getelementptr inbounds %struct.pthread, %struct.pthread* %52, i32 0, i32 1
  %54 = call i32 @memcpy(%struct.TYPE_10__* %5, %struct.TYPE_11__* %53, i32 4)
  %55 = load %struct.pthread*, %struct.pthread** %2, align 8
  %56 = getelementptr inbounds %struct.pthread, %struct.pthread* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %61 = call i32 @handle_signal(%struct.sigaction* %4, i32 %59, %struct.TYPE_10__* %5, %struct.TYPE_9__* %60)
  br label %62

62:                                               ; preds = %39, %36, %22
  ret void
}

declare dso_local i64 @__predict_true(i32) #1

declare dso_local i32 @__getcontextx_size(...) #1

declare dso_local %struct.TYPE_9__* @alloca(i32) #1

; Function Attrs: returns_twice
declare dso_local i32 @getcontext(%struct.TYPE_9__*) #2

declare dso_local i32 @__fillcontextx2(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @memcpy(%struct.TYPE_10__*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @handle_signal(%struct.sigaction*, i32, %struct.TYPE_10__*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
