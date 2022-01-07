; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_cdcleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_cdcleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i32, i64 }
%struct.cd_softc = type { i32, i32, i32, i32 }

@CD_FLAG_SCTX_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"can't remove sysctl context\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_periph*)* @cdcleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdcleanup(%struct.cam_periph* %0) #0 {
  %2 = alloca %struct.cam_periph*, align 8
  %3 = alloca %struct.cd_softc*, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %2, align 8
  %4 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %5 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.cd_softc*
  store %struct.cd_softc* %7, %struct.cd_softc** %3, align 8
  %8 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %9 = call i32 @cam_periph_unlock(%struct.cam_periph* %8)
  %10 = load %struct.cd_softc*, %struct.cd_softc** %3, align 8
  %11 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @CD_FLAG_SCTX_INIT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %1
  %17 = load %struct.cd_softc*, %struct.cd_softc** %3, align 8
  %18 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %17, i32 0, i32 3
  %19 = call i64 @sysctl_ctx_free(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %23 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @xpt_print(i32 %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %21, %16, %1
  %27 = load %struct.cd_softc*, %struct.cd_softc** %3, align 8
  %28 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %27, i32 0, i32 2
  %29 = call i32 @callout_drain(i32* %28)
  %30 = load %struct.cd_softc*, %struct.cd_softc** %3, align 8
  %31 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @disk_destroy(i32 %32)
  %34 = load %struct.cd_softc*, %struct.cd_softc** %3, align 8
  %35 = load i32, i32* @M_DEVBUF, align 4
  %36 = call i32 @free(%struct.cd_softc* %34, i32 %35)
  %37 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %38 = call i32 @cam_periph_lock(%struct.cam_periph* %37)
  ret void
}

declare dso_local i32 @cam_periph_unlock(%struct.cam_periph*) #1

declare dso_local i64 @sysctl_ctx_free(i32*) #1

declare dso_local i32 @xpt_print(i32, i8*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @disk_destroy(i32) #1

declare dso_local i32 @free(%struct.cd_softc*, i32) #1

declare dso_local i32 @cam_periph_lock(%struct.cam_periph*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
