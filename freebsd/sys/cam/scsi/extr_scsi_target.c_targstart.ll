; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_target.c_targstart.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_target.c_targstart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i32, i64 }
%union.ccb = type { i32 }
%struct.targ_softc = type { i32, i32, i32 }
%struct.targ_cmd_descr = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@CAM_DEBUG_PERIPH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"targstart %p\0A\00", align 1
@tqe = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"targsendccb failed, err %d\0A\00", align 1
@CAM_REQ_CMP_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_periph*, %union.ccb*)* @targstart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @targstart(%struct.cam_periph* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.cam_periph*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.targ_softc*, align 8
  %6 = alloca %struct.targ_cmd_descr*, align 8
  %7 = alloca %struct.targ_cmd_descr*, align 8
  %8 = alloca i32, align 4
  store %struct.cam_periph* %0, %struct.cam_periph** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %9 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %10 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.targ_softc*
  store %struct.targ_softc* %12, %struct.targ_softc** %5, align 8
  %13 = load %struct.targ_softc*, %struct.targ_softc** %5, align 8
  %14 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CAM_DEBUG_PERIPH, align 4
  %17 = load %union.ccb*, %union.ccb** %4, align 8
  %18 = bitcast %union.ccb* %17 to i8*
  %19 = call i32 @CAM_DEBUG(i32 %15, i32 %16, i8* %18)
  %20 = load %struct.targ_softc*, %struct.targ_softc** %5, align 8
  %21 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %20, i32 0, i32 1
  %22 = call %struct.targ_cmd_descr* @TAILQ_FIRST(i32* %21)
  store %struct.targ_cmd_descr* %22, %struct.targ_cmd_descr** %6, align 8
  %23 = load %struct.targ_cmd_descr*, %struct.targ_cmd_descr** %6, align 8
  %24 = icmp eq %struct.targ_cmd_descr* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load %union.ccb*, %union.ccb** %4, align 8
  %27 = call i32 @xpt_release_ccb(%union.ccb* %26)
  br label %83

28:                                               ; preds = %2
  %29 = load %struct.targ_softc*, %struct.targ_softc** %5, align 8
  %30 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %29, i32 0, i32 1
  %31 = load %struct.targ_cmd_descr*, %struct.targ_cmd_descr** %6, align 8
  %32 = load i32, i32* @tqe, align 4
  %33 = call i32 @TAILQ_REMOVE(i32* %30, %struct.targ_cmd_descr* %31, i32 %32)
  %34 = load %struct.targ_softc*, %struct.targ_softc** %5, align 8
  %35 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %34, i32 0, i32 1
  %36 = call %struct.targ_cmd_descr* @TAILQ_FIRST(i32* %35)
  store %struct.targ_cmd_descr* %36, %struct.targ_cmd_descr** %7, align 8
  %37 = load %struct.targ_softc*, %struct.targ_softc** %5, align 8
  %38 = load %struct.targ_cmd_descr*, %struct.targ_cmd_descr** %6, align 8
  %39 = load %union.ccb*, %union.ccb** %4, align 8
  %40 = call i32 @targusermerge(%struct.targ_softc* %37, %struct.targ_cmd_descr* %38, %union.ccb* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %28
  %44 = load %struct.targ_softc*, %struct.targ_softc** %5, align 8
  %45 = load %union.ccb*, %union.ccb** %4, align 8
  %46 = load %struct.targ_cmd_descr*, %struct.targ_cmd_descr** %6, align 8
  %47 = call i32 @targsendccb(%struct.targ_softc* %44, %union.ccb* %45, %struct.targ_cmd_descr* %46)
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %43, %28
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %73

51:                                               ; preds = %48
  %52 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %53 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @xpt_print(i32 %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load %union.ccb*, %union.ccb** %4, align 8
  %58 = call i32 @xpt_release_ccb(%union.ccb* %57)
  %59 = load %struct.targ_cmd_descr*, %struct.targ_cmd_descr** %6, align 8
  %60 = getelementptr inbounds %struct.targ_cmd_descr, %struct.targ_cmd_descr* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* @CAM_REQ_CMP_ERR, align 4
  %65 = call i32 @suword(i32* %63, i32 %64)
  %66 = load %struct.targ_softc*, %struct.targ_softc** %5, align 8
  %67 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %66, i32 0, i32 0
  %68 = load %struct.targ_cmd_descr*, %struct.targ_cmd_descr** %6, align 8
  %69 = load i32, i32* @tqe, align 4
  %70 = call i32 @TAILQ_INSERT_TAIL(i32* %67, %struct.targ_cmd_descr* %68, i32 %69)
  %71 = load %struct.targ_softc*, %struct.targ_softc** %5, align 8
  %72 = call i32 @notify_user(%struct.targ_softc* %71)
  br label %73

73:                                               ; preds = %51, %48
  %74 = load %struct.targ_cmd_descr*, %struct.targ_cmd_descr** %7, align 8
  %75 = icmp ne %struct.targ_cmd_descr* %74, null
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %78 = load %struct.targ_cmd_descr*, %struct.targ_cmd_descr** %7, align 8
  %79 = getelementptr inbounds %struct.targ_cmd_descr, %struct.targ_cmd_descr* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @xpt_schedule(%struct.cam_periph* %77, i32 %80)
  br label %82

82:                                               ; preds = %76, %73
  br label %83

83:                                               ; preds = %82, %25
  ret void
}

declare dso_local i32 @CAM_DEBUG(i32, i32, i8*) #1

declare dso_local %struct.targ_cmd_descr* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @xpt_release_ccb(%union.ccb*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.targ_cmd_descr*, i32) #1

declare dso_local i32 @targusermerge(%struct.targ_softc*, %struct.targ_cmd_descr*, %union.ccb*) #1

declare dso_local i32 @targsendccb(%struct.targ_softc*, %union.ccb*, %struct.targ_cmd_descr*) #1

declare dso_local i32 @xpt_print(i32, i8*, i32) #1

declare dso_local i32 @suword(i32*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.targ_cmd_descr*, i32) #1

declare dso_local i32 @notify_user(%struct.targ_softc*) #1

declare dso_local i32 @xpt_schedule(%struct.cam_periph*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
