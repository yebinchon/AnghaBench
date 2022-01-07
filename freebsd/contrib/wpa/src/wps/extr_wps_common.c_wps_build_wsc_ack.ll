; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_common.c_wps_build_wsc_ack.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_common.c_wps_build_wsc_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wps_data = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"WPS: Building Message WSC_ACK\00", align 1
@WPS_WSC_ACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @wps_build_wsc_ack(%struct.wps_data* %0) #0 {
  %2 = alloca %struct.wpabuf*, align 8
  %3 = alloca %struct.wps_data*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  store %struct.wps_data* %0, %struct.wps_data** %3, align 8
  %5 = load i32, i32* @MSG_DEBUG, align 4
  %6 = call i32 @wpa_printf(i32 %5, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %7 = call %struct.wpabuf* @wpabuf_alloc(i32 1000)
  store %struct.wpabuf* %7, %struct.wpabuf** %4, align 8
  %8 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %9 = icmp eq %struct.wpabuf* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %39

11:                                               ; preds = %1
  %12 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %13 = call i64 @wps_build_version(%struct.wpabuf* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %34, label %15

15:                                               ; preds = %11
  %16 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %17 = load i32, i32* @WPS_WSC_ACK, align 4
  %18 = call i64 @wps_build_msg_type(%struct.wpabuf* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %15
  %21 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %22 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %23 = call i64 @wps_build_enrollee_nonce(%struct.wps_data* %21, %struct.wpabuf* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %20
  %26 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %27 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %28 = call i64 @wps_build_registrar_nonce(%struct.wps_data* %26, %struct.wpabuf* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %32 = call i64 @wps_build_wfa_ext(%struct.wpabuf* %31, i32 0, i32* null, i32 0, i32 0)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30, %25, %20, %15, %11
  %35 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %36 = call i32 @wpabuf_free(%struct.wpabuf* %35)
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %39

37:                                               ; preds = %30
  %38 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  store %struct.wpabuf* %38, %struct.wpabuf** %2, align 8
  br label %39

39:                                               ; preds = %37, %34, %10
  %40 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  ret %struct.wpabuf* %40
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i64 @wps_build_version(%struct.wpabuf*) #1

declare dso_local i64 @wps_build_msg_type(%struct.wpabuf*, i32) #1

declare dso_local i64 @wps_build_enrollee_nonce(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_registrar_nonce(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_wfa_ext(%struct.wpabuf*, i32, i32*, i32, i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
