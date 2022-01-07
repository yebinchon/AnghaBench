; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_sg.c_sgoninvalidate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_sg.c_sgoninvalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i32, i64 }
%struct.sg_softc = type { i32, i32 }

@sgasync = common dso_local global i32 0, align 4
@SG_FLAG_INVALID = common dso_local global i32 0, align 4
@sgdevgonecb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_periph*)* @sgoninvalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sgoninvalidate(%struct.cam_periph* %0) #0 {
  %2 = alloca %struct.cam_periph*, align 8
  %3 = alloca %struct.sg_softc*, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %2, align 8
  %4 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %5 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.sg_softc*
  store %struct.sg_softc* %7, %struct.sg_softc** %3, align 8
  %8 = load i32, i32* @sgasync, align 4
  %9 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %10 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %11 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @xpt_register_async(i32 0, i32 %8, %struct.cam_periph* %9, i32 %12)
  %14 = load i32, i32* @SG_FLAG_INVALID, align 4
  %15 = load %struct.sg_softc*, %struct.sg_softc** %3, align 8
  %16 = getelementptr inbounds %struct.sg_softc, %struct.sg_softc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.sg_softc*, %struct.sg_softc** %3, align 8
  %20 = getelementptr inbounds %struct.sg_softc, %struct.sg_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @sgdevgonecb, align 4
  %23 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %24 = call i32 @destroy_dev_sched_cb(i32 %21, i32 %22, %struct.cam_periph* %23)
  ret void
}

declare dso_local i32 @xpt_register_async(i32, i32, %struct.cam_periph*, i32) #1

declare dso_local i32 @destroy_dev_sched_cb(i32, i32, %struct.cam_periph*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
