; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_xpt.c_probeschedule.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_xpt.c_probeschedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i32, i64 }
%struct.ccb_pathinq = type { i32, i32 }
%union.ccb = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }

@CAM_DEV_UNCONFIGURED = common dso_local global i32 0, align 4
@PROBE_TUR = common dso_local global i32 0, align 4
@PI_WIDE_32 = common dso_local global i32 0, align 4
@PI_WIDE_16 = common dso_local global i32 0, align 4
@PI_SDTR_ABLE = common dso_local global i32 0, align 4
@PIM_NOBUSRESET = common dso_local global i32 0, align 4
@PROBE_INQUIRY = common dso_local global i32 0, align 4
@CAM_EXPECT_INQ_CHANGE = common dso_local global i32 0, align 4
@PROBE_NO_ANNOUNCE = common dso_local global i32 0, align 4
@PIM_EXTLUNS = common dso_local global i32 0, align 4
@PROBE_EXTLUN = common dso_local global i32 0, align 4
@CAM_PRIORITY_XPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_periph*)* @probeschedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @probeschedule(%struct.cam_periph* %0) #0 {
  %2 = alloca %struct.cam_periph*, align 8
  %3 = alloca %struct.ccb_pathinq, align 4
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %2, align 8
  %6 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %7 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %5, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %12 = call i64 @TAILQ_FIRST(i32* %11)
  %13 = inttoptr i64 %12 to %union.ccb*
  store %union.ccb* %13, %union.ccb** %4, align 8
  %14 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %15 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @xpt_path_inq(%struct.ccb_pathinq* %3, i32 %16)
  %18 = load %union.ccb*, %union.ccb** %4, align 8
  %19 = bitcast %union.ccb* %18 to %struct.TYPE_9__*
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @CAM_DEV_UNCONFIGURED, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %1
  %30 = load %union.ccb*, %union.ccb** %4, align 8
  %31 = bitcast %union.ccb* %30 to %struct.TYPE_9__*
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %37 = load i32, i32* @PROBE_TUR, align 4
  %38 = call i32 @PROBE_SET_ACTION(%struct.TYPE_11__* %36, i32 %37)
  br label %66

39:                                               ; preds = %29, %1
  %40 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %3, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @PI_WIDE_32, align 4
  %43 = load i32, i32* @PI_WIDE_16, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @PI_SDTR_ABLE, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %41, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %3, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @PIM_NOBUSRESET, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %57 = call i32 @proberequestdefaultnegotiation(%struct.cam_periph* %56)
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %59 = load i32, i32* @PROBE_INQUIRY, align 4
  %60 = call i32 @PROBE_SET_ACTION(%struct.TYPE_11__* %58, i32 %59)
  br label %65

61:                                               ; preds = %49, %39
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %63 = load i32, i32* @PROBE_INQUIRY, align 4
  %64 = call i32 @PROBE_SET_ACTION(%struct.TYPE_11__* %62, i32 %63)
  br label %65

65:                                               ; preds = %61, %55
  br label %66

66:                                               ; preds = %65, %35
  %67 = load %union.ccb*, %union.ccb** %4, align 8
  %68 = bitcast %union.ccb* %67 to %struct.TYPE_10__*
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @CAM_EXPECT_INQ_CHANGE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %66
  %75 = load i32, i32* @PROBE_NO_ANNOUNCE, align 4
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %87

80:                                               ; preds = %66
  %81 = load i32, i32* @PROBE_NO_ANNOUNCE, align 4
  %82 = xor i32 %81, -1
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, %82
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %80, %74
  %88 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %3, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @PIM_EXTLUNS, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = load i32, i32* @PROBE_EXTLUN, align 4
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %106

99:                                               ; preds = %87
  %100 = load i32, i32* @PROBE_EXTLUN, align 4
  %101 = xor i32 %100, -1
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, %101
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %99, %93
  %107 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %108 = load i32, i32* @CAM_PRIORITY_XPT, align 4
  %109 = call i32 @xpt_schedule(%struct.cam_periph* %107, i32 %108)
  ret void
}

declare dso_local i64 @TAILQ_FIRST(i32*) #1

declare dso_local i32 @xpt_path_inq(%struct.ccb_pathinq*, i32) #1

declare dso_local i32 @PROBE_SET_ACTION(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @proberequestdefaultnegotiation(%struct.cam_periph*) #1

declare dso_local i32 @xpt_schedule(%struct.cam_periph*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
