; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/nvme/extr_nvme_da.c_ndastrategy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/nvme/extr_nvme_da.c_ndastrategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.cam_periph = type { i32, i32, i64 }
%struct.nda_softc = type { i32, i32 }

@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ndastrategy(%p)\0A\00", align 1
@CAM_PERIPH_INVALID = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@BIO_DELETE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @ndastrategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ndastrategy(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.cam_periph*, align 8
  %4 = alloca %struct.nda_softc*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %5 = load %struct.bio*, %struct.bio** %2, align 8
  %6 = getelementptr inbounds %struct.bio, %struct.bio* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.cam_periph*
  store %struct.cam_periph* %10, %struct.cam_periph** %3, align 8
  %11 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %12 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.nda_softc*
  store %struct.nda_softc* %14, %struct.nda_softc** %4, align 8
  %15 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %16 = call i32 @cam_periph_lock(%struct.cam_periph* %15)
  %17 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %18 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %21 = load %struct.bio*, %struct.bio** %2, align 8
  %22 = bitcast %struct.bio* %21 to i8*
  %23 = call i32 @CAM_DEBUG(i32 %19, i32 %20, i8* %22)
  %24 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %25 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @CAM_PERIPH_INVALID, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %1
  %31 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %32 = call i32 @cam_periph_unlock(%struct.cam_periph* %31)
  %33 = load %struct.bio*, %struct.bio** %2, align 8
  %34 = load i32, i32* @ENXIO, align 4
  %35 = call i32 @biofinish(%struct.bio* %33, i32* null, i32 %34)
  br label %57

36:                                               ; preds = %1
  %37 = load %struct.bio*, %struct.bio** %2, align 8
  %38 = getelementptr inbounds %struct.bio, %struct.bio* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @BIO_DELETE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.nda_softc*, %struct.nda_softc** %4, align 8
  %44 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %42, %36
  %48 = load %struct.nda_softc*, %struct.nda_softc** %4, align 8
  %49 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.bio*, %struct.bio** %2, align 8
  %52 = call i32 @cam_iosched_queue_work(i32 %50, %struct.bio* %51)
  %53 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %54 = call i32 @ndaschedule(%struct.cam_periph* %53)
  %55 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %56 = call i32 @cam_periph_unlock(%struct.cam_periph* %55)
  br label %57

57:                                               ; preds = %47, %30
  ret void
}

declare dso_local i32 @cam_periph_lock(%struct.cam_periph*) #1

declare dso_local i32 @CAM_DEBUG(i32, i32, i8*) #1

declare dso_local i32 @cam_periph_unlock(%struct.cam_periph*) #1

declare dso_local i32 @biofinish(%struct.bio*, i32*, i32) #1

declare dso_local i32 @cam_iosched_queue_work(i32, %struct.bio*) #1

declare dso_local i32 @ndaschedule(%struct.cam_periph*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
