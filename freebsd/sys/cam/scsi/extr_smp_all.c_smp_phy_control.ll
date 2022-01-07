; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_smp_all.c_smp_phy_control.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_smp_all.c_smp_phy_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_smpio = type { i32 }
%struct.cam_periph = type opaque
%union.ccb = type opaque
%struct.smp_phy_control_request = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque

@CAM_DIR_BOTH = common dso_local global i32 0, align 4
@SMP_CRC_LEN = common dso_local global i64 0, align 8
@SMP_FRAME_TYPE_REQUEST = common dso_local global i32 0, align 4
@SMP_FUNC_PHY_CONTROL = common dso_local global i32 0, align 4
@SMP_PC_RESPONSE_LEN = common dso_local global i32 0, align 4
@SMP_PC_REQUEST_LEN = common dso_local global i32 0, align 4
@SMP_PC_UPDATE_PP_TIMEOUT = common dso_local global i32 0, align 4
@SMP_PC_PROG_MIN_PL_RATE_SHIFT = common dso_local global i32 0, align 4
@SMP_PC_PROG_MIN_PL_RATE_MASK = common dso_local global i32 0, align 4
@SMP_PC_PROG_MAX_PL_RATE_SHIFT = common dso_local global i32 0, align 4
@SMP_PC_PROG_MAX_PL_RATE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smp_phy_control(%struct.ccb_smpio* %0, i32 %1, void (%struct.cam_periph*, %union.ccb*)* %2, %struct.smp_phy_control_request* %3, i32 %4, i32* %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16, i32 %17) #0 {
  %19 = alloca %struct.ccb_smpio*, align 8
  %20 = alloca i32, align 4
  %21 = alloca void (%struct.cam_periph*, %union.ccb*)*, align 8
  %22 = alloca %struct.smp_phy_control_request*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store %struct.ccb_smpio* %0, %struct.ccb_smpio** %19, align 8
  store i32 %1, i32* %20, align 4
  store void (%struct.cam_periph*, %union.ccb*)* %2, void (%struct.cam_periph*, %union.ccb*)** %21, align 8
  store %struct.smp_phy_control_request* %3, %struct.smp_phy_control_request** %22, align 8
  store i32 %4, i32* %23, align 4
  store i32* %5, i32** %24, align 8
  store i32 %6, i32* %25, align 4
  store i32 %7, i32* %26, align 4
  store i32 %8, i32* %27, align 4
  store i32 %9, i32* %28, align 4
  store i32 %10, i32* %29, align 4
  store i32 %11, i32* %30, align 4
  store i32 %12, i32* %31, align 4
  store i32 %13, i32* %32, align 4
  store i32 %14, i32* %33, align 4
  store i32 %15, i32* %34, align 4
  store i32 %16, i32* %35, align 4
  store i32 %17, i32* %36, align 4
  %37 = load %struct.ccb_smpio*, %struct.ccb_smpio** %19, align 8
  %38 = load i32, i32* %20, align 4
  %39 = load void (%struct.cam_periph*, %union.ccb*)*, void (%struct.cam_periph*, %union.ccb*)** %21, align 8
  %40 = bitcast void (%struct.cam_periph*, %union.ccb*)* %39 to void (%struct.cam_periph.0*, %union.ccb.1*)*
  %41 = load i32, i32* @CAM_DIR_BOTH, align 4
  %42 = load %struct.smp_phy_control_request*, %struct.smp_phy_control_request** %22, align 8
  %43 = bitcast %struct.smp_phy_control_request* %42 to i32*
  %44 = load i32, i32* %23, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* @SMP_CRC_LEN, align 8
  %47 = sub nsw i64 %45, %46
  %48 = load i32*, i32** %24, align 8
  %49 = load i32, i32* %25, align 4
  %50 = load i32, i32* %36, align 4
  %51 = call i32 @cam_fill_smpio(%struct.ccb_smpio* %37, i32 %38, void (%struct.cam_periph.0*, %union.ccb.1*)* %40, i32 %41, i32* %43, i64 %47, i32* %48, i32 %49, i32 %50)
  %52 = load %struct.smp_phy_control_request*, %struct.smp_phy_control_request** %22, align 8
  %53 = call i32 @bzero(%struct.smp_phy_control_request* %52, i32 52)
  %54 = load i32, i32* @SMP_FRAME_TYPE_REQUEST, align 4
  %55 = load %struct.smp_phy_control_request*, %struct.smp_phy_control_request** %22, align 8
  %56 = getelementptr inbounds %struct.smp_phy_control_request, %struct.smp_phy_control_request* %55, i32 0, i32 12
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @SMP_FUNC_PHY_CONTROL, align 4
  %58 = load %struct.smp_phy_control_request*, %struct.smp_phy_control_request** %22, align 8
  %59 = getelementptr inbounds %struct.smp_phy_control_request, %struct.smp_phy_control_request* %58, i32 0, i32 11
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %26, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %18
  %63 = load i32, i32* @SMP_PC_RESPONSE_LEN, align 4
  br label %65

64:                                               ; preds = %18
  br label %65

65:                                               ; preds = %64, %62
  %66 = phi i32 [ %63, %62 ], [ 0, %64 ]
  %67 = load %struct.smp_phy_control_request*, %struct.smp_phy_control_request** %22, align 8
  %68 = getelementptr inbounds %struct.smp_phy_control_request, %struct.smp_phy_control_request* %67, i32 0, i32 10
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %26, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i32, i32* @SMP_PC_REQUEST_LEN, align 4
  br label %74

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %73, %71
  %75 = phi i32 [ %72, %71 ], [ 0, %73 ]
  %76 = load %struct.smp_phy_control_request*, %struct.smp_phy_control_request** %22, align 8
  %77 = getelementptr inbounds %struct.smp_phy_control_request, %struct.smp_phy_control_request* %76, i32 0, i32 9
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %27, align 4
  %79 = load %struct.smp_phy_control_request*, %struct.smp_phy_control_request** %22, align 8
  %80 = getelementptr inbounds %struct.smp_phy_control_request, %struct.smp_phy_control_request* %79, i32 0, i32 8
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @scsi_ulto2b(i32 %78, i32 %81)
  %83 = load i32, i32* %28, align 4
  %84 = load %struct.smp_phy_control_request*, %struct.smp_phy_control_request** %22, align 8
  %85 = getelementptr inbounds %struct.smp_phy_control_request, %struct.smp_phy_control_request* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %29, align 4
  %87 = load %struct.smp_phy_control_request*, %struct.smp_phy_control_request** %22, align 8
  %88 = getelementptr inbounds %struct.smp_phy_control_request, %struct.smp_phy_control_request* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %30, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %74
  %92 = load i32, i32* @SMP_PC_UPDATE_PP_TIMEOUT, align 4
  %93 = load %struct.smp_phy_control_request*, %struct.smp_phy_control_request** %22, align 8
  %94 = getelementptr inbounds %struct.smp_phy_control_request, %struct.smp_phy_control_request* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %91, %74
  %98 = load i32, i32* %31, align 4
  %99 = load %struct.smp_phy_control_request*, %struct.smp_phy_control_request** %22, align 8
  %100 = getelementptr inbounds %struct.smp_phy_control_request, %struct.smp_phy_control_request* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @scsi_u64to8b(i32 %98, i32 %101)
  %103 = load i32, i32* %32, align 4
  %104 = load i32, i32* @SMP_PC_PROG_MIN_PL_RATE_SHIFT, align 4
  %105 = shl i32 %103, %104
  %106 = load i32, i32* @SMP_PC_PROG_MIN_PL_RATE_MASK, align 4
  %107 = and i32 %105, %106
  %108 = load %struct.smp_phy_control_request*, %struct.smp_phy_control_request** %22, align 8
  %109 = getelementptr inbounds %struct.smp_phy_control_request, %struct.smp_phy_control_request* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* %33, align 4
  %111 = load i32, i32* @SMP_PC_PROG_MAX_PL_RATE_SHIFT, align 4
  %112 = shl i32 %110, %111
  %113 = load i32, i32* @SMP_PC_PROG_MAX_PL_RATE_MASK, align 4
  %114 = and i32 %112, %113
  %115 = load %struct.smp_phy_control_request*, %struct.smp_phy_control_request** %22, align 8
  %116 = getelementptr inbounds %struct.smp_phy_control_request, %struct.smp_phy_control_request* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* %34, align 4
  %118 = load %struct.smp_phy_control_request*, %struct.smp_phy_control_request** %22, align 8
  %119 = getelementptr inbounds %struct.smp_phy_control_request, %struct.smp_phy_control_request* %118, i32 0, i32 4
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* %35, align 4
  %121 = load %struct.smp_phy_control_request*, %struct.smp_phy_control_request** %22, align 8
  %122 = getelementptr inbounds %struct.smp_phy_control_request, %struct.smp_phy_control_request* %121, i32 0, i32 5
  store i32 %120, i32* %122, align 4
  ret void
}

declare dso_local i32 @cam_fill_smpio(%struct.ccb_smpio*, i32, void (%struct.cam_periph.0*, %union.ccb.1*)*, i32, i32*, i64, i32*, i32, i32) #1

declare dso_local i32 @bzero(%struct.smp_phy_control_request*, i32) #1

declare dso_local i32 @scsi_ulto2b(i32, i32) #1

declare dso_local i32 @scsi_u64to8b(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
