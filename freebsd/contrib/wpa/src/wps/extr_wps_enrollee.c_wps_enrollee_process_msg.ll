; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_enrollee.c_wps_enrollee_process_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_enrollee.c_wps_enrollee_process_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { i32 }
%struct.wpabuf = type { i32 }
%struct.wps_parse_attr = type { i64* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"WPS: Processing received message (len=%lu op_code=%d)\00", align 1
@WPS_WSC_ACK = common dso_local global i64 0, align 8
@WPS_WSC_NACK = common dso_local global i64 0, align 8
@WPS_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"WPS: Unsupported op_code %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_enrollee_process_msg(%struct.wps_data* %0, i32 %1, %struct.wpabuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wps_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca %struct.wps_parse_attr, align 8
  store %struct.wps_data* %0, %struct.wps_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.wpabuf* %2, %struct.wpabuf** %7, align 8
  %9 = load i32, i32* @MSG_DEBUG, align 4
  %10 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %11 = call i64 @wpabuf_len(%struct.wpabuf* %10)
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* %6, align 4
  %14 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %9, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %15, 128
  br i1 %16, label %17, label %42

17:                                               ; preds = %3
  %18 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %19 = call i64 @wps_parse_msg(%struct.wpabuf* %18, %struct.wps_parse_attr* %8)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = icmp ne i64* %23, null
  br i1 %24, label %25, label %41

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @WPS_WSC_ACK, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 131, i32* %6, align 4
  br label %40

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %8, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @WPS_WSC_NACK, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 129, i32* %6, align 4
  br label %39

39:                                               ; preds = %38, %32
  br label %40

40:                                               ; preds = %39, %31
  br label %41

41:                                               ; preds = %40, %21, %17
  br label %42

42:                                               ; preds = %41, %3
  %43 = load i32, i32* %6, align 4
  switch i32 %43, label %68 [
    i32 130, label %44
    i32 128, label %44
    i32 131, label %48
    i32 129, label %58
  ]

44:                                               ; preds = %42, %42
  %45 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %46 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %47 = call i32 @wps_process_wsc_msg(%struct.wps_data* %45, %struct.wpabuf* %46)
  store i32 %47, i32* %4, align 4
  br label %73

48:                                               ; preds = %42
  %49 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %50 = call i32 @wps_validate_wsc_ack(%struct.wpabuf* %49)
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %53, i32* %4, align 4
  br label %73

54:                                               ; preds = %48
  %55 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %56 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %57 = call i32 @wps_process_wsc_ack(%struct.wps_data* %55, %struct.wpabuf* %56)
  store i32 %57, i32* %4, align 4
  br label %73

58:                                               ; preds = %42
  %59 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %60 = call i32 @wps_validate_wsc_nack(%struct.wpabuf* %59)
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %63, i32* %4, align 4
  br label %73

64:                                               ; preds = %58
  %65 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %66 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %67 = call i32 @wps_process_wsc_nack(%struct.wps_data* %65, %struct.wpabuf* %66)
  store i32 %67, i32* %4, align 4
  br label %73

68:                                               ; preds = %42
  %69 = load i32, i32* @MSG_DEBUG, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %69, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %68, %64, %62, %54, %52, %44
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @wpa_printf(i32, i8*, i32, ...) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i64 @wps_parse_msg(%struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i32 @wps_process_wsc_msg(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i32 @wps_validate_wsc_ack(%struct.wpabuf*) #1

declare dso_local i32 @wps_process_wsc_ack(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i32 @wps_validate_wsc_nack(%struct.wpabuf*) #1

declare dso_local i32 @wps_process_wsc_nack(%struct.wps_data*, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
