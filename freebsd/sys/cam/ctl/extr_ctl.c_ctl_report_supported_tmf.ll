; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_report_supported_tmf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_report_supported_tmf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { i32, %struct.TYPE_2__, i64, i32, i32, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.scsi_report_supported_tmf = type { i32, i32 }
%struct.scsi_report_supported_tmf_ext_data = type { i32, i32, i32 }
%union.ctl_io = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"ctl_report_supported_tmf\0A\00", align 1
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4
@RST_REPD = common dso_local global i32 0, align 4
@M_CTL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@RST_ATS = common dso_local global i32 0, align 4
@RST_ATSS = common dso_local global i32 0, align 4
@RST_CTSS = common dso_local global i32 0, align 4
@RST_LURS = common dso_local global i32 0, align 4
@RST_QTS = common dso_local global i32 0, align 4
@RST_TRS = common dso_local global i32 0, align 4
@RST_QAES = common dso_local global i32 0, align 4
@RST_QTSS = common dso_local global i32 0, align 4
@RST_ITNRS = common dso_local global i32 0, align 4
@CTL_FLAG_ALLOCATED = common dso_local global i32 0, align 4
@ctl_config_move_done = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_report_supported_tmf(%struct.ctl_scsiio* %0) #0 {
  %2 = alloca %struct.ctl_scsiio*, align 8
  %3 = alloca %struct.scsi_report_supported_tmf*, align 8
  %4 = alloca %struct.scsi_report_supported_tmf_ext_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %2, align 8
  %8 = call i32 @CTL_DEBUG_PRINT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %10 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %9, i32 0, i32 7
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.scsi_report_supported_tmf*
  store %struct.scsi_report_supported_tmf* %12, %struct.scsi_report_supported_tmf** %3, align 8
  %13 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.scsi_report_supported_tmf*, %struct.scsi_report_supported_tmf** %3, align 8
  %15 = getelementptr inbounds %struct.scsi_report_supported_tmf, %struct.scsi_report_supported_tmf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @RST_REPD, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 12, i32* %7, align 4
  br label %22

21:                                               ; preds = %1
  store i32 4, i32* %7, align 4
  br label %22

22:                                               ; preds = %21, %20
  %23 = load %struct.scsi_report_supported_tmf*, %struct.scsi_report_supported_tmf** %3, align 8
  %24 = getelementptr inbounds %struct.scsi_report_supported_tmf, %struct.scsi_report_supported_tmf* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @scsi_4btoul(i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @M_CTL, align 4
  %29 = load i32, i32* @M_WAITOK, align 4
  %30 = load i32, i32* @M_ZERO, align 4
  %31 = or i32 %29, %30
  %32 = call i64 @malloc(i32 %27, i32 %28, i32 %31)
  %33 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %34 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %33, i32 0, i32 2
  store i64 %32, i64* %34, align 8
  %35 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %36 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %35, i32 0, i32 6
  store i64 0, i64* %36, align 8
  %37 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %38 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %37, i32 0, i32 5
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @min(i32 %39, i32 %40)
  %42 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %43 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %45 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %48 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %50 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.scsi_report_supported_tmf_ext_data*
  store %struct.scsi_report_supported_tmf_ext_data* %52, %struct.scsi_report_supported_tmf_ext_data** %4, align 8
  %53 = load i32, i32* @RST_ATS, align 4
  %54 = load i32, i32* @RST_ATSS, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @RST_CTSS, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @RST_LURS, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @RST_QTS, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @RST_TRS, align 4
  %63 = or i32 %61, %62
  %64 = load %struct.scsi_report_supported_tmf_ext_data*, %struct.scsi_report_supported_tmf_ext_data** %4, align 8
  %65 = getelementptr inbounds %struct.scsi_report_supported_tmf_ext_data, %struct.scsi_report_supported_tmf_ext_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load i32, i32* @RST_QAES, align 4
  %69 = load i32, i32* @RST_QTSS, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @RST_ITNRS, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.scsi_report_supported_tmf_ext_data*, %struct.scsi_report_supported_tmf_ext_data** %4, align 8
  %74 = getelementptr inbounds %struct.scsi_report_supported_tmf_ext_data, %struct.scsi_report_supported_tmf_ext_data* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* %7, align 4
  %78 = sub nsw i32 %77, 4
  %79 = load %struct.scsi_report_supported_tmf_ext_data*, %struct.scsi_report_supported_tmf_ext_data** %4, align 8
  %80 = getelementptr inbounds %struct.scsi_report_supported_tmf_ext_data, %struct.scsi_report_supported_tmf_ext_data* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  %81 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %82 = call i32 @ctl_set_success(%struct.ctl_scsiio* %81)
  %83 = load i32, i32* @CTL_FLAG_ALLOCATED, align 4
  %84 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %85 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %83
  store i32 %88, i32* %86, align 4
  %89 = load i32, i32* @ctl_config_move_done, align 4
  %90 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %91 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %93 = bitcast %struct.ctl_scsiio* %92 to %union.ctl_io*
  %94 = call i32 @ctl_datamove(%union.ctl_io* %93)
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @CTL_DEBUG_PRINT(i8*) #1

declare dso_local i32 @scsi_4btoul(i32) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ctl_set_success(%struct.ctl_scsiio*) #1

declare dso_local i32 @ctl_datamove(%union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
