; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xptaction.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xptaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_sim = type { i8*, i32, i32 }
%union.ccb = type { %struct.ccb_pathinq }
%struct.ccb_pathinq = type { i32, %struct.TYPE_3__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"xptaction\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"FreeBSD\00", align 1
@SIM_IDLEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HBA_IDLEN = common dso_local global i32 0, align 4
@DEV_IDLEN = common dso_local global i32 0, align 4
@PROTO_UNSPECIFIED = common dso_local global i32 0, align 4
@PROTO_VERSION_UNSPECIFIED = common dso_local global i32 0, align 4
@XPORT_UNSPECIFIED = common dso_local global i32 0, align 4
@XPORT_VERSION_UNSPECIFIED = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@CAM_REQ_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_sim*, %union.ccb*)* @xptaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xptaction(%struct.cam_sim* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.cam_sim*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.ccb_pathinq*, align 8
  store %struct.cam_sim* %0, %struct.cam_sim** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %6 = load %union.ccb*, %union.ccb** %4, align 8
  %7 = bitcast %union.ccb* %6 to %struct.TYPE_4__*
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %11 = call i32 @CAM_DEBUG(i32 %9, i32 %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %12 = load %union.ccb*, %union.ccb** %4, align 8
  %13 = bitcast %union.ccb* %12 to %struct.TYPE_4__*
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %83 [
    i32 128, label %16
  ]

16:                                               ; preds = %2
  %17 = load %union.ccb*, %union.ccb** %4, align 8
  %18 = bitcast %union.ccb* %17 to %struct.ccb_pathinq*
  store %struct.ccb_pathinq* %18, %struct.ccb_pathinq** %5, align 8
  %19 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %5, align 8
  %20 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  %21 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %5, align 8
  %22 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %21, i32 0, i32 18
  store i32 0, i32* %22, align 4
  %23 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %5, align 8
  %24 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %23, i32 0, i32 17
  store i32 0, i32* %24, align 4
  %25 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %5, align 8
  %26 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %25, i32 0, i32 16
  store i32 0, i32* %26, align 4
  %27 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %5, align 8
  %28 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %27, i32 0, i32 15
  store i32 0, i32* %28, align 4
  %29 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %5, align 8
  %30 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %29, i32 0, i32 14
  store i32 0, i32* %30, align 4
  %31 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %5, align 8
  %32 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %31, i32 0, i32 13
  store i32 0, i32* %32, align 4
  %33 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %5, align 8
  %34 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %33, i32 0, i32 12
  store i32 0, i32* %34, align 4
  %35 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %5, align 8
  %36 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %35, i32 0, i32 11
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SIM_IDLEN, align 4
  %39 = call i32 @strlcpy(i32 %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %5, align 8
  %41 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %40, i32 0, i32 10
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @HBA_IDLEN, align 4
  %44 = call i32 @strlcpy(i32 %42, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %5, align 8
  %46 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %45, i32 0, i32 9
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %49 = getelementptr inbounds %struct.cam_sim, %struct.cam_sim* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* @DEV_IDLEN, align 4
  %52 = call i32 @strlcpy(i32 %47, i8* %50, i32 %51)
  %53 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %54 = getelementptr inbounds %struct.cam_sim, %struct.cam_sim* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %5, align 8
  %57 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %56, i32 0, i32 8
  store i32 %55, i32* %57, align 4
  %58 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %59 = getelementptr inbounds %struct.cam_sim, %struct.cam_sim* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %5, align 8
  %62 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %61, i32 0, i32 7
  store i32 %60, i32* %62, align 4
  %63 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %5, align 8
  %64 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %63, i32 0, i32 6
  store i32 0, i32* %64, align 4
  %65 = load i32, i32* @PROTO_UNSPECIFIED, align 4
  %66 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %5, align 8
  %67 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @PROTO_VERSION_UNSPECIFIED, align 4
  %69 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %5, align 8
  %70 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @XPORT_UNSPECIFIED, align 4
  %72 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %5, align 8
  %73 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @XPORT_VERSION_UNSPECIFIED, align 4
  %75 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %5, align 8
  %76 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @CAM_REQ_CMP, align 4
  %78 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %5, align 8
  %79 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 4
  %81 = load %union.ccb*, %union.ccb** %4, align 8
  %82 = call i32 @xpt_done(%union.ccb* %81)
  br label %90

83:                                               ; preds = %2
  %84 = load i32, i32* @CAM_REQ_INVALID, align 4
  %85 = load %union.ccb*, %union.ccb** %4, align 8
  %86 = bitcast %union.ccb* %85 to %struct.TYPE_4__*
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  store i32 %84, i32* %87, align 4
  %88 = load %union.ccb*, %union.ccb** %4, align 8
  %89 = call i32 @xpt_done(%union.ccb* %88)
  br label %90

90:                                               ; preds = %83, %16
  ret void
}

declare dso_local i32 @CAM_DEBUG(i32, i32, i8*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
