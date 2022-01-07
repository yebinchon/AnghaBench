; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_util.c_ctl_scsi_report_luns.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_util.c_ctl_scsi_report_luns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.ctl_scsiio }
%struct.ctl_scsiio = type { i32, i8**, i32, i64, i64, i32, i32, i64 }
%struct.scsi_report_luns = type { i8*, i32, i8*, i32 }
%struct.TYPE_2__ = type { i32, i8* }

@CTL_IO_SCSI = common dso_local global i8* null, align 8
@REPORT_LUNS = common dso_local global i32 0, align 4
@CTL_FLAG_DATA_IN = common dso_local global i32 0, align 4
@SSD_FULL_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ctl_scsi_report_luns(%union.ctl_io* %0, i8** %1, i32 %2, i8* %3, i32 %4, i8* %5) #0 {
  %7 = alloca %union.ctl_io*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.ctl_scsiio*, align 8
  %14 = alloca %struct.scsi_report_luns*, align 8
  store %union.ctl_io* %0, %union.ctl_io** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %15 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %16 = call i32 @ctl_scsi_zero_io(%union.ctl_io* %15)
  %17 = load i8*, i8** @CTL_IO_SCSI, align 8
  %18 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %19 = bitcast %union.ctl_io* %18 to %struct.TYPE_2__*
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i8* %17, i8** %20, align 8
  %21 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %22 = bitcast %union.ctl_io* %21 to %struct.ctl_scsiio*
  store %struct.ctl_scsiio* %22, %struct.ctl_scsiio** %13, align 8
  %23 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %13, align 8
  %24 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %23, i32 0, i32 7
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.scsi_report_luns*
  store %struct.scsi_report_luns* %26, %struct.scsi_report_luns** %14, align 8
  %27 = load i32, i32* @REPORT_LUNS, align 4
  %28 = load %struct.scsi_report_luns*, %struct.scsi_report_luns** %14, align 8
  %29 = getelementptr inbounds %struct.scsi_report_luns, %struct.scsi_report_luns* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load %struct.scsi_report_luns*, %struct.scsi_report_luns** %14, align 8
  %32 = getelementptr inbounds %struct.scsi_report_luns, %struct.scsi_report_luns* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.scsi_report_luns*, %struct.scsi_report_luns** %14, align 8
  %35 = getelementptr inbounds %struct.scsi_report_luns, %struct.scsi_report_luns* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @scsi_ulto4b(i32 %33, i32 %36)
  %38 = load i8*, i8** %12, align 8
  %39 = load %struct.scsi_report_luns*, %struct.scsi_report_luns** %14, align 8
  %40 = getelementptr inbounds %struct.scsi_report_luns, %struct.scsi_report_luns* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** @CTL_IO_SCSI, align 8
  %42 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %43 = bitcast %union.ctl_io* %42 to %struct.TYPE_2__*
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i8* %41, i8** %44, align 8
  %45 = load i32, i32* @CTL_FLAG_DATA_IN, align 4
  %46 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %47 = bitcast %union.ctl_io* %46 to %struct.TYPE_2__*
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %13, align 8
  %51 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 4
  %52 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %13, align 8
  %53 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %52, i32 0, i32 0
  store i32 32, i32* %53, align 8
  %54 = load i8**, i8*** %8, align 8
  %55 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %13, align 8
  %56 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %55, i32 0, i32 1
  store i8** %54, i8*** %56, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %13, align 8
  %59 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 8
  %60 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %13, align 8
  %61 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %60, i32 0, i32 4
  store i64 0, i64* %61, align 8
  %62 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %13, align 8
  %63 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %62, i32 0, i32 3
  store i64 0, i64* %63, align 8
  %64 = load i32, i32* @SSD_FULL_SIZE, align 4
  %65 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %13, align 8
  %66 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  ret void
}

declare dso_local i32 @ctl_scsi_zero_io(%union.ctl_io*) #1

declare dso_local i32 @scsi_ulto4b(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
