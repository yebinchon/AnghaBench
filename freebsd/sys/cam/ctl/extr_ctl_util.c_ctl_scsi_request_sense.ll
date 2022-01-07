; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_util.c_ctl_scsi_request_sense.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_util.c_ctl_scsi_request_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.ctl_scsiio }
%struct.ctl_scsiio = type { i32, i8**, i32, i64, i64, i8*, i32, i64 }
%struct.scsi_request_sense = type { i8*, i8*, i8*, i32 }
%struct.TYPE_2__ = type { i32, i8* }

@CTL_IO_SCSI = common dso_local global i8* null, align 8
@REQUEST_SENSE = common dso_local global i32 0, align 4
@CTL_FLAG_DATA_IN = common dso_local global i32 0, align 4
@SSD_FULL_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ctl_scsi_request_sense(%union.ctl_io* %0, i8** %1, i8* %2, i8* %3, i32 %4, i8* %5) #0 {
  %7 = alloca %union.ctl_io*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.ctl_scsiio*, align 8
  %14 = alloca %struct.scsi_request_sense*, align 8
  store %union.ctl_io* %0, %union.ctl_io** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8* %2, i8** %9, align 8
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
  %26 = inttoptr i64 %25 to %struct.scsi_request_sense*
  store %struct.scsi_request_sense* %26, %struct.scsi_request_sense** %14, align 8
  %27 = load i32, i32* @REQUEST_SENSE, align 4
  %28 = load %struct.scsi_request_sense*, %struct.scsi_request_sense** %14, align 8
  %29 = getelementptr inbounds %struct.scsi_request_sense, %struct.scsi_request_sense* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load %struct.scsi_request_sense*, %struct.scsi_request_sense** %14, align 8
  %32 = getelementptr inbounds %struct.scsi_request_sense, %struct.scsi_request_sense* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = load %struct.scsi_request_sense*, %struct.scsi_request_sense** %14, align 8
  %35 = getelementptr inbounds %struct.scsi_request_sense, %struct.scsi_request_sense* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load %struct.scsi_request_sense*, %struct.scsi_request_sense** %14, align 8
  %38 = getelementptr inbounds %struct.scsi_request_sense, %struct.scsi_request_sense* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** @CTL_IO_SCSI, align 8
  %40 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %41 = bitcast %union.ctl_io* %40 to %struct.TYPE_2__*
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i8* %39, i8** %42, align 8
  %43 = load i32, i32* @CTL_FLAG_DATA_IN, align 4
  %44 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %45 = bitcast %union.ctl_io* %44 to %struct.TYPE_2__*
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %13, align 8
  %49 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %48, i32 0, i32 6
  store i32 %47, i32* %49, align 8
  %50 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %13, align 8
  %51 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %50, i32 0, i32 0
  store i32 32, i32* %51, align 8
  %52 = load i8**, i8*** %8, align 8
  %53 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %13, align 8
  %54 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %53, i32 0, i32 1
  store i8** %52, i8*** %54, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %13, align 8
  %57 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %56, i32 0, i32 5
  store i8* %55, i8** %57, align 8
  %58 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %13, align 8
  %59 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %58, i32 0, i32 4
  store i64 0, i64* %59, align 8
  %60 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %13, align 8
  %61 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %60, i32 0, i32 3
  store i64 0, i64* %61, align 8
  %62 = load i32, i32* @SSD_FULL_SIZE, align 4
  %63 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %13, align 8
  %64 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  ret void
}

declare dso_local i32 @ctl_scsi_zero_io(%union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
