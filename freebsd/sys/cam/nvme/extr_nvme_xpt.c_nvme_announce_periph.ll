; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/nvme/extr_nvme_xpt.c_nvme_announce_periph.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/nvme/extr_nvme_xpt.c_nvme_announce_periph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i32, i32, %struct.cam_path* }
%struct.cam_path = type { i32 }
%struct.ccb_pathinq = type { i32 }
%struct.ccb_trans_settings = type { %struct.TYPE_3__, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { %struct.ccb_trans_settings_nvme }
%struct.ccb_trans_settings_nvme = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sbuf = type { i32 }
%union.ccb = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@XPT_GET_TRAN_SETTINGS = common dso_local global i32 0, align 4
@CTS_TYPE_CURRENT_SETTINGS = common dso_local global i32 0, align 4
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@SBUF_FIXEDLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s%d: nvme version %d.%d\00", align 1
@CTS_NVME_VALID_LINK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c" x%d (max x%d) lanes PCIe Gen%d (max Gen%d) link\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_periph*)* @nvme_announce_periph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_announce_periph(%struct.cam_periph* %0) #0 {
  %2 = alloca %struct.cam_periph*, align 8
  %3 = alloca %struct.ccb_pathinq, align 4
  %4 = alloca %struct.ccb_trans_settings, align 4
  %5 = alloca %struct.cam_path*, align 8
  %6 = alloca %struct.ccb_trans_settings_nvme*, align 8
  %7 = alloca %struct.sbuf, align 4
  %8 = alloca [120 x i8], align 16
  store %struct.cam_periph* %0, %struct.cam_periph** %2, align 8
  %9 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %10 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %9, i32 0, i32 2
  %11 = load %struct.cam_path*, %struct.cam_path** %10, align 8
  store %struct.cam_path* %11, %struct.cam_path** %5, align 8
  %12 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %13 = load i32, i32* @MA_OWNED, align 4
  %14 = call i32 @cam_periph_assert(%struct.cam_periph* %12, i32 %13)
  %15 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %4, i32 0, i32 1
  %16 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %17 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %18 = call i32 @xpt_setup_ccb(%struct.TYPE_4__* %15, %struct.cam_path* %16, i32 %17)
  %19 = load i32, i32* @XPT_GET_TRAN_SETTINGS, align 4
  %20 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %4, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @CTS_TYPE_CURRENT_SETTINGS, align 4
  %23 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %4, i32 0, i32 2
  store i32 %22, i32* %23, align 4
  %24 = bitcast %struct.ccb_trans_settings* %4 to %union.ccb*
  %25 = call i32 @xpt_action(%union.ccb* %24)
  %26 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %4, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CAM_STATUS_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @CAM_REQ_CMP, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %1
  br label %83

34:                                               ; preds = %1
  %35 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %4, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store %struct.ccb_trans_settings_nvme* %36, %struct.ccb_trans_settings_nvme** %6, align 8
  %37 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %38 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %37, i32 0, i32 2
  %39 = load %struct.cam_path*, %struct.cam_path** %38, align 8
  %40 = call i32 @xpt_path_inq(%struct.ccb_pathinq* %3, %struct.cam_path* %39)
  %41 = getelementptr inbounds [120 x i8], [120 x i8]* %8, i64 0, i64 0
  %42 = load i32, i32* @SBUF_FIXEDLEN, align 4
  %43 = call i32 @sbuf_new(%struct.sbuf* %7, i8* %41, i32 120, i32 %42)
  %44 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %45 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %48 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ccb_trans_settings_nvme*, %struct.ccb_trans_settings_nvme** %6, align 8
  %51 = getelementptr inbounds %struct.ccb_trans_settings_nvme, %struct.ccb_trans_settings_nvme* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @NVME_MAJOR(i32 %52)
  %54 = load %struct.ccb_trans_settings_nvme*, %struct.ccb_trans_settings_nvme** %6, align 8
  %55 = getelementptr inbounds %struct.ccb_trans_settings_nvme, %struct.ccb_trans_settings_nvme* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @NVME_MINOR(i32 %56)
  %58 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %49, i32 %53, i32 %57)
  %59 = load %struct.ccb_trans_settings_nvme*, %struct.ccb_trans_settings_nvme** %6, align 8
  %60 = getelementptr inbounds %struct.ccb_trans_settings_nvme, %struct.ccb_trans_settings_nvme* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @CTS_NVME_VALID_LINK, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %34
  %66 = load %struct.ccb_trans_settings_nvme*, %struct.ccb_trans_settings_nvme** %6, align 8
  %67 = getelementptr inbounds %struct.ccb_trans_settings_nvme, %struct.ccb_trans_settings_nvme* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ccb_trans_settings_nvme*, %struct.ccb_trans_settings_nvme** %6, align 8
  %70 = getelementptr inbounds %struct.ccb_trans_settings_nvme, %struct.ccb_trans_settings_nvme* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ccb_trans_settings_nvme*, %struct.ccb_trans_settings_nvme** %6, align 8
  %73 = getelementptr inbounds %struct.ccb_trans_settings_nvme, %struct.ccb_trans_settings_nvme* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ccb_trans_settings_nvme*, %struct.ccb_trans_settings_nvme** %6, align 8
  %76 = getelementptr inbounds %struct.ccb_trans_settings_nvme, %struct.ccb_trans_settings_nvme* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %7, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %71, i32 %74, i32 %77)
  br label %79

79:                                               ; preds = %65, %34
  %80 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %81 = call i32 @sbuf_finish(%struct.sbuf* %7)
  %82 = call i32 @sbuf_putbuf(%struct.sbuf* %7)
  br label %83

83:                                               ; preds = %79, %33
  ret void
}

declare dso_local i32 @cam_periph_assert(%struct.cam_periph*, i32) #1

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_4__*, %struct.cam_path*, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i32 @xpt_path_inq(%struct.ccb_pathinq*, %struct.cam_path*) #1

declare dso_local i32 @sbuf_new(%struct.sbuf*, i8*, i32, i32) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, ...) #1

declare dso_local i32 @NVME_MAJOR(i32) #1

declare dso_local i32 @NVME_MINOR(i32) #1

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i32 @sbuf_putbuf(%struct.sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
