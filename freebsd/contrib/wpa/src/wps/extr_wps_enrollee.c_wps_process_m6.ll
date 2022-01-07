; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_enrollee.c_wps_process_m6.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_enrollee.c_wps_process_m6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 (i32, i32, i32*)*, i64 }
%struct.wpabuf = type { i32 }
%struct.wps_parse_attr = type { i32, i32, i32*, i32, i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"WPS: Received M6\00", align 1
@RECV_M6 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"WPS: Unexpected state (%d) for receiving M6\00", align 1
@SEND_WSC_NACK = common dso_local global i8* null, align 8
@WPS_CONTINUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"WPS: Failed to decrypted Encrypted Settings attribute\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"WPS: Processing decrypted Encrypted Settings attribute\00", align 1
@WPS_EV_AP_PIN_SUCCESS = common dso_local global i32 0, align 4
@SEND_M7 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_data*, %struct.wpabuf*, %struct.wps_parse_attr*)* @wps_process_m6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_process_m6(%struct.wps_data* %0, %struct.wpabuf* %1, %struct.wps_parse_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wps_data*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.wps_parse_attr*, align 8
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca %struct.wps_parse_attr, align 8
  store %struct.wps_data* %0, %struct.wps_data** %5, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %6, align 8
  store %struct.wps_parse_attr* %2, %struct.wps_parse_attr** %7, align 8
  %10 = load i32, i32* @MSG_DEBUG, align 4
  %11 = call i32 (i32, i8*, ...) @wpa_printf(i32 %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %13 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @RECV_M6, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %3
  %18 = load i32, i32* @MSG_DEBUG, align 4
  %19 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %20 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 (i32, i8*, ...) @wpa_printf(i32 %18, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %21)
  %23 = load i8*, i8** @SEND_WSC_NACK, align 8
  %24 = ptrtoint i8* %23 to i64
  %25 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %26 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %27, i32* %4, align 4
  br label %139

28:                                               ; preds = %3
  %29 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %30 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %31 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @wps_process_enrollee_nonce(%struct.wps_data* %29, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %28
  %36 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %37 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %38 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %41 = call i64 @wps_process_authenticator(%struct.wps_data* %36, i32 %39, %struct.wpabuf* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %35, %28
  %44 = load i8*, i8** @SEND_WSC_NACK, align 8
  %45 = ptrtoint i8* %44 to i64
  %46 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %47 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %48, i32* %4, align 4
  br label %139

49:                                               ; preds = %35
  %50 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %51 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %52 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %55 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call %struct.wpabuf* @wps_decrypt_encr_settings(%struct.wps_data* %50, i32 %53, i32 %56)
  store %struct.wpabuf* %57, %struct.wpabuf** %8, align 8
  %58 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %59 = icmp eq %struct.wpabuf* %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %49
  %61 = load i32, i32* @MSG_DEBUG, align 4
  %62 = call i32 (i32, i8*, ...) @wpa_printf(i32 %61, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i8*, i8** @SEND_WSC_NACK, align 8
  %64 = ptrtoint i8* %63 to i64
  %65 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %66 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %67, i32* %4, align 4
  br label %139

68:                                               ; preds = %49
  %69 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %70 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %71 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  %74 = zext i1 %73 to i32
  %75 = call i64 @wps_validate_m6_encr(%struct.wpabuf* %69, i32 %74)
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %68
  %78 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %79 = call i32 @wpabuf_clear_free(%struct.wpabuf* %78)
  %80 = load i8*, i8** @SEND_WSC_NACK, align 8
  %81 = ptrtoint i8* %80 to i64
  %82 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %83 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %84, i32* %4, align 4
  br label %139

85:                                               ; preds = %68
  %86 = load i32, i32* @MSG_DEBUG, align 4
  %87 = call i32 (i32, i8*, ...) @wpa_printf(i32 %86, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  %88 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %89 = call i64 @wps_parse_msg(%struct.wpabuf* %88, %struct.wps_parse_attr* %9)
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %104, label %91

91:                                               ; preds = %85
  %92 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %93 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %94 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %9, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @wps_process_key_wrap_auth(%struct.wps_data* %92, %struct.wpabuf* %93, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %91
  %99 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %100 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %9, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i64 @wps_process_r_snonce2(%struct.wps_data* %99, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %98, %91, %85
  %105 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %106 = call i32 @wpabuf_clear_free(%struct.wpabuf* %105)
  %107 = load i8*, i8** @SEND_WSC_NACK, align 8
  %108 = ptrtoint i8* %107 to i64
  %109 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %110 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  %111 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %111, i32* %4, align 4
  br label %139

112:                                              ; preds = %98
  %113 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %114 = call i32 @wpabuf_clear_free(%struct.wpabuf* %113)
  %115 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %116 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %115, i32 0, i32 1
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %134

121:                                              ; preds = %112
  %122 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %123 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %122, i32 0, i32 1
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  %126 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %125, align 8
  %127 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %128 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %127, i32 0, i32 1
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @WPS_EV_AP_PIN_SUCCESS, align 4
  %133 = call i32 %126(i32 %131, i32 %132, i32* null)
  br label %134

134:                                              ; preds = %121, %112
  %135 = load i64, i64* @SEND_M7, align 8
  %136 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %137 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %136, i32 0, i32 0
  store i64 %135, i64* %137, align 8
  %138 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %138, i32* %4, align 4
  br label %139

139:                                              ; preds = %134, %104, %77, %60, %43, %17
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @wps_process_enrollee_nonce(%struct.wps_data*, i32) #1

declare dso_local i64 @wps_process_authenticator(%struct.wps_data*, i32, %struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @wps_decrypt_encr_settings(%struct.wps_data*, i32, i32) #1

declare dso_local i64 @wps_validate_m6_encr(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_clear_free(%struct.wpabuf*) #1

declare dso_local i64 @wps_parse_msg(%struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i64 @wps_process_key_wrap_auth(%struct.wps_data*, %struct.wpabuf*, i32) #1

declare dso_local i64 @wps_process_r_snonce2(%struct.wps_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
