; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/nvme/extr_nvme_da.c_ndaopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/nvme/extr_nvme_da.c_ndaopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disk = type { i64 }
%struct.cam_periph = type { i64, i32 }
%struct.nda_softc = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@CAM_DEBUG_PERIPH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ndaopen\0A\00", align 1
@NDA_FLAG_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.disk*)* @ndaopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ndaopen(%struct.disk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.disk*, align 8
  %4 = alloca %struct.cam_periph*, align 8
  %5 = alloca %struct.nda_softc*, align 8
  %6 = alloca i32, align 4
  store %struct.disk* %0, %struct.disk** %3, align 8
  %7 = load %struct.disk*, %struct.disk** %3, align 8
  %8 = getelementptr inbounds %struct.disk, %struct.disk* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.cam_periph*
  store %struct.cam_periph* %10, %struct.cam_periph** %4, align 8
  %11 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %12 = call i64 @cam_periph_acquire(%struct.cam_periph* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @ENXIO, align 4
  store i32 %15, i32* %2, align 4
  br label %52

16:                                               ; preds = %1
  %17 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %18 = call i32 @cam_periph_lock(%struct.cam_periph* %17)
  %19 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %20 = load i32, i32* @PRIBIO, align 4
  %21 = load i32, i32* @PCATCH, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @cam_periph_hold(%struct.cam_periph* %19, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %16
  %26 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %27 = call i32 @cam_periph_unlock(%struct.cam_periph* %26)
  %28 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %29 = call i32 @cam_periph_release(%struct.cam_periph* %28)
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %2, align 4
  br label %52

31:                                               ; preds = %16
  %32 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %33 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %36 = load i32, i32* @CAM_DEBUG_PERIPH, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @CAM_DEBUG(i32 %34, i32 %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %40 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.nda_softc*
  store %struct.nda_softc* %42, %struct.nda_softc** %5, align 8
  %43 = load i32, i32* @NDA_FLAG_OPEN, align 4
  %44 = load %struct.nda_softc*, %struct.nda_softc** %5, align 8
  %45 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %49 = call i32 @cam_periph_unhold(%struct.cam_periph* %48)
  %50 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %51 = call i32 @cam_periph_unlock(%struct.cam_periph* %50)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %31, %25, %14
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i64 @cam_periph_acquire(%struct.cam_periph*) #1

declare dso_local i32 @cam_periph_lock(%struct.cam_periph*) #1

declare dso_local i32 @cam_periph_hold(%struct.cam_periph*, i32) #1

declare dso_local i32 @cam_periph_unlock(%struct.cam_periph*) #1

declare dso_local i32 @cam_periph_release(%struct.cam_periph*) #1

declare dso_local i32 @CAM_DEBUG(i32, i32, i8*) #1

declare dso_local i32 @cam_periph_unhold(%struct.cam_periph*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
