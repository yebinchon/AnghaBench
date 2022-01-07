; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_merge_ccb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_merge_ccb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xpt_merge_ccb(%union.ccb* %0, %union.ccb* %1) #0 {
  %3 = alloca %union.ccb*, align 8
  %4 = alloca %union.ccb*, align 8
  store %union.ccb* %0, %union.ccb** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %5 = load %union.ccb*, %union.ccb** %4, align 8
  %6 = bitcast %union.ccb* %5 to %struct.TYPE_3__*
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = load %union.ccb*, %union.ccb** %3, align 8
  %10 = bitcast %union.ccb* %9 to %struct.TYPE_3__*
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  store i32 %8, i32* %11, align 4
  %12 = load %union.ccb*, %union.ccb** %4, align 8
  %13 = bitcast %union.ccb* %12 to %struct.TYPE_3__*
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %union.ccb*, %union.ccb** %3, align 8
  %17 = bitcast %union.ccb* %16 to %struct.TYPE_3__*
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  store i32 %15, i32* %18, align 4
  %19 = load %union.ccb*, %union.ccb** %4, align 8
  %20 = bitcast %union.ccb* %19 to %struct.TYPE_3__*
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %union.ccb*, %union.ccb** %3, align 8
  %24 = bitcast %union.ccb* %23 to %struct.TYPE_3__*
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 4
  %26 = load %union.ccb*, %union.ccb** %4, align 8
  %27 = bitcast %union.ccb* %26 to %struct.TYPE_3__*
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %union.ccb*, %union.ccb** %3, align 8
  %31 = bitcast %union.ccb* %30 to %struct.TYPE_3__*
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  %33 = load %union.ccb*, %union.ccb** %4, align 8
  %34 = bitcast %union.ccb* %33 to %struct.TYPE_3__*
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 1
  %36 = load %union.ccb*, %union.ccb** %3, align 8
  %37 = bitcast %union.ccb* %36 to %struct.TYPE_3__*
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 1
  %39 = call i32 @bcopy(%struct.TYPE_3__* %35, %struct.TYPE_3__* %38, i32 12)
  ret void
}

declare dso_local i32 @bcopy(%struct.TYPE_3__*, %struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
