; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_rescan_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_rescan_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i32 }
%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.cam_periph.0*, %union.ccb.1*)*, i32 (%struct.cam_periph.2*, %union.ccb.3*)*, i32 }
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque
%struct.cam_periph.2 = type opaque
%union.ccb.3 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_periph*, %union.ccb*)* @xpt_rescan_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpt_rescan_done(%struct.cam_periph* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.cam_periph*, align 8
  %4 = alloca %union.ccb*, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %5 = load %union.ccb*, %union.ccb** %4, align 8
  %6 = bitcast %union.ccb* %5 to %struct.TYPE_2__*
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32 (%struct.cam_periph.2*, %union.ccb.3*)*, i32 (%struct.cam_periph.2*, %union.ccb.3*)** %7, align 8
  %9 = icmp eq i32 (%struct.cam_periph.2*, %union.ccb.3*)* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load %union.ccb*, %union.ccb** %4, align 8
  %12 = bitcast %union.ccb* %11 to %struct.TYPE_2__*
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @xpt_free_path(i32 %14)
  %16 = load %union.ccb*, %union.ccb** %4, align 8
  %17 = call i32 @xpt_free_ccb(%union.ccb* %16)
  br label %36

18:                                               ; preds = %2
  %19 = load %union.ccb*, %union.ccb** %4, align 8
  %20 = bitcast %union.ccb* %19 to %struct.TYPE_2__*
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32 (%struct.cam_periph.2*, %union.ccb.3*)*, i32 (%struct.cam_periph.2*, %union.ccb.3*)** %21, align 8
  %23 = bitcast i32 (%struct.cam_periph.2*, %union.ccb.3*)* %22 to i32 (%struct.cam_periph.0*, %union.ccb.1*)*
  %24 = load %union.ccb*, %union.ccb** %4, align 8
  %25 = bitcast %union.ccb* %24 to %struct.TYPE_2__*
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 (%struct.cam_periph.0*, %union.ccb.1*)* %23, i32 (%struct.cam_periph.0*, %union.ccb.1*)** %26, align 8
  %27 = load %union.ccb*, %union.ccb** %4, align 8
  %28 = bitcast %union.ccb* %27 to %struct.TYPE_2__*
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.cam_periph.0*, %union.ccb.1*)*, i32 (%struct.cam_periph.0*, %union.ccb.1*)** %29, align 8
  %31 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %32 = bitcast %struct.cam_periph* %31 to %struct.cam_periph.0*
  %33 = load %union.ccb*, %union.ccb** %4, align 8
  %34 = bitcast %union.ccb* %33 to %union.ccb.1*
  %35 = call i32 %30(%struct.cam_periph.0* %32, %union.ccb.1* %34)
  br label %36

36:                                               ; preds = %18, %10
  %37 = call i32 (...) @xpt_release_boot()
  ret void
}

declare dso_local i32 @xpt_free_path(i32) #1

declare dso_local i32 @xpt_free_ccb(%union.ccb*) #1

declare dso_local i32 @xpt_release_boot(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
