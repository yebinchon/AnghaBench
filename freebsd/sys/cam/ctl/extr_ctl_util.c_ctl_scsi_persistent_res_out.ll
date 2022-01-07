; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_util.c_ctl_scsi_persistent_res_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_util.c_ctl_scsi_persistent_res_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64, i64, i32, i32*, i32, i64 }
%struct.scsi_per_res_out = type { i32, i32, i32, i32, i32 }
%struct.scsi_per_res_out_parms = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@PERSISTENT_RES_OUT = common dso_local global i32 0, align 4
@CTL_IO_SCSI = common dso_local global i32 0, align 4
@CTL_FLAG_DATA_OUT = common dso_local global i32 0, align 4
@SSD_FULL_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ctl_scsi_persistent_res_out(%union.ctl_io* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %union.ctl_io*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.scsi_per_res_out*, align 8
  %20 = alloca %struct.scsi_per_res_out_parms*, align 8
  store %union.ctl_io* %0, %union.ctl_io** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %21 = load %union.ctl_io*, %union.ctl_io** %10, align 8
  %22 = call i32 @ctl_scsi_zero_io(%union.ctl_io* %21)
  %23 = load %union.ctl_io*, %union.ctl_io** %10, align 8
  %24 = bitcast %union.ctl_io* %23 to %struct.TYPE_6__*
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 6
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.scsi_per_res_out*
  store %struct.scsi_per_res_out* %27, %struct.scsi_per_res_out** %19, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = bitcast i32* %28 to %struct.scsi_per_res_out_parms*
  store %struct.scsi_per_res_out_parms* %29, %struct.scsi_per_res_out_parms** %20, align 8
  %30 = load i32, i32* @PERSISTENT_RES_OUT, align 4
  %31 = load %struct.scsi_per_res_out*, %struct.scsi_per_res_out** %19, align 8
  %32 = getelementptr inbounds %struct.scsi_per_res_out, %struct.scsi_per_res_out* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp eq i32 %33, 5
  br i1 %34, label %35, label %38

35:                                               ; preds = %9
  %36 = load %struct.scsi_per_res_out*, %struct.scsi_per_res_out** %19, align 8
  %37 = getelementptr inbounds %struct.scsi_per_res_out, %struct.scsi_per_res_out* %36, i32 0, i32 0
  store i32 6, i32* %37, align 4
  br label %42

38:                                               ; preds = %9
  %39 = load i32, i32* %13, align 4
  %40 = load %struct.scsi_per_res_out*, %struct.scsi_per_res_out** %19, align 8
  %41 = getelementptr inbounds %struct.scsi_per_res_out, %struct.scsi_per_res_out* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %38, %35
  %43 = load i32, i32* %14, align 4
  switch i32 %43, label %62 [
    i32 0, label %44
    i32 1, label %47
    i32 2, label %50
    i32 3, label %53
    i32 4, label %56
    i32 5, label %59
  ]

44:                                               ; preds = %42
  %45 = load %struct.scsi_per_res_out*, %struct.scsi_per_res_out** %19, align 8
  %46 = getelementptr inbounds %struct.scsi_per_res_out, %struct.scsi_per_res_out* %45, i32 0, i32 1
  store i32 1, i32* %46, align 4
  br label %62

47:                                               ; preds = %42
  %48 = load %struct.scsi_per_res_out*, %struct.scsi_per_res_out** %19, align 8
  %49 = getelementptr inbounds %struct.scsi_per_res_out, %struct.scsi_per_res_out* %48, i32 0, i32 1
  store i32 3, i32* %49, align 4
  br label %62

50:                                               ; preds = %42
  %51 = load %struct.scsi_per_res_out*, %struct.scsi_per_res_out** %19, align 8
  %52 = getelementptr inbounds %struct.scsi_per_res_out, %struct.scsi_per_res_out* %51, i32 0, i32 1
  store i32 5, i32* %52, align 4
  br label %62

53:                                               ; preds = %42
  %54 = load %struct.scsi_per_res_out*, %struct.scsi_per_res_out** %19, align 8
  %55 = getelementptr inbounds %struct.scsi_per_res_out, %struct.scsi_per_res_out* %54, i32 0, i32 1
  store i32 6, i32* %55, align 4
  br label %62

56:                                               ; preds = %42
  %57 = load %struct.scsi_per_res_out*, %struct.scsi_per_res_out** %19, align 8
  %58 = getelementptr inbounds %struct.scsi_per_res_out, %struct.scsi_per_res_out* %57, i32 0, i32 1
  store i32 7, i32* %58, align 4
  br label %62

59:                                               ; preds = %42
  %60 = load %struct.scsi_per_res_out*, %struct.scsi_per_res_out** %19, align 8
  %61 = getelementptr inbounds %struct.scsi_per_res_out, %struct.scsi_per_res_out* %60, i32 0, i32 1
  store i32 8, i32* %61, align 4
  br label %62

62:                                               ; preds = %42, %59, %56, %53, %50, %47, %44
  %63 = load i32, i32* %12, align 4
  %64 = load %struct.scsi_per_res_out*, %struct.scsi_per_res_out** %19, align 8
  %65 = getelementptr inbounds %struct.scsi_per_res_out, %struct.scsi_per_res_out* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @scsi_ulto4b(i32 %63, i32 %66)
  %68 = load i32, i32* %18, align 4
  %69 = load %struct.scsi_per_res_out*, %struct.scsi_per_res_out** %19, align 8
  %70 = getelementptr inbounds %struct.scsi_per_res_out, %struct.scsi_per_res_out* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %15, align 4
  %72 = load %struct.scsi_per_res_out_parms*, %struct.scsi_per_res_out_parms** %20, align 8
  %73 = getelementptr inbounds %struct.scsi_per_res_out_parms, %struct.scsi_per_res_out_parms* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @scsi_u64to8b(i32 %71, i32 %75)
  %77 = load i32, i32* %16, align 4
  %78 = load %struct.scsi_per_res_out_parms*, %struct.scsi_per_res_out_parms** %20, align 8
  %79 = getelementptr inbounds %struct.scsi_per_res_out_parms, %struct.scsi_per_res_out_parms* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @scsi_u64to8b(i32 %77, i32 %80)
  %82 = load i32, i32* @CTL_IO_SCSI, align 4
  %83 = load %union.ctl_io*, %union.ctl_io** %10, align 8
  %84 = bitcast %union.ctl_io* %83 to %struct.TYPE_5__*
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* @CTL_FLAG_DATA_OUT, align 4
  %87 = load %union.ctl_io*, %union.ctl_io** %10, align 8
  %88 = bitcast %union.ctl_io* %87 to %struct.TYPE_5__*
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 8
  %90 = load i32, i32* %17, align 4
  %91 = load %union.ctl_io*, %union.ctl_io** %10, align 8
  %92 = bitcast %union.ctl_io* %91 to %struct.TYPE_6__*
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 5
  store i32 %90, i32* %93, align 8
  %94 = load i32*, i32** %11, align 8
  %95 = load %union.ctl_io*, %union.ctl_io** %10, align 8
  %96 = bitcast %union.ctl_io* %95 to %struct.TYPE_6__*
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 4
  store i32* %94, i32** %97, align 8
  %98 = load i32, i32* %12, align 4
  %99 = load %union.ctl_io*, %union.ctl_io** %10, align 8
  %100 = bitcast %union.ctl_io* %99 to %struct.TYPE_6__*
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 3
  store i32 %98, i32* %101, align 8
  %102 = load %union.ctl_io*, %union.ctl_io** %10, align 8
  %103 = bitcast %union.ctl_io* %102 to %struct.TYPE_6__*
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  store i64 0, i64* %104, align 8
  %105 = load %union.ctl_io*, %union.ctl_io** %10, align 8
  %106 = bitcast %union.ctl_io* %105 to %struct.TYPE_6__*
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  store i64 0, i64* %107, align 8
  %108 = load i32, i32* @SSD_FULL_SIZE, align 4
  %109 = load %union.ctl_io*, %union.ctl_io** %10, align 8
  %110 = bitcast %union.ctl_io* %109 to %struct.TYPE_6__*
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  store i32 %108, i32* %111, align 8
  ret void
}

declare dso_local i32 @ctl_scsi_zero_io(%union.ctl_io*) #1

declare dso_local i32 @scsi_ulto4b(i32, i32) #1

declare dso_local i32 @scsi_u64to8b(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
