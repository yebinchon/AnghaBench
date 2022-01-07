; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_leap.c_eap_leap_process_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_leap.c_eap_leap_process_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_method_ret = type { i8* }
%struct.wpabuf = type { i32 }
%struct.eap_leap_data = type { i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"EAP-LEAP: Processing EAP-Request\00", align 1
@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_LEAP = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"EAP-LEAP: Invalid EAP-Request frame\00", align 1
@TRUE = common dso_local global i8* null, align 8
@LEAP_VERSION = common dso_local global i64 0, align 8
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"EAP-LEAP: Unsupported LEAP version %d\00", align 1
@LEAP_CHALLENGE_LEN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [62 x i8] c"EAP-LEAP: Invalid challenge (challenge_len=%d reqDataLen=%lu)\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"EAP-LEAP: Challenge from AP\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"EAP-LEAP: Generating Challenge Response\00", align 1
@LEAP_RESPONSE_LEN = common dso_local global i64 0, align 8
@EAP_CODE_RESPONSE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"EAP-LEAP: Failed to derive response\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"EAP-LEAP: Response\00", align 1
@LEAP_WAIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, i8*, %struct.eap_method_ret*, %struct.wpabuf*)* @eap_leap_process_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_leap_process_request(%struct.eap_sm* %0, i8* %1, %struct.eap_method_ret* %2, %struct.wpabuf* %3) #0 {
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.eap_sm*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.eap_method_ret*, align 8
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca %struct.eap_leap_data*, align 8
  %11 = alloca %struct.wpabuf*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %8, align 8
  store %struct.wpabuf* %3, %struct.wpabuf** %9, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = bitcast i8* %22 to %struct.eap_leap_data*
  store %struct.eap_leap_data* %23, %struct.eap_leap_data** %10, align 8
  %24 = load i32, i32* @MSG_DEBUG, align 4
  %25 = call i32 (i32, i8*, ...) @wpa_printf(i32 %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %27 = call i64* @eap_get_config_identity(%struct.eap_sm* %26, i64* %18)
  store i64* %27, i64** %14, align 8
  %28 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %29 = call i64* @eap_get_config_password2(%struct.eap_sm* %28, i64* %19, i32* %21)
  store i64* %29, i64** %15, align 8
  %30 = load i64*, i64** %14, align 8
  %31 = icmp eq i64* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %4
  %33 = load i64*, i64** %15, align 8
  %34 = icmp eq i64* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %32, %4
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %174

36:                                               ; preds = %32
  %37 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %38 = load i32, i32* @EAP_TYPE_LEAP, align 4
  %39 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %40 = call i64* @eap_hdr_validate(i32 %37, i32 %38, %struct.wpabuf* %39, i64* %20)
  store i64* %40, i64** %12, align 8
  %41 = load i64*, i64** %12, align 8
  %42 = icmp eq i64* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load i64, i64* %20, align 8
  %45 = icmp ult i64 %44, 3
  br i1 %45, label %46, label %52

46:                                               ; preds = %43, %36
  %47 = load i32, i32* @MSG_INFO, align 4
  %48 = call i32 (i32, i8*, ...) @wpa_printf(i32 %47, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i8*, i8** @TRUE, align 8
  %50 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %51 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %174

52:                                               ; preds = %43
  %53 = load i64*, i64** %12, align 8
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @LEAP_VERSION, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load i32, i32* @MSG_WARNING, align 4
  %59 = load i64*, i64** %12, align 8
  %60 = load i64, i64* %59, align 8
  %61 = call i32 (i32, i8*, ...) @wpa_printf(i32 %58, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %60)
  %62 = load i8*, i8** @TRUE, align 8
  %63 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %64 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %174

65:                                               ; preds = %52
  %66 = load i64*, i64** %12, align 8
  %67 = getelementptr inbounds i64, i64* %66, i32 1
  store i64* %67, i64** %12, align 8
  %68 = load i64*, i64** %12, align 8
  %69 = getelementptr inbounds i64, i64* %68, i32 1
  store i64* %69, i64** %12, align 8
  %70 = load i64*, i64** %12, align 8
  %71 = getelementptr inbounds i64, i64* %70, i32 1
  store i64* %71, i64** %12, align 8
  %72 = load i64, i64* %70, align 8
  store i64 %72, i64* %16, align 8
  %73 = load i64, i64* %16, align 8
  %74 = load i64, i64* @LEAP_CHALLENGE_LEN, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %81, label %76

76:                                               ; preds = %65
  %77 = load i64, i64* %16, align 8
  %78 = load i64, i64* %20, align 8
  %79 = sub i64 %78, 3
  %80 = icmp ugt i64 %77, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %76, %65
  %82 = load i32, i32* @MSG_INFO, align 4
  %83 = load i64, i64* %16, align 8
  %84 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %85 = call i64 @wpabuf_len(%struct.wpabuf* %84)
  %86 = call i32 (i32, i8*, ...) @wpa_printf(i32 %82, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i64 %83, i64 %85)
  %87 = load i8*, i8** @TRUE, align 8
  %88 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %89 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %88, i32 0, i32 0
  store i8* %87, i8** %89, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %174

90:                                               ; preds = %76
  %91 = load i64*, i64** %12, align 8
  store i64* %91, i64** %13, align 8
  %92 = load %struct.eap_leap_data*, %struct.eap_leap_data** %10, align 8
  %93 = getelementptr inbounds %struct.eap_leap_data, %struct.eap_leap_data* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load i64*, i64** %13, align 8
  %96 = load i64, i64* @LEAP_CHALLENGE_LEN, align 8
  %97 = call i32 @os_memcpy(i32 %94, i64* %95, i64 %96)
  %98 = load i32, i32* @MSG_MSGDUMP, align 4
  %99 = load i64*, i64** %13, align 8
  %100 = load i64, i64* @LEAP_CHALLENGE_LEN, align 8
  %101 = call i32 @wpa_hexdump(i32 %98, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i64* %99, i64 %100)
  %102 = load i32, i32* @MSG_DEBUG, align 4
  %103 = call i32 (i32, i8*, ...) @wpa_printf(i32 %102, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %104 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %105 = load i32, i32* @EAP_TYPE_LEAP, align 4
  %106 = load i64, i64* @LEAP_RESPONSE_LEN, align 8
  %107 = add nsw i64 3, %106
  %108 = load i64, i64* %18, align 8
  %109 = add i64 %107, %108
  %110 = load i32, i32* @EAP_CODE_RESPONSE, align 4
  %111 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %112 = call i32 @eap_get_id(%struct.wpabuf* %111)
  %113 = call %struct.wpabuf* @eap_msg_alloc(i32 %104, i32 %105, i64 %109, i32 %110, i32 %112)
  store %struct.wpabuf* %113, %struct.wpabuf** %11, align 8
  %114 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %115 = icmp eq %struct.wpabuf* %114, null
  br i1 %115, label %116, label %117

116:                                              ; preds = %90
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %174

117:                                              ; preds = %90
  %118 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %119 = load i64, i64* @LEAP_VERSION, align 8
  %120 = call i32 @wpabuf_put_u8(%struct.wpabuf* %118, i64 %119)
  %121 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %122 = call i32 @wpabuf_put_u8(%struct.wpabuf* %121, i64 0)
  %123 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %124 = load i64, i64* @LEAP_RESPONSE_LEN, align 8
  %125 = call i32 @wpabuf_put_u8(%struct.wpabuf* %123, i64 %124)
  %126 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %127 = load i64, i64* @LEAP_RESPONSE_LEN, align 8
  %128 = call i64* @wpabuf_put(%struct.wpabuf* %126, i64 %127)
  store i64* %128, i64** %17, align 8
  %129 = load i32, i32* %21, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %117
  %132 = load i64*, i64** %13, align 8
  %133 = load i64*, i64** %15, align 8
  %134 = load i64*, i64** %17, align 8
  %135 = call i64 @challenge_response(i64* %132, i64* %133, i64* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %147, label %137

137:                                              ; preds = %131, %117
  %138 = load i32, i32* %21, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %155, label %140

140:                                              ; preds = %137
  %141 = load i64*, i64** %13, align 8
  %142 = load i64*, i64** %15, align 8
  %143 = load i64, i64* %19, align 8
  %144 = load i64*, i64** %17, align 8
  %145 = call i64 @nt_challenge_response(i64* %141, i64* %142, i64 %143, i64* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %140, %131
  %148 = load i32, i32* @MSG_DEBUG, align 4
  %149 = call i32 (i32, i8*, ...) @wpa_printf(i32 %148, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %150 = load i8*, i8** @TRUE, align 8
  %151 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %152 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %151, i32 0, i32 0
  store i8* %150, i8** %152, align 8
  %153 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %154 = call i32 @wpabuf_free(%struct.wpabuf* %153)
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %174

155:                                              ; preds = %140, %137
  %156 = load %struct.eap_leap_data*, %struct.eap_leap_data** %10, align 8
  %157 = getelementptr inbounds %struct.eap_leap_data, %struct.eap_leap_data* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i64*, i64** %17, align 8
  %160 = load i64, i64* @LEAP_RESPONSE_LEN, align 8
  %161 = call i32 @os_memcpy(i32 %158, i64* %159, i64 %160)
  %162 = load i32, i32* @MSG_MSGDUMP, align 4
  %163 = load i64*, i64** %17, align 8
  %164 = load i64, i64* @LEAP_RESPONSE_LEN, align 8
  %165 = call i32 @wpa_hexdump(i32 %162, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i64* %163, i64 %164)
  %166 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %167 = load i64*, i64** %14, align 8
  %168 = load i64, i64* %18, align 8
  %169 = call i32 @wpabuf_put_data(%struct.wpabuf* %166, i64* %167, i64 %168)
  %170 = load i32, i32* @LEAP_WAIT_SUCCESS, align 4
  %171 = load %struct.eap_leap_data*, %struct.eap_leap_data** %10, align 8
  %172 = getelementptr inbounds %struct.eap_leap_data, %struct.eap_leap_data* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 4
  %173 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  store %struct.wpabuf* %173, %struct.wpabuf** %5, align 8
  br label %174

174:                                              ; preds = %155, %147, %116, %81, %57, %46, %35
  %175 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  ret %struct.wpabuf* %175
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64* @eap_get_config_identity(%struct.eap_sm*, i64*) #1

declare dso_local i64* @eap_get_config_password2(%struct.eap_sm*, i64*, i32*) #1

declare dso_local i64* @eap_hdr_validate(i32, i32, %struct.wpabuf*, i64*) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @os_memcpy(i32, i64*, i64) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i64*, i64) #1

declare dso_local %struct.wpabuf* @eap_msg_alloc(i32, i32, i64, i32, i32) #1

declare dso_local i32 @eap_get_id(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i64) #1

declare dso_local i64* @wpabuf_put(%struct.wpabuf*, i64) #1

declare dso_local i64 @challenge_response(i64*, i64*, i64*) #1

declare dso_local i64 @nt_challenge_response(i64*, i64*, i64, i64*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
