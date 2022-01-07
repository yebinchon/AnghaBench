; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_util.c_ctl_scsi_inquiry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_util.c_ctl_scsi_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.ctl_scsiio }
%struct.ctl_scsiio = type { i32, i8**, i32, i64, i64, i32, i32, i64 }
%struct.scsi_inquiry = type { i32, i8*, i8*, i8*, i32 }
%struct.TYPE_2__ = type { i32, i8* }

@CTL_IO_SCSI = common dso_local global i8* null, align 8
@INQUIRY = common dso_local global i32 0, align 4
@CTL_FLAG_DATA_IN = common dso_local global i32 0, align 4
@SSD_FULL_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ctl_scsi_inquiry(%union.ctl_io* %0, i8** %1, i32 %2, i8* %3, i8* %4, i32 %5, i8* %6) #0 {
  %8 = alloca %union.ctl_io*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.ctl_scsiio*, align 8
  %16 = alloca %struct.scsi_inquiry*, align 8
  store %union.ctl_io* %0, %union.ctl_io** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i8* %6, i8** %14, align 8
  %17 = load %union.ctl_io*, %union.ctl_io** %8, align 8
  %18 = call i32 @ctl_scsi_zero_io(%union.ctl_io* %17)
  %19 = load i8*, i8** @CTL_IO_SCSI, align 8
  %20 = load %union.ctl_io*, %union.ctl_io** %8, align 8
  %21 = bitcast %union.ctl_io* %20 to %struct.TYPE_2__*
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i8* %19, i8** %22, align 8
  %23 = load %union.ctl_io*, %union.ctl_io** %8, align 8
  %24 = bitcast %union.ctl_io* %23 to %struct.ctl_scsiio*
  store %struct.ctl_scsiio* %24, %struct.ctl_scsiio** %15, align 8
  %25 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %15, align 8
  %26 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %25, i32 0, i32 7
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.scsi_inquiry*
  store %struct.scsi_inquiry* %28, %struct.scsi_inquiry** %16, align 8
  %29 = load i32, i32* @INQUIRY, align 4
  %30 = load %struct.scsi_inquiry*, %struct.scsi_inquiry** %16, align 8
  %31 = getelementptr inbounds %struct.scsi_inquiry, %struct.scsi_inquiry* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = load %struct.scsi_inquiry*, %struct.scsi_inquiry** %16, align 8
  %34 = getelementptr inbounds %struct.scsi_inquiry, %struct.scsi_inquiry* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = load %struct.scsi_inquiry*, %struct.scsi_inquiry** %16, align 8
  %37 = getelementptr inbounds %struct.scsi_inquiry, %struct.scsi_inquiry* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** %14, align 8
  %39 = load %struct.scsi_inquiry*, %struct.scsi_inquiry** %16, align 8
  %40 = getelementptr inbounds %struct.scsi_inquiry, %struct.scsi_inquiry* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.scsi_inquiry*, %struct.scsi_inquiry** %16, align 8
  %43 = getelementptr inbounds %struct.scsi_inquiry, %struct.scsi_inquiry* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @scsi_ulto2b(i32 %41, i32 %44)
  %46 = load i8*, i8** @CTL_IO_SCSI, align 8
  %47 = load %union.ctl_io*, %union.ctl_io** %8, align 8
  %48 = bitcast %union.ctl_io* %47 to %struct.TYPE_2__*
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i8* %46, i8** %49, align 8
  %50 = load i32, i32* @CTL_FLAG_DATA_IN, align 4
  %51 = load %union.ctl_io*, %union.ctl_io** %8, align 8
  %52 = bitcast %union.ctl_io* %51 to %struct.TYPE_2__*
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  %54 = load i32, i32* %13, align 4
  %55 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %15, align 8
  %56 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %55, i32 0, i32 6
  store i32 %54, i32* %56, align 4
  %57 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %15, align 8
  %58 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %57, i32 0, i32 0
  store i32 40, i32* %58, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %15, align 8
  %61 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 8
  %62 = load i8**, i8*** %9, align 8
  %63 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %15, align 8
  %64 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %63, i32 0, i32 1
  store i8** %62, i8*** %64, align 8
  %65 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %15, align 8
  %66 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %65, i32 0, i32 4
  store i64 0, i64* %66, align 8
  %67 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %15, align 8
  %68 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %67, i32 0, i32 3
  store i64 0, i64* %68, align 8
  %69 = load i32, i32* @SSD_FULL_SIZE, align 4
  %70 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %15, align 8
  %71 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  ret void
}

declare dso_local i32 @ctl_scsi_zero_io(%union.ctl_io*) #1

declare dso_local i32 @scsi_ulto2b(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
