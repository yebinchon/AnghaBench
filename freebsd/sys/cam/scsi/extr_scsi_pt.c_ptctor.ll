; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_pt.c_ptctor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_pt.c_ptctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i32, i32, i32, %struct.pt_softc* }
%struct.pt_softc = type { i32, i32, i32, i32, i32, i32 }
%struct.ccb_getdev = type { i32 }
%struct.ccb_pathinq = type { i32 }
%struct.make_dev_args = type { i32, %struct.cam_periph*, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [50 x i8] c"ptregister: no getdev CCB, can't register device\0A\00", align 1
@CAM_REQ_CMP_ERR = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"daregister: Unable to probe new device. Unable to allocate softc\0A\00", align 1
@PT_STATE_NORMAL = common dso_local global i32 0, align 4
@SCSI_PT_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@pt_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_OPERATOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"pt\00", align 1
@DEVSTAT_NO_BLOCKSIZE = common dso_local global i32 0, align 4
@DEVSTAT_PRIORITY_OTHER = common dso_local global i32 0, align 4
@AC_SENT_BDR = common dso_local global i32 0, align 4
@AC_BUS_RESET = common dso_local global i32 0, align 4
@AC_LOST_DEVICE = common dso_local global i32 0, align 4
@ptasync = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_periph*, i8*)* @ptctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptctor(%struct.cam_periph* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cam_periph*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pt_softc*, align 8
  %7 = alloca %struct.ccb_getdev*, align 8
  %8 = alloca %struct.ccb_pathinq, align 4
  %9 = alloca %struct.make_dev_args, align 8
  %10 = alloca i32, align 4
  store %struct.cam_periph* %0, %struct.cam_periph** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.ccb_getdev*
  store %struct.ccb_getdev* %12, %struct.ccb_getdev** %7, align 8
  %13 = load %struct.ccb_getdev*, %struct.ccb_getdev** %7, align 8
  %14 = icmp eq %struct.ccb_getdev* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @CAM_REQ_CMP_ERR, align 4
  store i32 %17, i32* %3, align 4
  br label %113

18:                                               ; preds = %2
  %19 = load i32, i32* @M_DEVBUF, align 4
  %20 = load i32, i32* @M_NOWAIT, align 4
  %21 = call i64 @malloc(i32 24, i32 %19, i32 %20)
  %22 = inttoptr i64 %21 to %struct.pt_softc*
  store %struct.pt_softc* %22, %struct.pt_softc** %6, align 8
  %23 = load %struct.pt_softc*, %struct.pt_softc** %6, align 8
  %24 = icmp eq %struct.pt_softc* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = call i32 @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @CAM_REQ_CMP_ERR, align 4
  store i32 %27, i32* %3, align 4
  br label %113

28:                                               ; preds = %18
  %29 = load %struct.pt_softc*, %struct.pt_softc** %6, align 8
  %30 = call i32 @bzero(%struct.pt_softc* %29, i32 24)
  %31 = load %struct.pt_softc*, %struct.pt_softc** %6, align 8
  %32 = getelementptr inbounds %struct.pt_softc, %struct.pt_softc* %31, i32 0, i32 5
  %33 = call i32 @LIST_INIT(i32* %32)
  %34 = load i32, i32* @PT_STATE_NORMAL, align 4
  %35 = load %struct.pt_softc*, %struct.pt_softc** %6, align 8
  %36 = getelementptr inbounds %struct.pt_softc, %struct.pt_softc* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load %struct.pt_softc*, %struct.pt_softc** %6, align 8
  %38 = getelementptr inbounds %struct.pt_softc, %struct.pt_softc* %37, i32 0, i32 3
  %39 = call i32 @bioq_init(i32* %38)
  %40 = load i32, i32* @SCSI_PT_DEFAULT_TIMEOUT, align 4
  %41 = mul nsw i32 %40, 1000
  %42 = load %struct.pt_softc*, %struct.pt_softc** %6, align 8
  %43 = getelementptr inbounds %struct.pt_softc, %struct.pt_softc* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.pt_softc*, %struct.pt_softc** %6, align 8
  %45 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %46 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %45, i32 0, i32 3
  store %struct.pt_softc* %44, %struct.pt_softc** %46, align 8
  %47 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %48 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @xpt_path_inq(%struct.ccb_pathinq* %8, i32 %49)
  %51 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %52 = call i32 @cam_periph_unlock(%struct.cam_periph* %51)
  %53 = call i32 @make_dev_args_init(%struct.make_dev_args* %9)
  %54 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %9, i32 0, i32 5
  store i32* @pt_cdevsw, i32** %54, align 8
  %55 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %56 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %9, i32 0, i32 4
  store i32 %57, i32* %58, align 8
  %59 = load i32, i32* @UID_ROOT, align 4
  %60 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %9, i32 0, i32 3
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* @GID_OPERATOR, align 4
  %62 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %9, i32 0, i32 2
  store i32 %61, i32* %62, align 8
  %63 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %9, i32 0, i32 0
  store i32 384, i32* %63, align 8
  %64 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %65 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %9, i32 0, i32 1
  store %struct.cam_periph* %64, %struct.cam_periph** %65, align 8
  %66 = load %struct.pt_softc*, %struct.pt_softc** %6, align 8
  %67 = getelementptr inbounds %struct.pt_softc, %struct.pt_softc* %66, i32 0, i32 2
  %68 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %69 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %72 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @make_dev_s(%struct.make_dev_args* %9, i32* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %70, i32 %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %28
  %78 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %79 = call i32 @cam_periph_lock(%struct.cam_periph* %78)
  %80 = load i32, i32* @CAM_REQ_CMP_ERR, align 4
  store i32 %80, i32* %3, align 4
  br label %113

81:                                               ; preds = %28
  %82 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %83 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @DEVSTAT_NO_BLOCKSIZE, align 4
  %86 = load %struct.ccb_getdev*, %struct.ccb_getdev** %7, align 8
  %87 = getelementptr inbounds %struct.ccb_getdev, %struct.ccb_getdev* %86, i32 0, i32 0
  %88 = call i32 @SID_TYPE(i32* %87)
  %89 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %8, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @XPORT_DEVSTAT_TYPE(i32 %90)
  %92 = or i32 %88, %91
  %93 = load i32, i32* @DEVSTAT_PRIORITY_OTHER, align 4
  %94 = call i32 @devstat_new_entry(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %84, i32 0, i32 %85, i32 %92, i32 %93)
  %95 = load %struct.pt_softc*, %struct.pt_softc** %6, align 8
  %96 = getelementptr inbounds %struct.pt_softc, %struct.pt_softc* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %98 = call i32 @cam_periph_lock(%struct.cam_periph* %97)
  %99 = load i32, i32* @AC_SENT_BDR, align 4
  %100 = load i32, i32* @AC_BUS_RESET, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @AC_LOST_DEVICE, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @ptasync, align 4
  %105 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %106 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %107 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @xpt_register_async(i32 %103, i32 %104, %struct.cam_periph* %105, i32 %108)
  %110 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %111 = call i32 @xpt_announce_periph(%struct.cam_periph* %110, i32* null)
  %112 = load i32, i32* @CAM_REQ_CMP, align 4
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %81, %77, %25, %15
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @bzero(%struct.pt_softc*, i32) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @bioq_init(i32*) #1

declare dso_local i32 @xpt_path_inq(%struct.ccb_pathinq*, i32) #1

declare dso_local i32 @cam_periph_unlock(%struct.cam_periph*) #1

declare dso_local i32 @make_dev_args_init(%struct.make_dev_args*) #1

declare dso_local i32 @make_dev_s(%struct.make_dev_args*, i32*, i8*, i32, i32) #1

declare dso_local i32 @cam_periph_lock(%struct.cam_periph*) #1

declare dso_local i32 @devstat_new_entry(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SID_TYPE(i32*) #1

declare dso_local i32 @XPORT_DEVSTAT_TYPE(i32) #1

declare dso_local i32 @xpt_register_async(i32, i32, %struct.cam_periph*, i32) #1

declare dso_local i32 @xpt_announce_periph(%struct.cam_periph*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
