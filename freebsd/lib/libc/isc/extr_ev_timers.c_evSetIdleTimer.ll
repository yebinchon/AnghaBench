; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/isc/extr_ev_timers.c_evSetIdleTimer.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/isc/extr_ev_timers.c_evSetIdleTimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.timespec = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.timespec, i32, i8*, i32 }

@idle_timeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evSetIdleTimer(%struct.TYPE_14__* %0, i32 %1, i8* %2, i32 %3, %struct.TYPE_13__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__, align 8
  %8 = alloca %struct.timespec, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %14, align 8
  %15 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0
  store i32 %3, i32* %15, align 4
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store %struct.TYPE_13__* %4, %struct.TYPE_13__** %11, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %12, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %19 = call i32 @OKNEW(%struct.TYPE_12__* %18)
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 3
  store i8* %23, i8** %25, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = bitcast %struct.timespec* %32 to i8*
  %34 = bitcast %struct.timespec* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 4, i1 false)
  %35 = load i32, i32* @idle_timeout, align 4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @evAddTime(i32 %39, i32 %41)
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %44, align 8
  %46 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @evSetTimer(%struct.TYPE_14__* %45, i32 %35, %struct.TYPE_12__* %36, i32 %42, i32 %47, %struct.TYPE_13__* %43)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %5
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %52 = call i32 @FREE(%struct.TYPE_12__* %51)
  store i32 -1, i32* %6, align 4
  br label %59

53:                                               ; preds = %5
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %53, %50
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local i32 @OKNEW(%struct.TYPE_12__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @evSetTimer(%struct.TYPE_14__*, i32, %struct.TYPE_12__*, i32, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @evAddTime(i32, i32) #1

declare dso_local i32 @FREE(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
