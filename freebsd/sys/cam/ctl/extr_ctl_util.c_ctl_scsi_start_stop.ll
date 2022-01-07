; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_util.c_ctl_scsi_start_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_util.c_ctl_scsi_start_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i64, i64, i32*, i32, i64 }
%struct.scsi_start_stop_unit = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@START_STOP_UNIT = common dso_local global i32 0, align 4
@SSS_IMMED = common dso_local global i32 0, align 4
@SSS_LOEJ = common dso_local global i32 0, align 4
@SSS_START = common dso_local global i32 0, align 4
@CTL_IO_SCSI = common dso_local global i32 0, align 4
@CTL_FLAG_DATA_NONE = common dso_local global i32 0, align 4
@SSD_FULL_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ctl_scsi_start_stop(%union.ctl_io* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %union.ctl_io*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.scsi_start_stop_unit*, align 8
  store %union.ctl_io* %0, %union.ctl_io** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load %union.ctl_io*, %union.ctl_io** %8, align 8
  %17 = bitcast %union.ctl_io* %16 to %struct.TYPE_4__*
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.scsi_start_stop_unit*
  store %struct.scsi_start_stop_unit* %20, %struct.scsi_start_stop_unit** %15, align 8
  %21 = load %union.ctl_io*, %union.ctl_io** %8, align 8
  %22 = call i32 @ctl_scsi_zero_io(%union.ctl_io* %21)
  %23 = load i32, i32* @START_STOP_UNIT, align 4
  %24 = load %struct.scsi_start_stop_unit*, %struct.scsi_start_stop_unit** %15, align 8
  %25 = getelementptr inbounds %struct.scsi_start_stop_unit, %struct.scsi_start_stop_unit* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %7
  %29 = load i32, i32* @SSS_IMMED, align 4
  %30 = load %struct.scsi_start_stop_unit*, %struct.scsi_start_stop_unit** %15, align 8
  %31 = getelementptr inbounds %struct.scsi_start_stop_unit, %struct.scsi_start_stop_unit* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %28, %7
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.scsi_start_stop_unit*, %struct.scsi_start_stop_unit** %15, align 8
  %37 = getelementptr inbounds %struct.scsi_start_stop_unit, %struct.scsi_start_stop_unit* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load i32, i32* @SSS_LOEJ, align 4
  %42 = load %struct.scsi_start_stop_unit*, %struct.scsi_start_stop_unit** %15, align 8
  %43 = getelementptr inbounds %struct.scsi_start_stop_unit, %struct.scsi_start_stop_unit* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %40, %34
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load i32, i32* @SSS_START, align 4
  %51 = load %struct.scsi_start_stop_unit*, %struct.scsi_start_stop_unit** %15, align 8
  %52 = getelementptr inbounds %struct.scsi_start_stop_unit, %struct.scsi_start_stop_unit* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %49, %46
  %56 = load i32, i32* %14, align 4
  %57 = load %struct.scsi_start_stop_unit*, %struct.scsi_start_stop_unit** %15, align 8
  %58 = getelementptr inbounds %struct.scsi_start_stop_unit, %struct.scsi_start_stop_unit* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @CTL_IO_SCSI, align 4
  %60 = load %union.ctl_io*, %union.ctl_io** %8, align 8
  %61 = bitcast %union.ctl_io* %60 to %struct.TYPE_3__*
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* @CTL_FLAG_DATA_NONE, align 4
  %64 = load %union.ctl_io*, %union.ctl_io** %8, align 8
  %65 = bitcast %union.ctl_io* %64 to %struct.TYPE_3__*
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 8
  %67 = load i32, i32* %13, align 4
  %68 = load %union.ctl_io*, %union.ctl_io** %8, align 8
  %69 = bitcast %union.ctl_io* %68 to %struct.TYPE_4__*
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 5
  store i32 %67, i32* %70, align 8
  %71 = load %union.ctl_io*, %union.ctl_io** %8, align 8
  %72 = bitcast %union.ctl_io* %71 to %struct.TYPE_4__*
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 4
  store i32* null, i32** %73, align 8
  %74 = load %union.ctl_io*, %union.ctl_io** %8, align 8
  %75 = bitcast %union.ctl_io* %74 to %struct.TYPE_4__*
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  store i64 0, i64* %76, align 8
  %77 = load %union.ctl_io*, %union.ctl_io** %8, align 8
  %78 = bitcast %union.ctl_io* %77 to %struct.TYPE_4__*
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  store i64 0, i64* %79, align 8
  %80 = load %union.ctl_io*, %union.ctl_io** %8, align 8
  %81 = bitcast %union.ctl_io* %80 to %struct.TYPE_4__*
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  store i64 0, i64* %82, align 8
  %83 = load i32, i32* @SSD_FULL_SIZE, align 4
  %84 = load %union.ctl_io*, %union.ctl_io** %8, align 8
  %85 = bitcast %union.ctl_io* %84 to %struct.TYPE_4__*
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 8
  ret void
}

declare dso_local i32 @ctl_scsi_zero_io(%union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
