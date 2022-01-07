; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_enrollee.c_wps_process_m4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_enrollee.c_wps_process_m4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { i64 }
%struct.wpabuf = type { i32 }
%struct.wps_parse_attr = type { i32, i32, i32*, i32, i32, i32, i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"WPS: Received M4\00", align 1
@RECV_M4 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"WPS: Unexpected state (%d) for receiving M4\00", align 1
@SEND_WSC_NACK = common dso_local global i8* null, align 8
@WPS_CONTINUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"WPS: Failed to decrypted Encrypted Settings attribute\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"WPS: Processing decrypted Encrypted Settings attribute\00", align 1
@SEND_M5 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_data*, %struct.wpabuf*, %struct.wps_parse_attr*)* @wps_process_m4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_process_m4(%struct.wps_data* %0, %struct.wpabuf* %1, %struct.wps_parse_attr* %2) #0 {
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
  %15 = load i64, i64* @RECV_M4, align 8
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
  br label %133

28:                                               ; preds = %3
  %29 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %30 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %31 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @wps_process_enrollee_nonce(%struct.wps_data* %29, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %57, label %35

35:                                               ; preds = %28
  %36 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %37 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %38 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %41 = call i64 @wps_process_authenticator(%struct.wps_data* %36, i32 %39, %struct.wpabuf* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %57, label %43

43:                                               ; preds = %35
  %44 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %45 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %46 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @wps_process_r_hash1(%struct.wps_data* %44, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %43
  %51 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %52 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %53 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @wps_process_r_hash2(%struct.wps_data* %51, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %50, %43, %35, %28
  %58 = load i8*, i8** @SEND_WSC_NACK, align 8
  %59 = ptrtoint i8* %58 to i64
  %60 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %61 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %62, i32* %4, align 4
  br label %133

63:                                               ; preds = %50
  %64 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %65 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %66 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %69 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call %struct.wpabuf* @wps_decrypt_encr_settings(%struct.wps_data* %64, i32 %67, i32 %70)
  store %struct.wpabuf* %71, %struct.wpabuf** %8, align 8
  %72 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %73 = icmp eq %struct.wpabuf* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %63
  %75 = load i32, i32* @MSG_DEBUG, align 4
  %76 = call i32 (i32, i8*, ...) @wpa_printf(i32 %75, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i8*, i8** @SEND_WSC_NACK, align 8
  %78 = ptrtoint i8* %77 to i64
  %79 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %80 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %81, i32* %4, align 4
  br label %133

82:                                               ; preds = %63
  %83 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %84 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %85 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  %88 = zext i1 %87 to i32
  %89 = call i64 @wps_validate_m4_encr(%struct.wpabuf* %83, i32 %88)
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %82
  %92 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %93 = call i32 @wpabuf_clear_free(%struct.wpabuf* %92)
  %94 = load i8*, i8** @SEND_WSC_NACK, align 8
  %95 = ptrtoint i8* %94 to i64
  %96 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %97 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  %98 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %98, i32* %4, align 4
  br label %133

99:                                               ; preds = %82
  %100 = load i32, i32* @MSG_DEBUG, align 4
  %101 = call i32 (i32, i8*, ...) @wpa_printf(i32 %100, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  %102 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %103 = call i64 @wps_parse_msg(%struct.wpabuf* %102, %struct.wps_parse_attr* %9)
  %104 = icmp slt i64 %103, 0
  br i1 %104, label %118, label %105

105:                                              ; preds = %99
  %106 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %107 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %108 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %9, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @wps_process_key_wrap_auth(%struct.wps_data* %106, %struct.wpabuf* %107, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %105
  %113 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %114 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %9, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i64 @wps_process_r_snonce1(%struct.wps_data* %113, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %112, %105, %99
  %119 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %120 = call i32 @wpabuf_clear_free(%struct.wpabuf* %119)
  %121 = load i8*, i8** @SEND_WSC_NACK, align 8
  %122 = ptrtoint i8* %121 to i64
  %123 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %124 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %123, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  %125 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %125, i32* %4, align 4
  br label %133

126:                                              ; preds = %112
  %127 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %128 = call i32 @wpabuf_clear_free(%struct.wpabuf* %127)
  %129 = load i64, i64* @SEND_M5, align 8
  %130 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %131 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  %132 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %126, %118, %91, %74, %57, %17
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @wps_process_enrollee_nonce(%struct.wps_data*, i32) #1

declare dso_local i64 @wps_process_authenticator(%struct.wps_data*, i32, %struct.wpabuf*) #1

declare dso_local i64 @wps_process_r_hash1(%struct.wps_data*, i32) #1

declare dso_local i64 @wps_process_r_hash2(%struct.wps_data*, i32) #1

declare dso_local %struct.wpabuf* @wps_decrypt_encr_settings(%struct.wps_data*, i32, i32) #1

declare dso_local i64 @wps_validate_m4_encr(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_clear_free(%struct.wpabuf*) #1

declare dso_local i64 @wps_parse_msg(%struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i64 @wps_process_key_wrap_auth(%struct.wps_data*, %struct.wpabuf*, i32) #1

declare dso_local i64 @wps_process_r_snonce1(%struct.wps_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
