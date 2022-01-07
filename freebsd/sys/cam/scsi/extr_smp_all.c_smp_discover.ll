; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_smp_all.c_smp_discover.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_smp_all.c_smp_discover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_smpio = type { i32 }
%struct.cam_periph = type opaque
%union.ccb = type opaque
%struct.smp_discover_request = type { i32, i32, i32, i32, i32, i32 }
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque

@CAM_DIR_BOTH = common dso_local global i32 0, align 4
@SMP_CRC_LEN = common dso_local global i64 0, align 8
@SMP_FRAME_TYPE_REQUEST = common dso_local global i32 0, align 4
@SMP_FUNC_DISCOVER = common dso_local global i32 0, align 4
@SMP_DIS_RESPONSE_LEN = common dso_local global i32 0, align 4
@SMP_DIS_REQUEST_LEN = common dso_local global i32 0, align 4
@SMP_DIS_IGNORE_ZONE_GROUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smp_discover(%struct.ccb_smpio* %0, i32 %1, void (%struct.cam_periph*, %union.ccb*)* %2, %struct.smp_discover_request* %3, i32 %4, i32* %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca %struct.ccb_smpio*, align 8
  %13 = alloca i32, align 4
  %14 = alloca void (%struct.cam_periph*, %union.ccb*)*, align 8
  %15 = alloca %struct.smp_discover_request*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.ccb_smpio* %0, %struct.ccb_smpio** %12, align 8
  store i32 %1, i32* %13, align 4
  store void (%struct.cam_periph*, %union.ccb*)* %2, void (%struct.cam_periph*, %union.ccb*)** %14, align 8
  store %struct.smp_discover_request* %3, %struct.smp_discover_request** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32* %5, i32** %17, align 8
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  %23 = load %struct.ccb_smpio*, %struct.ccb_smpio** %12, align 8
  %24 = load i32, i32* %13, align 4
  %25 = load void (%struct.cam_periph*, %union.ccb*)*, void (%struct.cam_periph*, %union.ccb*)** %14, align 8
  %26 = bitcast void (%struct.cam_periph*, %union.ccb*)* %25 to void (%struct.cam_periph.0*, %union.ccb.1*)*
  %27 = load i32, i32* @CAM_DIR_BOTH, align 4
  %28 = load %struct.smp_discover_request*, %struct.smp_discover_request** %15, align 8
  %29 = bitcast %struct.smp_discover_request* %28 to i32*
  %30 = load i32, i32* %16, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* @SMP_CRC_LEN, align 8
  %33 = sub nsw i64 %31, %32
  %34 = load i32*, i32** %17, align 8
  %35 = load i32, i32* %18, align 4
  %36 = load i32, i32* %22, align 4
  %37 = call i32 @cam_fill_smpio(%struct.ccb_smpio* %23, i32 %24, void (%struct.cam_periph.0*, %union.ccb.1*)* %26, i32 %27, i32* %29, i64 %33, i32* %34, i32 %35, i32 %36)
  %38 = load %struct.smp_discover_request*, %struct.smp_discover_request** %15, align 8
  %39 = call i32 @bzero(%struct.smp_discover_request* %38, i32 24)
  %40 = load i32, i32* @SMP_FRAME_TYPE_REQUEST, align 4
  %41 = load %struct.smp_discover_request*, %struct.smp_discover_request** %15, align 8
  %42 = getelementptr inbounds %struct.smp_discover_request, %struct.smp_discover_request* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @SMP_FUNC_DISCOVER, align 4
  %44 = load %struct.smp_discover_request*, %struct.smp_discover_request** %15, align 8
  %45 = getelementptr inbounds %struct.smp_discover_request, %struct.smp_discover_request* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %19, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %11
  %49 = load i32, i32* @SMP_DIS_RESPONSE_LEN, align 4
  br label %51

50:                                               ; preds = %11
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i32 [ %49, %48 ], [ 0, %50 ]
  %53 = load %struct.smp_discover_request*, %struct.smp_discover_request** %15, align 8
  %54 = getelementptr inbounds %struct.smp_discover_request, %struct.smp_discover_request* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %19, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* @SMP_DIS_REQUEST_LEN, align 4
  br label %60

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59, %57
  %61 = phi i32 [ %58, %57 ], [ 0, %59 ]
  %62 = load %struct.smp_discover_request*, %struct.smp_discover_request** %15, align 8
  %63 = getelementptr inbounds %struct.smp_discover_request, %struct.smp_discover_request* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %20, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load i32, i32* @SMP_DIS_IGNORE_ZONE_GROUP, align 4
  %68 = load %struct.smp_discover_request*, %struct.smp_discover_request** %15, align 8
  %69 = getelementptr inbounds %struct.smp_discover_request, %struct.smp_discover_request* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %66, %60
  %73 = load i32, i32* %21, align 4
  %74 = load %struct.smp_discover_request*, %struct.smp_discover_request** %15, align 8
  %75 = getelementptr inbounds %struct.smp_discover_request, %struct.smp_discover_request* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  ret void
}

declare dso_local i32 @cam_fill_smpio(%struct.ccb_smpio*, i32, void (%struct.cam_periph.0*, %union.ccb.1*)*, i32, i32*, i64, i32*, i32, i32) #1

declare dso_local i32 @bzero(%struct.smp_discover_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
