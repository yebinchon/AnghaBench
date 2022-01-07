; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_smp_all.c_smp_report_general.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_smp_all.c_smp_report_general.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_smpio = type { i32 }
%struct.cam_periph = type opaque
%union.ccb = type opaque
%struct.smp_report_general_request = type { i64, i32, i32, i32 }
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque

@CAM_DIR_BOTH = common dso_local global i32 0, align 4
@SMP_CRC_LEN = common dso_local global i64 0, align 8
@SMP_FRAME_TYPE_REQUEST = common dso_local global i32 0, align 4
@SMP_FUNC_REPORT_GENERAL = common dso_local global i32 0, align 4
@SMP_RG_RESPONSE_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smp_report_general(%struct.ccb_smpio* %0, i32 %1, void (%struct.cam_periph*, %union.ccb*)* %2, %struct.smp_report_general_request* %3, i32 %4, i32* %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.ccb_smpio*, align 8
  %11 = alloca i32, align 4
  %12 = alloca void (%struct.cam_periph*, %union.ccb*)*, align 8
  %13 = alloca %struct.smp_report_general_request*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ccb_smpio* %0, %struct.ccb_smpio** %10, align 8
  store i32 %1, i32* %11, align 4
  store void (%struct.cam_periph*, %union.ccb*)* %2, void (%struct.cam_periph*, %union.ccb*)** %12, align 8
  store %struct.smp_report_general_request* %3, %struct.smp_report_general_request** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %19 = load %struct.ccb_smpio*, %struct.ccb_smpio** %10, align 8
  %20 = load i32, i32* %11, align 4
  %21 = load void (%struct.cam_periph*, %union.ccb*)*, void (%struct.cam_periph*, %union.ccb*)** %12, align 8
  %22 = bitcast void (%struct.cam_periph*, %union.ccb*)* %21 to void (%struct.cam_periph.0*, %union.ccb.1*)*
  %23 = load i32, i32* @CAM_DIR_BOTH, align 4
  %24 = load %struct.smp_report_general_request*, %struct.smp_report_general_request** %13, align 8
  %25 = bitcast %struct.smp_report_general_request* %24 to i32*
  %26 = load i32, i32* %14, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* @SMP_CRC_LEN, align 8
  %29 = sub nsw i64 %27, %28
  %30 = load i32*, i32** %15, align 8
  %31 = load i32, i32* %16, align 4
  %32 = load i32, i32* %18, align 4
  %33 = call i32 @cam_fill_smpio(%struct.ccb_smpio* %19, i32 %20, void (%struct.cam_periph.0*, %union.ccb.1*)* %22, i32 %23, i32* %25, i64 %29, i32* %30, i32 %31, i32 %32)
  %34 = load %struct.smp_report_general_request*, %struct.smp_report_general_request** %13, align 8
  %35 = call i32 @bzero(%struct.smp_report_general_request* %34, i32 24)
  %36 = load i32, i32* @SMP_FRAME_TYPE_REQUEST, align 4
  %37 = load %struct.smp_report_general_request*, %struct.smp_report_general_request** %13, align 8
  %38 = getelementptr inbounds %struct.smp_report_general_request, %struct.smp_report_general_request* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @SMP_FUNC_REPORT_GENERAL, align 4
  %40 = load %struct.smp_report_general_request*, %struct.smp_report_general_request** %13, align 8
  %41 = getelementptr inbounds %struct.smp_report_general_request, %struct.smp_report_general_request* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %17, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %9
  %45 = load i32, i32* @SMP_RG_RESPONSE_LEN, align 4
  br label %47

46:                                               ; preds = %9
  br label %47

47:                                               ; preds = %46, %44
  %48 = phi i32 [ %45, %44 ], [ 0, %46 ]
  %49 = load %struct.smp_report_general_request*, %struct.smp_report_general_request** %13, align 8
  %50 = getelementptr inbounds %struct.smp_report_general_request, %struct.smp_report_general_request* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.smp_report_general_request*, %struct.smp_report_general_request** %13, align 8
  %52 = getelementptr inbounds %struct.smp_report_general_request, %struct.smp_report_general_request* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  ret void
}

declare dso_local i32 @cam_fill_smpio(%struct.ccb_smpio*, i32, void (%struct.cam_periph.0*, %union.ccb.1*)*, i32, i32*, i64, i32*, i32, i32) #1

declare dso_local i32 @bzero(%struct.smp_report_general_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
