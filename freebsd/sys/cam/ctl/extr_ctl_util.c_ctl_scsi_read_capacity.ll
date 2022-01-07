; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_util.c_ctl_scsi_read_capacity.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_util.c_ctl_scsi_read_capacity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i64, i32, i32*, i32, i64 }
%struct.scsi_read_capacity = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i8* }

@CTL_IO_SCSI = common dso_local global i8* null, align 8
@READ_CAPACITY = common dso_local global i32 0, align 4
@SRC_RELADR = common dso_local global i32 0, align 4
@SRC_PMI = common dso_local global i32 0, align 4
@CTL_FLAG_DATA_IN = common dso_local global i32 0, align 4
@SSD_FULL_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ctl_scsi_read_capacity(%union.ctl_io* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %union.ctl_io*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.scsi_read_capacity*, align 8
  store %union.ctl_io* %0, %union.ctl_io** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %18 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %19 = call i32 @ctl_scsi_zero_io(%union.ctl_io* %18)
  %20 = load i8*, i8** @CTL_IO_SCSI, align 8
  %21 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %22 = bitcast %union.ctl_io* %21 to %struct.TYPE_3__*
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store i8* %20, i8** %23, align 8
  %24 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %25 = bitcast %union.ctl_io* %24 to %struct.TYPE_4__*
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 6
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.scsi_read_capacity*
  store %struct.scsi_read_capacity* %28, %struct.scsi_read_capacity** %17, align 8
  %29 = load i32, i32* @READ_CAPACITY, align 4
  %30 = load %struct.scsi_read_capacity*, %struct.scsi_read_capacity** %17, align 8
  %31 = getelementptr inbounds %struct.scsi_read_capacity, %struct.scsi_read_capacity* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %8
  %35 = load i32, i32* @SRC_RELADR, align 4
  %36 = load %struct.scsi_read_capacity*, %struct.scsi_read_capacity** %17, align 8
  %37 = getelementptr inbounds %struct.scsi_read_capacity, %struct.scsi_read_capacity* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %34, %8
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* @SRC_PMI, align 4
  %43 = load %struct.scsi_read_capacity*, %struct.scsi_read_capacity** %17, align 8
  %44 = getelementptr inbounds %struct.scsi_read_capacity, %struct.scsi_read_capacity* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %41, %38
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.scsi_read_capacity*, %struct.scsi_read_capacity** %17, align 8
  %48 = getelementptr inbounds %struct.scsi_read_capacity, %struct.scsi_read_capacity* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @scsi_ulto4b(i32 %46, i32 %49)
  %51 = load i32, i32* %16, align 4
  %52 = load %struct.scsi_read_capacity*, %struct.scsi_read_capacity** %17, align 8
  %53 = getelementptr inbounds %struct.scsi_read_capacity, %struct.scsi_read_capacity* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load i8*, i8** @CTL_IO_SCSI, align 8
  %55 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %56 = bitcast %union.ctl_io* %55 to %struct.TYPE_3__*
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  store i8* %54, i8** %57, align 8
  %58 = load i32, i32* @CTL_FLAG_DATA_IN, align 4
  %59 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %60 = bitcast %union.ctl_io* %59 to %struct.TYPE_3__*
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 8
  %62 = load i32, i32* %15, align 4
  %63 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %64 = bitcast %union.ctl_io* %63 to %struct.TYPE_4__*
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 5
  store i32 %62, i32* %65, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %68 = bitcast %union.ctl_io* %67 to %struct.TYPE_4__*
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 4
  store i32* %66, i32** %69, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %72 = bitcast %union.ctl_io* %71 to %struct.TYPE_4__*
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  store i32 %70, i32* %73, align 8
  %74 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %75 = bitcast %union.ctl_io* %74 to %struct.TYPE_4__*
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  store i64 0, i64* %76, align 8
  %77 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %78 = bitcast %union.ctl_io* %77 to %struct.TYPE_4__*
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  store i64 0, i64* %79, align 8
  %80 = load i32, i32* @SSD_FULL_SIZE, align 4
  %81 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %82 = bitcast %union.ctl_io* %81 to %struct.TYPE_4__*
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 8
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
