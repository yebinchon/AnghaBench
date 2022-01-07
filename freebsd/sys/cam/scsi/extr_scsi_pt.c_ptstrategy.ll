; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_pt.c_ptstrategy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_pt.c_ptstrategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.cam_periph = type { i64 }
%struct.pt_softc = type { i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@PT_FLAG_DEVICE_INVALID = common dso_local global i32 0, align 4
@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @ptstrategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ptstrategy(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.cam_periph*, align 8
  %4 = alloca %struct.pt_softc*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %5 = load %struct.bio*, %struct.bio** %2, align 8
  %6 = getelementptr inbounds %struct.bio, %struct.bio* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.cam_periph*
  store %struct.cam_periph* %10, %struct.cam_periph** %3, align 8
  %11 = load %struct.bio*, %struct.bio** %2, align 8
  %12 = getelementptr inbounds %struct.bio, %struct.bio* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.bio*, %struct.bio** %2, align 8
  %15 = getelementptr inbounds %struct.bio, %struct.bio* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %17 = icmp eq %struct.cam_periph* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.bio*, %struct.bio** %2, align 8
  %20 = load i32, i32* @ENXIO, align 4
  %21 = call i32 @biofinish(%struct.bio* %19, i32* null, i32 %20)
  br label %51

22:                                               ; preds = %1
  %23 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %24 = call i32 @cam_periph_lock(%struct.cam_periph* %23)
  %25 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %26 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.pt_softc*
  store %struct.pt_softc* %28, %struct.pt_softc** %4, align 8
  %29 = load %struct.pt_softc*, %struct.pt_softc** %4, align 8
  %30 = getelementptr inbounds %struct.pt_softc, %struct.pt_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @PT_FLAG_DEVICE_INVALID, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %22
  %36 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %37 = call i32 @cam_periph_unlock(%struct.cam_periph* %36)
  %38 = load %struct.bio*, %struct.bio** %2, align 8
  %39 = load i32, i32* @ENXIO, align 4
  %40 = call i32 @biofinish(%struct.bio* %38, i32* null, i32 %39)
  br label %51

41:                                               ; preds = %22
  %42 = load %struct.pt_softc*, %struct.pt_softc** %4, align 8
  %43 = getelementptr inbounds %struct.pt_softc, %struct.pt_softc* %42, i32 0, i32 1
  %44 = load %struct.bio*, %struct.bio** %2, align 8
  %45 = call i32 @bioq_insert_tail(i32* %43, %struct.bio* %44)
  %46 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %47 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %48 = call i32 @xpt_schedule(%struct.cam_periph* %46, i32 %47)
  %49 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %50 = call i32 @cam_periph_unlock(%struct.cam_periph* %49)
  br label %51

51:                                               ; preds = %41, %35, %18
  ret void
}

declare dso_local i32 @biofinish(%struct.bio*, i32*, i32) #1

declare dso_local i32 @cam_periph_lock(%struct.cam_periph*) #1

declare dso_local i32 @cam_periph_unlock(%struct.cam_periph*) #1

declare dso_local i32 @bioq_insert_tail(i32*, %struct.bio*) #1

declare dso_local i32 @xpt_schedule(%struct.cam_periph*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
