; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_util.c_ctl_scsi_write_same.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_util.c_ctl_scsi_write_same.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.ctl_scsiio }
%struct.ctl_scsiio = type { i32, i8**, i32, i64, i64, i32, i32, i64 }
%struct.scsi_write_same_16 = type { i8*, i64, i32, i32, i8*, i32 }
%struct.TYPE_2__ = type { i32, i8* }

@CTL_IO_SCSI = common dso_local global i8* null, align 8
@WRITE_SAME_16 = common dso_local global i32 0, align 4
@CTL_FLAG_DATA_OUT = common dso_local global i32 0, align 4
@SSD_FULL_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ctl_scsi_write_same(%union.ctl_io* %0, i8** %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6, i8* %7) #0 {
  %9 = alloca %union.ctl_io*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.ctl_scsiio*, align 8
  %18 = alloca %struct.scsi_write_same_16*, align 8
  store %union.ctl_io* %0, %union.ctl_io** %9, align 8
  store i8** %1, i8*** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i8* %7, i8** %16, align 8
  %19 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %20 = call i32 @ctl_scsi_zero_io(%union.ctl_io* %19)
  %21 = load i8*, i8** @CTL_IO_SCSI, align 8
  %22 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %23 = bitcast %union.ctl_io* %22 to %struct.TYPE_2__*
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i8* %21, i8** %24, align 8
  %25 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %26 = bitcast %union.ctl_io* %25 to %struct.ctl_scsiio*
  store %struct.ctl_scsiio* %26, %struct.ctl_scsiio** %17, align 8
  %27 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %17, align 8
  %28 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %27, i32 0, i32 0
  store i32 40, i32* %28, align 8
  %29 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %17, align 8
  %30 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %29, i32 0, i32 7
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.scsi_write_same_16*
  store %struct.scsi_write_same_16* %32, %struct.scsi_write_same_16** %18, align 8
  %33 = load i32, i32* @WRITE_SAME_16, align 4
  %34 = load %struct.scsi_write_same_16*, %struct.scsi_write_same_16** %18, align 8
  %35 = getelementptr inbounds %struct.scsi_write_same_16, %struct.scsi_write_same_16* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = load %struct.scsi_write_same_16*, %struct.scsi_write_same_16** %18, align 8
  %38 = getelementptr inbounds %struct.scsi_write_same_16, %struct.scsi_write_same_16* %37, i32 0, i32 4
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* %13, align 4
  %40 = load %struct.scsi_write_same_16*, %struct.scsi_write_same_16** %18, align 8
  %41 = getelementptr inbounds %struct.scsi_write_same_16, %struct.scsi_write_same_16* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @scsi_u64to8b(i32 %39, i32 %42)
  %44 = load i32, i32* %14, align 4
  %45 = load %struct.scsi_write_same_16*, %struct.scsi_write_same_16** %18, align 8
  %46 = getelementptr inbounds %struct.scsi_write_same_16, %struct.scsi_write_same_16* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @scsi_ulto4b(i32 %44, i32 %47)
  %49 = load %struct.scsi_write_same_16*, %struct.scsi_write_same_16** %18, align 8
  %50 = getelementptr inbounds %struct.scsi_write_same_16, %struct.scsi_write_same_16* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  %51 = load i8*, i8** %16, align 8
  %52 = load %struct.scsi_write_same_16*, %struct.scsi_write_same_16** %18, align 8
  %53 = getelementptr inbounds %struct.scsi_write_same_16, %struct.scsi_write_same_16* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  %54 = load i8*, i8** @CTL_IO_SCSI, align 8
  %55 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %56 = bitcast %union.ctl_io* %55 to %struct.TYPE_2__*
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  store i8* %54, i8** %57, align 8
  %58 = load i32, i32* @CTL_FLAG_DATA_OUT, align 4
  %59 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %60 = bitcast %union.ctl_io* %59 to %struct.TYPE_2__*
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 8
  %62 = load i32, i32* %15, align 4
  %63 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %17, align 8
  %64 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %63, i32 0, i32 6
  store i32 %62, i32* %64, align 4
  %65 = load i8**, i8*** %10, align 8
  %66 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %17, align 8
  %67 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %66, i32 0, i32 1
  store i8** %65, i8*** %67, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %17, align 8
  %70 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %69, i32 0, i32 5
  store i32 %68, i32* %70, align 8
  %71 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %17, align 8
  %72 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %71, i32 0, i32 4
  store i64 0, i64* %72, align 8
  %73 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %17, align 8
  %74 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %73, i32 0, i32 3
  store i64 0, i64* %74, align 8
  %75 = load i32, i32* @SSD_FULL_SIZE, align 4
  %76 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %17, align 8
  %77 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  ret void
}

declare dso_local i32 @ctl_scsi_zero_io(%union.ctl_io*) #1

declare dso_local i32 @scsi_u64to8b(i32, i32) #1

declare dso_local i32 @scsi_ulto4b(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
