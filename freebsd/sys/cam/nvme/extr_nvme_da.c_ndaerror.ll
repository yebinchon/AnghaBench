; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/nvme/extr_nvme_da.c_ndaerror.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/nvme/extr_nvme_da.c_ndaerror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.nda_softc = type { i32, i32 }
%struct.cam_periph = type { i64 }

@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.ccb*, i32, i32)* @ndaerror to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ndaerror(%union.ccb* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %union.ccb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nda_softc*, align 8
  %8 = alloca %struct.cam_periph*, align 8
  store %union.ccb* %0, %union.ccb** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %union.ccb*, %union.ccb** %4, align 8
  %10 = bitcast %union.ccb* %9 to %struct.TYPE_2__*
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.cam_periph* @xpt_path_periph(i32 %12)
  store %struct.cam_periph* %13, %struct.cam_periph** %8, align 8
  %14 = load %struct.cam_periph*, %struct.cam_periph** %8, align 8
  %15 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.nda_softc*
  store %struct.nda_softc* %17, %struct.nda_softc** %7, align 8
  %18 = load %union.ccb*, %union.ccb** %4, align 8
  %19 = bitcast %union.ccb* %18 to %struct.TYPE_2__*
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CAM_STATUS_MASK, align 4
  %23 = and i32 %21, %22
  switch i32 %23, label %26 [
    i32 133, label %24
    i32 131, label %25
    i32 130, label %25
    i32 129, label %25
    i32 128, label %25
    i32 132, label %25
    i32 134, label %25
  ]

24:                                               ; preds = %3
  br label %27

25:                                               ; preds = %3, %3, %3, %3, %3, %3
  br label %27

26:                                               ; preds = %3
  br label %27

27:                                               ; preds = %26, %25, %24
  %28 = load %union.ccb*, %union.ccb** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @cam_periph_error(%union.ccb* %28, i32 %29, i32 %30)
  ret i32 %31
}

declare dso_local %struct.cam_periph* @xpt_path_periph(i32) #1

declare dso_local i32 @cam_periph_error(%union.ccb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
