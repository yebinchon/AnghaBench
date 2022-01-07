; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc_ses.c_ses_setphyspath_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc_ses.c_ses_setphyspath_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_path = type { i32 }
%struct.ccb_dev_advinfo = type { i8*, %struct.TYPE_4__, i32, i32, i8* }
%struct.TYPE_4__ = type { i32, i32, i8* }
%struct.TYPE_3__ = type { i32, i32 }
%union.ccb = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@M_SCSIENC = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@XPT_DEV_ADVINFO = common dso_local global i8* null, align 8
@CDAI_TYPE_PHYS_PATH = common dso_local global i8* null, align 8
@CDAI_FLAG_NONE = common dso_local global i32 0, align 4
@CAM_DEV_QFRZN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@CDAI_FLAG_STORE = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.cam_path*, i8*)* @ses_setphyspath_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ses_setphyspath_callback(i32* %0, i32* %1, %struct.cam_path* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.cam_path*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ccb_dev_advinfo, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.cam_path* %2, %struct.cam_path** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %10, align 8
  %14 = load i32, i32* @MAXPATHLEN, align 4
  %15 = load i32, i32* @M_SCSIENC, align 4
  %16 = load i32, i32* @M_WAITOK, align 4
  %17 = load i32, i32* @M_ZERO, align 4
  %18 = or i32 %16, %17
  %19 = call i8* @malloc(i32 %14, i32 %15, i32 %18)
  store i8* %19, i8** %11, align 8
  %20 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %21 = call i32 @xpt_path_lock(%struct.cam_path* %20)
  %22 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %9, i32 0, i32 1
  %23 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %24 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %25 = call i32 @xpt_setup_ccb(%struct.TYPE_4__* %22, %struct.cam_path* %23, i32 %24)
  %26 = load i8*, i8** @XPT_DEV_ADVINFO, align 8
  %27 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %9, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** @CDAI_TYPE_PHYS_PATH, align 8
  %30 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %9, i32 0, i32 4
  store i8* %29, i8** %30, align 8
  %31 = load i32, i32* @CDAI_FLAG_NONE, align 4
  %32 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %9, i32 0, i32 3
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @MAXPATHLEN, align 4
  %34 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %9, i32 0, i32 2
  store i32 %33, i32* %34, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %9, i32 0, i32 0
  store i8* %35, i8** %36, align 8
  %37 = bitcast %struct.ccb_dev_advinfo* %9 to %union.ccb*
  %38 = call i32 @xpt_action(%union.ccb* %37)
  %39 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %9, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %4
  %46 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %9, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @FALSE, align 4
  %50 = call i32 @cam_release_devq(i32 %48, i32 0, i32 0, i32 0, i32 %49)
  br label %51

51:                                               ; preds = %45, %4
  %52 = load i8*, i8** %11, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @sbuf_data(i32 %55)
  %57 = call i64 @strcmp(i8* %52, i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %107

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %9, i32 0, i32 1
  %61 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %62 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %63 = call i32 @xpt_setup_ccb(%struct.TYPE_4__* %60, %struct.cam_path* %61, i32 %62)
  %64 = load i8*, i8** @XPT_DEV_ADVINFO, align 8
  %65 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %9, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  %67 = load i8*, i8** @CDAI_TYPE_PHYS_PATH, align 8
  %68 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %9, i32 0, i32 4
  store i8* %67, i8** %68, align 8
  %69 = load i32, i32* @CDAI_FLAG_STORE, align 4
  %70 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %9, i32 0, i32 3
  store i32 %69, i32* %70, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @sbuf_len(i32 %73)
  %75 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %9, i32 0, i32 2
  store i32 %74, i32* %75, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @sbuf_data(i32 %78)
  %80 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %9, i32 0, i32 0
  store i8* %79, i8** %80, align 8
  %81 = bitcast %struct.ccb_dev_advinfo* %9 to %union.ccb*
  %82 = call i32 @xpt_action(%union.ccb* %81)
  %83 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %9, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %59
  %90 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %9, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @FALSE, align 4
  %94 = call i32 @cam_release_devq(i32 %92, i32 0, i32 0, i32 0, i32 %93)
  br label %95

95:                                               ; preds = %89, %59
  %96 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %9, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @CAM_REQ_CMP, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %95
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %101, %95
  br label %107

107:                                              ; preds = %106, %51
  %108 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %109 = call i32 @xpt_path_unlock(%struct.cam_path* %108)
  %110 = load i8*, i8** %11, align 8
  %111 = load i32, i32* @M_SCSIENC, align 4
  %112 = call i32 @free(i8* %110, i32 %111)
  ret void
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @xpt_path_lock(%struct.cam_path*) #1

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_4__*, %struct.cam_path*, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i32 @cam_release_devq(i32, i32, i32, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @sbuf_data(i32) #1

declare dso_local i32 @sbuf_len(i32) #1

declare dso_local i32 @xpt_path_unlock(%struct.cam_path*) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
