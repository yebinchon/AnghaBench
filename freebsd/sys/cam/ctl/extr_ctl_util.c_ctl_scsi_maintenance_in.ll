; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_util.c_ctl_scsi_maintenance_in.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_util.c_ctl_scsi_maintenance_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8**, i32, i64, i64, i32, i32, i64 }
%struct.scsi_maintenance_in = type { i8*, i32, i8*, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@MAINTENANCE_IN = common dso_local global i32 0, align 4
@CTL_IO_SCSI = common dso_local global i32 0, align 4
@CTL_FLAG_DATA_IN = common dso_local global i32 0, align 4
@SSD_FULL_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ctl_scsi_maintenance_in(%union.ctl_io* %0, i8** %1, i32 %2, i8* %3, i32 %4, i8* %5) #0 {
  %7 = alloca %union.ctl_io*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.scsi_maintenance_in*, align 8
  store %union.ctl_io* %0, %union.ctl_io** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %14 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %15 = call i32 @ctl_scsi_zero_io(%union.ctl_io* %14)
  %16 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %17 = bitcast %union.ctl_io* %16 to %struct.TYPE_4__*
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.scsi_maintenance_in*
  store %struct.scsi_maintenance_in* %20, %struct.scsi_maintenance_in** %13, align 8
  %21 = load i32, i32* @MAINTENANCE_IN, align 4
  %22 = load %struct.scsi_maintenance_in*, %struct.scsi_maintenance_in** %13, align 8
  %23 = getelementptr inbounds %struct.scsi_maintenance_in, %struct.scsi_maintenance_in* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = load %struct.scsi_maintenance_in*, %struct.scsi_maintenance_in** %13, align 8
  %26 = getelementptr inbounds %struct.scsi_maintenance_in, %struct.scsi_maintenance_in* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.scsi_maintenance_in*, %struct.scsi_maintenance_in** %13, align 8
  %29 = getelementptr inbounds %struct.scsi_maintenance_in, %struct.scsi_maintenance_in* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @scsi_ulto4b(i32 %27, i32 %30)
  %32 = load i8*, i8** %12, align 8
  %33 = load %struct.scsi_maintenance_in*, %struct.scsi_maintenance_in** %13, align 8
  %34 = getelementptr inbounds %struct.scsi_maintenance_in, %struct.scsi_maintenance_in* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* @CTL_IO_SCSI, align 4
  %36 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %37 = bitcast %union.ctl_io* %36 to %struct.TYPE_3__*
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* @CTL_FLAG_DATA_IN, align 4
  %40 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %41 = bitcast %union.ctl_io* %40 to %struct.TYPE_3__*
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %45 = bitcast %union.ctl_io* %44 to %struct.TYPE_4__*
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 5
  store i32 %43, i32* %46, align 4
  %47 = load i8**, i8*** %8, align 8
  %48 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %49 = bitcast %union.ctl_io* %48 to %struct.TYPE_4__*
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i8** %47, i8*** %50, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %53 = bitcast %union.ctl_io* %52 to %struct.TYPE_4__*
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 4
  store i32 %51, i32* %54, align 8
  %55 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %56 = bitcast %union.ctl_io* %55 to %struct.TYPE_4__*
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 3
  store i64 0, i64* %57, align 8
  %58 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %59 = bitcast %union.ctl_io* %58 to %struct.TYPE_4__*
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* @SSD_FULL_SIZE, align 4
  %62 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %63 = bitcast %union.ctl_io* %62 to %struct.TYPE_4__*
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 8
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
