; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_util.c_ctl_scsi_read_capacity_16.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_util.c_ctl_scsi_read_capacity_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i64, i32, i32*, i32, i64 }
%struct.scsi_read_capacity_16 = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i8* }

@CTL_IO_SCSI = common dso_local global i8* null, align 8
@SERVICE_ACTION_IN = common dso_local global i32 0, align 4
@SRC16_SERVICE_ACTION = common dso_local global i32 0, align 4
@SRC16_RELADR = common dso_local global i32 0, align 4
@SRC16_PMI = common dso_local global i32 0, align 4
@CTL_FLAG_DATA_IN = common dso_local global i32 0, align 4
@SSD_FULL_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ctl_scsi_read_capacity_16(%union.ctl_io* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %union.ctl_io*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.scsi_read_capacity_16*, align 8
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
  %28 = inttoptr i64 %27 to %struct.scsi_read_capacity_16*
  store %struct.scsi_read_capacity_16* %28, %struct.scsi_read_capacity_16** %17, align 8
  %29 = load i32, i32* @SERVICE_ACTION_IN, align 4
  %30 = load %struct.scsi_read_capacity_16*, %struct.scsi_read_capacity_16** %17, align 8
  %31 = getelementptr inbounds %struct.scsi_read_capacity_16, %struct.scsi_read_capacity_16* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @SRC16_SERVICE_ACTION, align 4
  %33 = load %struct.scsi_read_capacity_16*, %struct.scsi_read_capacity_16** %17, align 8
  %34 = getelementptr inbounds %struct.scsi_read_capacity_16, %struct.scsi_read_capacity_16* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %8
  %38 = load i32, i32* @SRC16_RELADR, align 4
  %39 = load %struct.scsi_read_capacity_16*, %struct.scsi_read_capacity_16** %17, align 8
  %40 = getelementptr inbounds %struct.scsi_read_capacity_16, %struct.scsi_read_capacity_16* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %37, %8
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i32, i32* @SRC16_PMI, align 4
  %48 = load %struct.scsi_read_capacity_16*, %struct.scsi_read_capacity_16** %17, align 8
  %49 = getelementptr inbounds %struct.scsi_read_capacity_16, %struct.scsi_read_capacity_16* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %46, %43
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.scsi_read_capacity_16*, %struct.scsi_read_capacity_16** %17, align 8
  %55 = getelementptr inbounds %struct.scsi_read_capacity_16, %struct.scsi_read_capacity_16* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @scsi_u64to8b(i32 %53, i32 %56)
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.scsi_read_capacity_16*, %struct.scsi_read_capacity_16** %17, align 8
  %60 = getelementptr inbounds %struct.scsi_read_capacity_16, %struct.scsi_read_capacity_16* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @scsi_ulto4b(i32 %58, i32 %61)
  %63 = load i32, i32* %16, align 4
  %64 = load %struct.scsi_read_capacity_16*, %struct.scsi_read_capacity_16** %17, align 8
  %65 = getelementptr inbounds %struct.scsi_read_capacity_16, %struct.scsi_read_capacity_16* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load i8*, i8** @CTL_IO_SCSI, align 8
  %67 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %68 = bitcast %union.ctl_io* %67 to %struct.TYPE_3__*
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  store i8* %66, i8** %69, align 8
  %70 = load i32, i32* @CTL_FLAG_DATA_IN, align 4
  %71 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %72 = bitcast %union.ctl_io* %71 to %struct.TYPE_3__*
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  %74 = load i32, i32* %15, align 4
  %75 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %76 = bitcast %union.ctl_io* %75 to %struct.TYPE_4__*
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 5
  store i32 %74, i32* %77, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %80 = bitcast %union.ctl_io* %79 to %struct.TYPE_4__*
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 4
  store i32* %78, i32** %81, align 8
  %82 = load i32, i32* %11, align 4
  %83 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %84 = bitcast %union.ctl_io* %83 to %struct.TYPE_4__*
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 3
  store i32 %82, i32* %85, align 8
  %86 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %87 = bitcast %union.ctl_io* %86 to %struct.TYPE_4__*
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  store i64 0, i64* %88, align 8
  %89 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %90 = bitcast %union.ctl_io* %89 to %struct.TYPE_4__*
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  store i64 0, i64* %91, align 8
  %92 = load i32, i32* @SSD_FULL_SIZE, align 4
  %93 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %94 = bitcast %union.ctl_io* %93 to %struct.TYPE_4__*
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 8
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
