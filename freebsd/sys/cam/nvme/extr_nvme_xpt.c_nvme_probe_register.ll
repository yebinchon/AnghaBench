; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/nvme/extr_nvme_xpt.c_nvme_probe_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/nvme/extr_nvme_xpt.c_nvme_probe_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.cam_periph = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.cam_periph*, i64, i32 }
%union.ccb = type { i32 }

@.str = private unnamed_addr constant [58 x i8] c"nvme_probe_register: no probe CCB, can't register device\0A\00", align 1
@CAM_REQ_CMP_ERR = common dso_local global i32 0, align 4
@M_CAMXPT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [75 x i8] c"nvme_probe_register: Unable to probe new device. Unable to allocate softc\0A\00", align 1
@periph_links = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@NVME_PROBE_INVALID = common dso_local global i32 0, align 4
@CAM_DEBUG_PROBE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"Probe started\0A\00", align 1
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_periph*, i8*)* @nvme_probe_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_probe_register(%struct.cam_periph* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cam_periph*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %union.ccb*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %union.ccb*
  store %union.ccb* %9, %union.ccb** %6, align 8
  %10 = load %union.ccb*, %union.ccb** %6, align 8
  %11 = icmp eq %union.ccb* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = call i32 @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @CAM_REQ_CMP_ERR, align 4
  store i32 %14, i32* %3, align 4
  br label %62

15:                                               ; preds = %2
  %16 = load i32, i32* @M_CAMXPT, align 4
  %17 = load i32, i32* @M_ZERO, align 4
  %18 = load i32, i32* @M_NOWAIT, align 4
  %19 = or i32 %17, %18
  %20 = call i64 @malloc(i32 32, i32 %16, i32 %19)
  %21 = inttoptr i64 %20 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %7, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %23 = icmp eq %struct.TYPE_3__* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = call i32 @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @CAM_REQ_CMP_ERR, align 4
  store i32 %26, i32* %3, align 4
  br label %62

27:                                               ; preds = %15
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 3
  %30 = call i32 @TAILQ_INIT(i32* %29)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  %33 = load %union.ccb*, %union.ccb** %6, align 8
  %34 = bitcast %union.ccb* %33 to i32*
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @periph_links, i32 0, i32 0), align 4
  %36 = call i32 @TAILQ_INSERT_TAIL(i32* %32, i32* %34, i32 %35)
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %40 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %41 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %40, i32 0, i32 1
  store %struct.TYPE_3__* %39, %struct.TYPE_3__** %41, align 8
  %42 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store %struct.cam_periph* %42, %struct.cam_periph** %44, align 8
  %45 = load i32, i32* @NVME_PROBE_INVALID, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %49 = call i64 @cam_periph_acquire(%struct.cam_periph* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %27
  %52 = load i32, i32* @CAM_REQ_CMP_ERR, align 4
  store i32 %52, i32* %3, align 4
  br label %62

53:                                               ; preds = %27
  %54 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %55 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @CAM_DEBUG_PROBE, align 4
  %58 = call i32 @CAM_DEBUG(i32 %56, i32 %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %59 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %60 = call i32 @nvme_probe_schedule(%struct.cam_periph* %59)
  %61 = load i32, i32* @CAM_REQ_CMP, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %53, %51, %24, %12
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, i32*, i32) #1

declare dso_local i64 @cam_periph_acquire(%struct.cam_periph*) #1

declare dso_local i32 @CAM_DEBUG(i32, i32, i8*) #1

declare dso_local i32 @nvme_probe_schedule(%struct.cam_periph*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
