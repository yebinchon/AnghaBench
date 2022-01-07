; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/nvme/extr_nvme_da.c_ndacleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/nvme/extr_nvme_da.c_ndacleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i32, i64 }
%struct.nda_softc = type { i32, i32, i32, i32, i32 }

@NDA_FLAG_SCTX_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"can't remove sysctl context\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_periph*)* @ndacleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ndacleanup(%struct.cam_periph* %0) #0 {
  %2 = alloca %struct.cam_periph*, align 8
  %3 = alloca %struct.nda_softc*, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %2, align 8
  %4 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %5 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.nda_softc*
  store %struct.nda_softc* %7, %struct.nda_softc** %3, align 8
  %8 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %9 = call i32 @cam_periph_unlock(%struct.cam_periph* %8)
  %10 = load %struct.nda_softc*, %struct.nda_softc** %3, align 8
  %11 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @cam_iosched_fini(i32 %12)
  %14 = load %struct.nda_softc*, %struct.nda_softc** %3, align 8
  %15 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @NDA_FLAG_SCTX_INIT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %1
  %21 = load %struct.nda_softc*, %struct.nda_softc** %3, align 8
  %22 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %21, i32 0, i32 2
  %23 = call i64 @sysctl_ctx_free(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %27 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @xpt_print(i32 %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %25, %20
  br label %31

31:                                               ; preds = %30, %1
  %32 = load %struct.nda_softc*, %struct.nda_softc** %3, align 8
  %33 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @disk_destroy(i32 %34)
  %36 = load %struct.nda_softc*, %struct.nda_softc** %3, align 8
  %37 = load i32, i32* @M_DEVBUF, align 4
  %38 = call i32 @free(%struct.nda_softc* %36, i32 %37)
  %39 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %40 = call i32 @cam_periph_lock(%struct.cam_periph* %39)
  ret void
}

declare dso_local i32 @cam_periph_unlock(%struct.cam_periph*) #1

declare dso_local i32 @cam_iosched_fini(i32) #1

declare dso_local i64 @sysctl_ctx_free(i32*) #1

declare dso_local i32 @xpt_print(i32, i8*) #1

declare dso_local i32 @disk_destroy(i32) #1

declare dso_local i32 @free(%struct.nda_softc*, i32) #1

declare dso_local i32 @cam_periph_lock(%struct.cam_periph*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
