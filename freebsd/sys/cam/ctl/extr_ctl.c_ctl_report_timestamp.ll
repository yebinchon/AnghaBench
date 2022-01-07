; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_report_timestamp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_report_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { i32, %struct.TYPE_2__, i64, i32, i32, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.scsi_report_timestamp = type { i32 }
%struct.scsi_report_timestamp_data = type { i32*, i32, i32* }
%struct.timeval = type { i32, i64 }
%union.ctl_io = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"ctl_report_timestamp\0A\00", align 1
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4
@M_CTL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@RTS_ORIG_OUTSIDE = common dso_local global i32 0, align 4
@CTL_FLAG_ALLOCATED = common dso_local global i32 0, align 4
@ctl_config_move_done = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_report_timestamp(%struct.ctl_scsiio* %0) #0 {
  %2 = alloca %struct.ctl_scsiio*, align 8
  %3 = alloca %struct.scsi_report_timestamp*, align 8
  %4 = alloca %struct.scsi_report_timestamp_data*, align 8
  %5 = alloca %struct.timeval, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %2, align 8
  %10 = call i32 @CTL_DEBUG_PRINT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %12 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %11, i32 0, i32 7
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.scsi_report_timestamp*
  store %struct.scsi_report_timestamp* %14, %struct.scsi_report_timestamp** %3, align 8
  %15 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %15, i32* %7, align 4
  store i32 24, i32* %9, align 4
  %16 = load %struct.scsi_report_timestamp*, %struct.scsi_report_timestamp** %3, align 8
  %17 = getelementptr inbounds %struct.scsi_report_timestamp, %struct.scsi_report_timestamp* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @scsi_4btoul(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @M_CTL, align 4
  %22 = load i32, i32* @M_WAITOK, align 4
  %23 = load i32, i32* @M_ZERO, align 4
  %24 = or i32 %22, %23
  %25 = call i64 @malloc(i32 %20, i32 %21, i32 %24)
  %26 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %27 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %26, i32 0, i32 2
  store i64 %25, i64* %27, align 8
  %28 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %29 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %28, i32 0, i32 6
  store i64 0, i64* %29, align 8
  %30 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %31 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %30, i32 0, i32 5
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @min(i32 %32, i32 %33)
  %35 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %36 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  %37 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %38 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %41 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 4
  %42 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %43 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.scsi_report_timestamp_data*
  store %struct.scsi_report_timestamp_data* %45, %struct.scsi_report_timestamp_data** %4, align 8
  %46 = load %struct.scsi_report_timestamp_data*, %struct.scsi_report_timestamp_data** %4, align 8
  %47 = getelementptr inbounds %struct.scsi_report_timestamp_data, %struct.scsi_report_timestamp_data* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @scsi_ulto2b(i32 22, i32* %48)
  %50 = load i32, i32* @RTS_ORIG_OUTSIDE, align 4
  %51 = load %struct.scsi_report_timestamp_data*, %struct.scsi_report_timestamp_data** %4, align 8
  %52 = getelementptr inbounds %struct.scsi_report_timestamp_data, %struct.scsi_report_timestamp_data* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = call i32 @getmicrotime(%struct.timeval* %5)
  %54 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = mul nsw i32 %56, 1000
  %58 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sdiv i32 %59, 1000
  %61 = add nsw i32 %57, %60
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = ashr i32 %62, 16
  %64 = load %struct.scsi_report_timestamp_data*, %struct.scsi_report_timestamp_data** %4, align 8
  %65 = getelementptr inbounds %struct.scsi_report_timestamp_data, %struct.scsi_report_timestamp_data* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @scsi_ulto4b(i32 %63, i32* %66)
  %68 = load i32, i32* %6, align 4
  %69 = and i32 %68, 65535
  %70 = load %struct.scsi_report_timestamp_data*, %struct.scsi_report_timestamp_data** %4, align 8
  %71 = getelementptr inbounds %struct.scsi_report_timestamp_data, %struct.scsi_report_timestamp_data* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 4
  %74 = call i32 @scsi_ulto2b(i32 %69, i32* %73)
  %75 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %76 = call i32 @ctl_set_success(%struct.ctl_scsiio* %75)
  %77 = load i32, i32* @CTL_FLAG_ALLOCATED, align 4
  %78 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %79 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %77
  store i32 %82, i32* %80, align 4
  %83 = load i32, i32* @ctl_config_move_done, align 4
  %84 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %85 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %87 = bitcast %struct.ctl_scsiio* %86 to %union.ctl_io*
  %88 = call i32 @ctl_datamove(%union.ctl_io* %87)
  %89 = load i32, i32* %7, align 4
  ret i32 %89
}

declare dso_local i32 @CTL_DEBUG_PRINT(i8*) #1

declare dso_local i32 @scsi_4btoul(i32) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @scsi_ulto2b(i32, i32*) #1

declare dso_local i32 @getmicrotime(%struct.timeval*) #1

declare dso_local i32 @scsi_ulto4b(i32, i32*) #1

declare dso_local i32 @ctl_set_success(%struct.ctl_scsiio*) #1

declare dso_local i32 @ctl_datamove(%union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
