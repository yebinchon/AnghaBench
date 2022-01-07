; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_process_m3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_process_m3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { i64, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.wpabuf = type { i32 }
%struct.wps_parse_attr = type { i32, i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"WPS: Received M3\00", align 1
@RECV_M3 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"WPS: Unexpected state (%d) for receiving M3\00", align 1
@SEND_WSC_NACK = common dso_local global i8* null, align 8
@WPS_CONTINUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"WPS: Reject negotiation due to PBC session overlap\00", align 1
@WPS_CFG_MULTIPLE_PBC_DETECTED = common dso_local global i32 0, align 4
@SEND_M4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_data*, %struct.wpabuf*, %struct.wps_parse_attr*)* @wps_process_m3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_process_m3(%struct.wps_data* %0, %struct.wpabuf* %1, %struct.wps_parse_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wps_data*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.wps_parse_attr*, align 8
  store %struct.wps_data* %0, %struct.wps_data** %5, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %6, align 8
  store %struct.wps_parse_attr* %2, %struct.wps_parse_attr** %7, align 8
  %8 = load i32, i32* @MSG_DEBUG, align 4
  %9 = call i32 (i32, i8*, ...) @wpa_printf(i32 %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %11 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @RECV_M3, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %3
  %16 = load i32, i32* @MSG_DEBUG, align 4
  %17 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %18 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 (i32, i8*, ...) @wpa_printf(i32 %16, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %19)
  %21 = load i8*, i8** @SEND_WSC_NACK, align 8
  %22 = ptrtoint i8* %21 to i64
  %23 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %24 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %25, i32* %4, align 4
  br label %95

26:                                               ; preds = %3
  %27 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %28 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %26
  %32 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %33 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %32, i32 0, i32 2
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %31
  %41 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %42 = call i32 @wps_registrar_skip_overlap(%struct.wps_data* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* @MSG_DEBUG, align 4
  %46 = call i32 (i32, i8*, ...) @wpa_printf(i32 %45, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i8*, i8** @SEND_WSC_NACK, align 8
  %48 = ptrtoint i8* %47 to i64
  %49 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %50 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load i32, i32* @WPS_CFG_MULTIPLE_PBC_DETECTED, align 4
  %52 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %53 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %54, i32* %4, align 4
  br label %95

55:                                               ; preds = %40, %31, %26
  %56 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %57 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %58 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @wps_process_registrar_nonce(%struct.wps_data* %56, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %84, label %62

62:                                               ; preds = %55
  %63 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %64 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %65 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %68 = call i64 @wps_process_authenticator(%struct.wps_data* %63, i32 %66, %struct.wpabuf* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %84, label %70

70:                                               ; preds = %62
  %71 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %72 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %73 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @wps_process_e_hash1(%struct.wps_data* %71, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %70
  %78 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %79 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %80 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @wps_process_e_hash2(%struct.wps_data* %78, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %77, %70, %62, %55
  %85 = load i8*, i8** @SEND_WSC_NACK, align 8
  %86 = ptrtoint i8* %85 to i64
  %87 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %88 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %89, i32* %4, align 4
  br label %95

90:                                               ; preds = %77
  %91 = load i64, i64* @SEND_M4, align 8
  %92 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %93 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  %94 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %90, %84, %44, %15
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wps_registrar_skip_overlap(%struct.wps_data*) #1

declare dso_local i64 @wps_process_registrar_nonce(%struct.wps_data*, i32) #1

declare dso_local i64 @wps_process_authenticator(%struct.wps_data*, i32, %struct.wpabuf*) #1

declare dso_local i64 @wps_process_e_hash1(%struct.wps_data*, i32) #1

declare dso_local i64 @wps_process_e_hash2(%struct.wps_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
