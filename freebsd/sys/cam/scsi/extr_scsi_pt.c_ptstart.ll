; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_pt.c_ptstart.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_pt.c_ptstart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.cam_periph = type { i32, i64 }
%union.ccb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.bio*, i32 }
%struct.bio = type { i64, i32, i32 }
%struct.pt_softc = type { i32, i32, i32, i32 }

@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ptstart\0A\00", align 1
@ptdone = common dso_local global i32 0, align 4
@MSG_SIMPLE_Q_TAG = common dso_local global i32 0, align 4
@BIO_READ = common dso_local global i64 0, align 8
@SSD_FULL_SIZE = common dso_local global i32 0, align 4
@PT_CCB_BUFFER_IO_UA = common dso_local global i32 0, align 4
@periph_links = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_periph*, %union.ccb*)* @ptstart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ptstart(%struct.cam_periph* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.cam_periph*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.pt_softc*, align 8
  %6 = alloca %struct.bio*, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %7 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %8 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.pt_softc*
  store %struct.pt_softc* %10, %struct.pt_softc** %5, align 8
  %11 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %12 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %15 = call i32 @CAM_DEBUG(i32 %13, i32 %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.pt_softc*, %struct.pt_softc** %5, align 8
  %17 = getelementptr inbounds %struct.pt_softc, %struct.pt_softc* %16, i32 0, i32 0
  %18 = call %struct.bio* @bioq_first(i32* %17)
  store %struct.bio* %18, %struct.bio** %6, align 8
  %19 = load %struct.bio*, %struct.bio** %6, align 8
  %20 = icmp eq %struct.bio* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %union.ccb*, %union.ccb** %4, align 8
  %23 = call i32 @xpt_release_ccb(%union.ccb* %22)
  br label %81

24:                                               ; preds = %2
  %25 = load %struct.pt_softc*, %struct.pt_softc** %5, align 8
  %26 = getelementptr inbounds %struct.pt_softc, %struct.pt_softc* %25, i32 0, i32 0
  %27 = load %struct.bio*, %struct.bio** %6, align 8
  %28 = call i32 @bioq_remove(i32* %26, %struct.bio* %27)
  %29 = load %struct.pt_softc*, %struct.pt_softc** %5, align 8
  %30 = getelementptr inbounds %struct.pt_softc, %struct.pt_softc* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.bio*, %struct.bio** %6, align 8
  %33 = call i32 @devstat_start_transaction_bio(i32 %31, %struct.bio* %32)
  %34 = load %union.ccb*, %union.ccb** %4, align 8
  %35 = bitcast %union.ccb* %34 to i32*
  %36 = load i32, i32* @ptdone, align 4
  %37 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %38 = load %struct.bio*, %struct.bio** %6, align 8
  %39 = getelementptr inbounds %struct.bio, %struct.bio* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @BIO_READ, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load %struct.bio*, %struct.bio** %6, align 8
  %45 = getelementptr inbounds %struct.bio, %struct.bio* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.bio*, %struct.bio** %6, align 8
  %48 = getelementptr inbounds %struct.bio, %struct.bio* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @SSD_FULL_SIZE, align 4
  %51 = load %struct.pt_softc*, %struct.pt_softc** %5, align 8
  %52 = getelementptr inbounds %struct.pt_softc, %struct.pt_softc* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @scsi_send_receive(i32* %35, i32 4, i32 %36, i32 %37, i32 %43, i32 0, i32 %46, i32 %49, i32 %50, i32 %53)
  %55 = load i32, i32* @PT_CCB_BUFFER_IO_UA, align 4
  %56 = load %union.ccb*, %union.ccb** %4, align 8
  %57 = bitcast %union.ccb* %56 to %struct.TYPE_4__*
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 8
  %59 = load %struct.pt_softc*, %struct.pt_softc** %5, align 8
  %60 = getelementptr inbounds %struct.pt_softc, %struct.pt_softc* %59, i32 0, i32 1
  %61 = load %union.ccb*, %union.ccb** %4, align 8
  %62 = bitcast %union.ccb* %61 to %struct.TYPE_4__*
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @periph_links, i32 0, i32 0), align 4
  %64 = call i32 @LIST_INSERT_HEAD(i32* %60, %struct.TYPE_4__* %62, i32 %63)
  %65 = load %struct.bio*, %struct.bio** %6, align 8
  %66 = load %union.ccb*, %union.ccb** %4, align 8
  %67 = bitcast %union.ccb* %66 to %struct.TYPE_4__*
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store %struct.bio* %65, %struct.bio** %68, align 8
  %69 = load %struct.pt_softc*, %struct.pt_softc** %5, align 8
  %70 = getelementptr inbounds %struct.pt_softc, %struct.pt_softc* %69, i32 0, i32 0
  %71 = call %struct.bio* @bioq_first(i32* %70)
  store %struct.bio* %71, %struct.bio** %6, align 8
  %72 = load %union.ccb*, %union.ccb** %4, align 8
  %73 = call i32 @xpt_action(%union.ccb* %72)
  %74 = load %struct.bio*, %struct.bio** %6, align 8
  %75 = icmp ne %struct.bio* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %24
  %77 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %78 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %79 = call i32 @xpt_schedule(%struct.cam_periph* %77, i32 %78)
  br label %80

80:                                               ; preds = %76, %24
  br label %81

81:                                               ; preds = %80, %21
  ret void
}

declare dso_local i32 @CAM_DEBUG(i32, i32, i8*) #1

declare dso_local %struct.bio* @bioq_first(i32*) #1

declare dso_local i32 @xpt_release_ccb(%union.ccb*) #1

declare dso_local i32 @bioq_remove(i32*, %struct.bio*) #1

declare dso_local i32 @devstat_start_transaction_bio(i32, %struct.bio*) #1

declare dso_local i32 @scsi_send_receive(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i32 @xpt_schedule(%struct.cam_periph*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
