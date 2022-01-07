; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_ie_page_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_ie_page_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { i32 }
%struct.ctl_page_index = type { i32 }
%struct.ctl_lun = type { i32, i32, i32, i32, i32, i32 }
%struct.scsi_info_exceptions_page = type { i32, i64, i32, i32 }

@SIEP_FLAGS_TEST = common dso_local global i32 0, align 4
@SIEP_MRIE_UA = common dso_local global i64 0, align 8
@CTL_UA_IE = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@ctl_ie_timer = common dso_local global i32 0, align 4
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_ie_page_handler(%struct.ctl_scsiio* %0, %struct.ctl_page_index* %1, i32* %2) #0 {
  %4 = alloca %struct.ctl_scsiio*, align 8
  %5 = alloca %struct.ctl_page_index*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ctl_lun*, align 8
  %8 = alloca %struct.scsi_info_exceptions_page*, align 8
  %9 = alloca i32, align 4
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %4, align 8
  store %struct.ctl_page_index* %1, %struct.ctl_page_index** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %4, align 8
  %11 = call %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio* %10)
  store %struct.ctl_lun* %11, %struct.ctl_lun** %7, align 8
  %12 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %4, align 8
  %13 = load %struct.ctl_page_index*, %struct.ctl_page_index** %5, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @ctl_default_page_handler(%struct.ctl_scsiio* %12, %struct.ctl_page_index* %13, i32* %14)
  %16 = load i32*, i32** %6, align 8
  %17 = bitcast i32* %16 to %struct.scsi_info_exceptions_page*
  store %struct.scsi_info_exceptions_page* %17, %struct.scsi_info_exceptions_page** %8, align 8
  %18 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %19 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %18, i32 0, i32 4
  %20 = call i32 @mtx_lock(i32* %19)
  %21 = load %struct.scsi_info_exceptions_page*, %struct.scsi_info_exceptions_page** %8, align 8
  %22 = getelementptr inbounds %struct.scsi_info_exceptions_page, %struct.scsi_info_exceptions_page* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @SIEP_FLAGS_TEST, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %87

27:                                               ; preds = %3
  %28 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %29 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %28, i32 0, i32 0
  store i32 93, i32* %29, align 4
  %30 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %31 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %30, i32 0, i32 1
  store i32 255, i32* %31, align 4
  %32 = load %struct.scsi_info_exceptions_page*, %struct.scsi_info_exceptions_page** %8, align 8
  %33 = getelementptr inbounds %struct.scsi_info_exceptions_page, %struct.scsi_info_exceptions_page* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SIEP_MRIE_UA, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %27
  %38 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %39 = load i32, i32* @CTL_UA_IE, align 4
  %40 = call i32 @ctl_est_ua_all(%struct.ctl_lun* %38, i32 -1, i32 %39)
  %41 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %42 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %41, i32 0, i32 2
  store i32 1, i32* %42, align 4
  br label %49

43:                                               ; preds = %27
  %44 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %45 = load i32, i32* @CTL_UA_IE, align 4
  %46 = call i32 @ctl_clr_ua_all(%struct.ctl_lun* %44, i32 -1, i32 %45)
  %47 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %48 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %47, i32 0, i32 2
  store i32 -1, i32* %48, align 4
  br label %49

49:                                               ; preds = %43, %37
  %50 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %51 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %50, i32 0, i32 3
  store i32 1, i32* %51, align 4
  %52 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %53 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.scsi_info_exceptions_page*, %struct.scsi_info_exceptions_page** %8, align 8
  %56 = getelementptr inbounds %struct.scsi_info_exceptions_page, %struct.scsi_info_exceptions_page* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @scsi_4btoul(i32 %57)
  %59 = icmp slt i32 %54, %58
  br i1 %59, label %60, label %86

60:                                               ; preds = %49
  %61 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %62 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = load %struct.scsi_info_exceptions_page*, %struct.scsi_info_exceptions_page** %8, align 8
  %66 = getelementptr inbounds %struct.scsi_info_exceptions_page, %struct.scsi_info_exceptions_page* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @scsi_4btoul(i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %60
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @UINT32_MAX, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71, %60
  store i32 3000, i32* %9, align 4
  br label %76

76:                                               ; preds = %75, %71
  %77 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %78 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %77, i32 0, i32 5
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @hz, align 4
  %81 = mul nsw i32 %79, %80
  %82 = sdiv i32 %81, 10
  %83 = load i32, i32* @ctl_ie_timer, align 4
  %84 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %85 = call i32 @callout_reset(i32* %78, i32 %82, i32 %83, %struct.ctl_lun* %84)
  br label %86

86:                                               ; preds = %76, %49
  br label %103

87:                                               ; preds = %3
  %88 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %89 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %88, i32 0, i32 0
  store i32 0, i32* %89, align 4
  %90 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %91 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %90, i32 0, i32 1
  store i32 0, i32* %91, align 4
  %92 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %93 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %92, i32 0, i32 2
  store i32 1, i32* %93, align 4
  %94 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %95 = load i32, i32* @CTL_UA_IE, align 4
  %96 = call i32 @ctl_clr_ua_all(%struct.ctl_lun* %94, i32 -1, i32 %95)
  %97 = load i32, i32* @UINT32_MAX, align 4
  %98 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %99 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  %100 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %101 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %100, i32 0, i32 5
  %102 = call i32 @callout_stop(i32* %101)
  br label %103

103:                                              ; preds = %87, %86
  %104 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %105 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %104, i32 0, i32 4
  %106 = call i32 @mtx_unlock(i32* %105)
  %107 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  ret i32 %107
}

declare dso_local %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio*) #1

declare dso_local i32 @ctl_default_page_handler(%struct.ctl_scsiio*, %struct.ctl_page_index*, i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @ctl_est_ua_all(%struct.ctl_lun*, i32, i32) #1

declare dso_local i32 @ctl_clr_ua_all(%struct.ctl_lun*, i32, i32) #1

declare dso_local i32 @scsi_4btoul(i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.ctl_lun*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
