; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_target.c_targioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_target.c_targioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.targ_softc = type { i32, i32, i32* }
%struct.ioc_enable_lun = type { i32, i32, i32, i32, i32 }
%struct.cam_path = type { i32 }
%struct.ccb_debug = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%union.ccb = type { i32 }

@CAM_REQ_CMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Couldn't create path, status %#x\0A\00", align 1
@CAM_DEV_NOT_THERE = common dso_local global i32 0, align 4
@TARG_STATE_LUN_ENABLED = common dso_local global i32 0, align 4
@CAM_DEBUG_PERIPH = common dso_local global i32 0, align 4
@CAM_DEBUG_NONE = common dso_local global i32 0, align 4
@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@XPT_DEBUG = common dso_local global i32 0, align 4
@targdone = common dso_local global i32 0, align 4
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_PROVIDE_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @targioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @targioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.thread*, align 8
  %11 = alloca %struct.targ_softc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ioc_enable_lun*, align 8
  %14 = alloca %struct.cam_path*, align 8
  %15 = alloca %struct.ccb_debug, align 4
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.thread* %4, %struct.thread** %10, align 8
  %16 = bitcast %struct.targ_softc** %11 to i8**
  %17 = call i32 @devfs_get_cdevpriv(i8** %16)
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %113 [
    i32 128, label %19
    i32 129, label %54
    i32 130, label %72
  ]

19:                                               ; preds = %5
  %20 = load i64, i64* %8, align 8
  %21 = inttoptr i64 %20 to %struct.ioc_enable_lun*
  store %struct.ioc_enable_lun* %21, %struct.ioc_enable_lun** %13, align 8
  %22 = load %struct.ioc_enable_lun*, %struct.ioc_enable_lun** %13, align 8
  %23 = getelementptr inbounds %struct.ioc_enable_lun, %struct.ioc_enable_lun* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ioc_enable_lun*, %struct.ioc_enable_lun** %13, align 8
  %26 = getelementptr inbounds %struct.ioc_enable_lun, %struct.ioc_enable_lun* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ioc_enable_lun*, %struct.ioc_enable_lun** %13, align 8
  %29 = getelementptr inbounds %struct.ioc_enable_lun, %struct.ioc_enable_lun* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @xpt_create_path(%struct.cam_path** %14, i32* null, i32 %24, i32 %27, i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @CAM_REQ_CMP, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %19
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %115

38:                                               ; preds = %19
  %39 = load %struct.cam_path*, %struct.cam_path** %14, align 8
  %40 = call i32 @xpt_path_lock(%struct.cam_path* %39)
  %41 = load %struct.targ_softc*, %struct.targ_softc** %11, align 8
  %42 = load %struct.cam_path*, %struct.cam_path** %14, align 8
  %43 = load %struct.ioc_enable_lun*, %struct.ioc_enable_lun** %13, align 8
  %44 = getelementptr inbounds %struct.ioc_enable_lun, %struct.ioc_enable_lun* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ioc_enable_lun*, %struct.ioc_enable_lun** %13, align 8
  %47 = getelementptr inbounds %struct.ioc_enable_lun, %struct.ioc_enable_lun* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @targenable(%struct.targ_softc* %41, %struct.cam_path* %42, i32 %45, i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = load %struct.cam_path*, %struct.cam_path** %14, align 8
  %51 = call i32 @xpt_path_unlock(%struct.cam_path* %50)
  %52 = load %struct.cam_path*, %struct.cam_path** %14, align 8
  %53 = call i32 @xpt_free_path(%struct.cam_path* %52)
  br label %115

54:                                               ; preds = %5
  %55 = load %struct.targ_softc*, %struct.targ_softc** %11, align 8
  %56 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @CAM_DEV_NOT_THERE, align 4
  store i32 %60, i32* %12, align 4
  br label %115

61:                                               ; preds = %54
  %62 = load %struct.targ_softc*, %struct.targ_softc** %11, align 8
  %63 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @cam_periph_lock(i32* %64)
  %66 = load %struct.targ_softc*, %struct.targ_softc** %11, align 8
  %67 = call i32 @targdisable(%struct.targ_softc* %66)
  store i32 %67, i32* %12, align 4
  %68 = load %struct.targ_softc*, %struct.targ_softc** %11, align 8
  %69 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @cam_periph_unlock(i32* %70)
  br label %115

72:                                               ; preds = %5
  %73 = load %struct.targ_softc*, %struct.targ_softc** %11, align 8
  %74 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @TARG_STATE_LUN_ENABLED, align 4
  %77 = and i32 %75, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* @CAM_DEV_NOT_THERE, align 4
  store i32 %80, i32* %12, align 4
  br label %115

81:                                               ; preds = %72
  %82 = call i32 @bzero(%struct.ccb_debug* %15, i32 16)
  %83 = load i64, i64* %8, align 8
  %84 = inttoptr i64 %83 to i32*
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i32, i32* @CAM_DEBUG_PERIPH, align 4
  %89 = getelementptr inbounds %struct.ccb_debug, %struct.ccb_debug* %15, i32 0, i32 1
  store i32 %88, i32* %89, align 4
  br label %93

90:                                               ; preds = %81
  %91 = load i32, i32* @CAM_DEBUG_NONE, align 4
  %92 = getelementptr inbounds %struct.ccb_debug, %struct.ccb_debug* %15, i32 0, i32 1
  store i32 %91, i32* %92, align 4
  br label %93

93:                                               ; preds = %90, %87
  %94 = getelementptr inbounds %struct.ccb_debug, %struct.ccb_debug* %15, i32 0, i32 0
  %95 = load %struct.targ_softc*, %struct.targ_softc** %11, align 8
  %96 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %99 = call i32 @xpt_setup_ccb(%struct.TYPE_2__* %94, i32 %97, i32 %98)
  %100 = load i32, i32* @XPT_DEBUG, align 4
  %101 = getelementptr inbounds %struct.ccb_debug, %struct.ccb_debug* %15, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* @targdone, align 4
  %104 = getelementptr inbounds %struct.ccb_debug, %struct.ccb_debug* %15, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = bitcast %struct.ccb_debug* %15 to %union.ccb*
  %107 = call i32 @xpt_action(%union.ccb* %106)
  %108 = getelementptr inbounds %struct.ccb_debug, %struct.ccb_debug* %15, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @CAM_STATUS_MASK, align 4
  %112 = and i32 %110, %111
  store i32 %112, i32* %12, align 4
  br label %115

113:                                              ; preds = %5
  %114 = load i32, i32* @CAM_PROVIDE_FAIL, align 4
  store i32 %114, i32* %12, align 4
  br label %115

115:                                              ; preds = %113, %93, %79, %61, %59, %38, %35
  %116 = load i32, i32* %12, align 4
  %117 = call i32 @targcamstatus(i32 %116)
  ret i32 %117
}

declare dso_local i32 @devfs_get_cdevpriv(i8**) #1

declare dso_local i32 @xpt_create_path(%struct.cam_path**, i32*, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @xpt_path_lock(%struct.cam_path*) #1

declare dso_local i32 @targenable(%struct.targ_softc*, %struct.cam_path*, i32, i32) #1

declare dso_local i32 @xpt_path_unlock(%struct.cam_path*) #1

declare dso_local i32 @xpt_free_path(%struct.cam_path*) #1

declare dso_local i32 @cam_periph_lock(i32*) #1

declare dso_local i32 @targdisable(%struct.targ_softc*) #1

declare dso_local i32 @cam_periph_unlock(i32*) #1

declare dso_local i32 @bzero(%struct.ccb_debug*, i32) #1

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i32 @targcamstatus(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
