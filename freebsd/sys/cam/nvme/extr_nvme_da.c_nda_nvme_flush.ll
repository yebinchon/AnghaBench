; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/nvme/extr_nvme_da.c_nda_nvme_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/nvme/extr_nvme_da.c_nda_nvme_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nda_softc = type { i32 }
%struct.ccb_nvmeio = type { i32 }

@ndadone = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4
@nda_default_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nda_softc*, %struct.ccb_nvmeio*)* @nda_nvme_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nda_nvme_flush(%struct.nda_softc* %0, %struct.ccb_nvmeio* %1) #0 {
  %3 = alloca %struct.nda_softc*, align 8
  %4 = alloca %struct.ccb_nvmeio*, align 8
  store %struct.nda_softc* %0, %struct.nda_softc** %3, align 8
  store %struct.ccb_nvmeio* %1, %struct.ccb_nvmeio** %4, align 8
  %5 = load %struct.ccb_nvmeio*, %struct.ccb_nvmeio** %4, align 8
  %6 = load i32, i32* @ndadone, align 4
  %7 = load i32, i32* @CAM_DIR_NONE, align 4
  %8 = load i32, i32* @nda_default_timeout, align 4
  %9 = mul nsw i32 %8, 1000
  %10 = call i32 @cam_fill_nvmeio(%struct.ccb_nvmeio* %5, i32 0, i32 %6, i32 %7, i32* null, i32 0, i32 %9)
  %11 = load %struct.ccb_nvmeio*, %struct.ccb_nvmeio** %4, align 8
  %12 = getelementptr inbounds %struct.ccb_nvmeio, %struct.ccb_nvmeio* %11, i32 0, i32 0
  %13 = load %struct.nda_softc*, %struct.nda_softc** %3, align 8
  %14 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @nvme_ns_flush_cmd(i32* %12, i32 %15)
  ret void
}

declare dso_local i32 @cam_fill_nvmeio(%struct.ccb_nvmeio*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @nvme_ns_flush_cmd(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
