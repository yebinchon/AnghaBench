; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_leap.c_eap_leap_process_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_leap.c_eap_leap_process_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i8* }
%struct.eap_method_ret = type { i32, i32, i32, i8* }
%struct.wpabuf = type { i32 }
%struct.eap_leap_data = type { i32, i32, i32 }

@LEAP_RESPONSE_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"EAP-LEAP: Processing EAP-Response\00", align 1
@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_LEAP = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"EAP-LEAP: Invalid EAP-Response frame\00", align 1
@TRUE = common dso_local global i8* null, align 8
@LEAP_VERSION = common dso_local global i64 0, align 8
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"EAP-LEAP: Unsupported LEAP version %d\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"EAP-LEAP: Invalid response (response_len=%d reqDataLen=%lu)\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"EAP-LEAP: Response from AP\00", align 1
@METHOD_DONE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [62 x i8] c"EAP-LEAP: AP sent an invalid response - authentication failed\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"EAP-LEAP: Expected response from AP\00", align 1
@DECISION_FAIL = common dso_local global i32 0, align 4
@DECISION_UNCOND_SUCC = common dso_local global i32 0, align 4
@LEAP_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, i8*, %struct.eap_method_ret*, %struct.wpabuf*)* @eap_leap_process_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_leap_process_response(%struct.eap_sm* %0, i8* %1, %struct.eap_method_ret* %2, %struct.wpabuf* %3) #0 {
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.eap_sm*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.eap_method_ret*, align 8
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca %struct.eap_leap_data*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca [16 x i64], align 16
  %15 = alloca [16 x i64], align 16
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %8, align 8
  store %struct.wpabuf* %3, %struct.wpabuf** %9, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = bitcast i8* %22 to %struct.eap_leap_data*
  store %struct.eap_leap_data* %23, %struct.eap_leap_data** %10, align 8
  %24 = load i32, i32* @LEAP_RESPONSE_LEN, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %16, align 8
  %27 = alloca i64, i64 %25, align 16
  store i64 %25, i64* %17, align 8
  %28 = load i32, i32* @MSG_DEBUG, align 4
  %29 = call i32 (i32, i8*, ...) @wpa_printf(i32 %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %31 = call i64* @eap_get_config_password2(%struct.eap_sm* %30, i64* %18, i32* %20)
  store i64* %31, i64** %12, align 8
  %32 = load i64*, i64** %12, align 8
  %33 = icmp eq i64* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %4
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  store i32 1, i32* %21, align 4
  br label %170

35:                                               ; preds = %4
  %36 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %37 = load i32, i32* @EAP_TYPE_LEAP, align 4
  %38 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %39 = call i64* @eap_hdr_validate(i32 %36, i32 %37, %struct.wpabuf* %38, i64* %19)
  store i64* %39, i64** %11, align 8
  %40 = load i64*, i64** %11, align 8
  %41 = icmp eq i64* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = load i64, i64* %19, align 8
  %44 = icmp ult i64 %43, 3
  br i1 %44, label %45, label %51

45:                                               ; preds = %42, %35
  %46 = load i32, i32* @MSG_INFO, align 4
  %47 = call i32 (i32, i8*, ...) @wpa_printf(i32 %46, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i8*, i8** @TRUE, align 8
  %49 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %50 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %49, i32 0, i32 3
  store i8* %48, i8** %50, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  store i32 1, i32* %21, align 4
  br label %170

51:                                               ; preds = %42
  %52 = load i64*, i64** %11, align 8
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @LEAP_VERSION, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = load i32, i32* @MSG_WARNING, align 4
  %58 = load i64*, i64** %11, align 8
  %59 = load i64, i64* %58, align 8
  %60 = call i32 (i32, i8*, ...) @wpa_printf(i32 %57, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %59)
  %61 = load i8*, i8** @TRUE, align 8
  %62 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %63 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %62, i32 0, i32 3
  store i8* %61, i8** %63, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  store i32 1, i32* %21, align 4
  br label %170

64:                                               ; preds = %51
  %65 = load i64*, i64** %11, align 8
  %66 = getelementptr inbounds i64, i64* %65, i32 1
  store i64* %66, i64** %11, align 8
  %67 = load i64*, i64** %11, align 8
  %68 = getelementptr inbounds i64, i64* %67, i32 1
  store i64* %68, i64** %11, align 8
  %69 = load i64*, i64** %11, align 8
  %70 = getelementptr inbounds i64, i64* %69, i32 1
  store i64* %70, i64** %11, align 8
  %71 = load i64, i64* %69, align 8
  store i64 %71, i64* %13, align 8
  %72 = load i64, i64* %13, align 8
  %73 = load i32, i32* @LEAP_RESPONSE_LEN, align 4
  %74 = sext i32 %73 to i64
  %75 = icmp ne i64 %72, %74
  br i1 %75, label %81, label %76

76:                                               ; preds = %64
  %77 = load i64, i64* %13, align 8
  %78 = load i64, i64* %19, align 8
  %79 = sub i64 %78, 3
  %80 = icmp ugt i64 %77, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %76, %64
  %82 = load i32, i32* @MSG_INFO, align 4
  %83 = load i64, i64* %13, align 8
  %84 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %85 = call i64 @wpabuf_len(%struct.wpabuf* %84)
  %86 = call i32 (i32, i8*, ...) @wpa_printf(i32 %82, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i64 %83, i64 %85)
  %87 = load i8*, i8** @TRUE, align 8
  %88 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %89 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %88, i32 0, i32 3
  store i8* %87, i8** %89, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  store i32 1, i32* %21, align 4
  br label %170

90:                                               ; preds = %76
  %91 = load i32, i32* @MSG_DEBUG, align 4
  %92 = load i64*, i64** %11, align 8
  %93 = load i32, i32* @LEAP_RESPONSE_LEN, align 4
  %94 = call i32 @wpa_hexdump(i32 %91, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64* %92, i32 %93)
  %95 = load %struct.eap_leap_data*, %struct.eap_leap_data** %10, align 8
  %96 = getelementptr inbounds %struct.eap_leap_data, %struct.eap_leap_data* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load i64*, i64** %11, align 8
  %99 = load i32, i32* @LEAP_RESPONSE_LEN, align 4
  %100 = call i32 @os_memcpy(i32 %97, i64* %98, i32 %99)
  %101 = load i32, i32* %20, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %90
  %104 = load i64*, i64** %12, align 8
  %105 = getelementptr inbounds [16 x i64], [16 x i64]* %15, i64 0, i64 0
  %106 = call i64 @hash_nt_password_hash(i64* %104, i64* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  %109 = load i8*, i8** @TRUE, align 8
  %110 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %111 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %110, i32 0, i32 3
  store i8* %109, i8** %111, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  store i32 1, i32* %21, align 4
  br label %170

112:                                              ; preds = %103
  br label %129

113:                                              ; preds = %90
  %114 = load i64*, i64** %12, align 8
  %115 = load i64, i64* %18, align 8
  %116 = getelementptr inbounds [16 x i64], [16 x i64]* %14, i64 0, i64 0
  %117 = call i64 @nt_password_hash(i64* %114, i64 %115, i64* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %113
  %120 = getelementptr inbounds [16 x i64], [16 x i64]* %14, i64 0, i64 0
  %121 = getelementptr inbounds [16 x i64], [16 x i64]* %15, i64 0, i64 0
  %122 = call i64 @hash_nt_password_hash(i64* %120, i64* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %119, %113
  %125 = load i8*, i8** @TRUE, align 8
  %126 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %127 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %126, i32 0, i32 3
  store i8* %125, i8** %127, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  store i32 1, i32* %21, align 4
  br label %170

128:                                              ; preds = %119
  br label %129

129:                                              ; preds = %128, %112
  %130 = load %struct.eap_leap_data*, %struct.eap_leap_data** %10, align 8
  %131 = getelementptr inbounds %struct.eap_leap_data, %struct.eap_leap_data* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds [16 x i64], [16 x i64]* %15, i64 0, i64 0
  %134 = call i64 @challenge_response(i32 %132, i64* %133, i64* %27)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %129
  %137 = load i8*, i8** @TRUE, align 8
  %138 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %139 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %138, i32 0, i32 3
  store i8* %137, i8** %139, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  store i32 1, i32* %21, align 4
  br label %170

140:                                              ; preds = %129
  %141 = load i32, i32* @METHOD_DONE, align 4
  %142 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %143 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 8
  %144 = load i32, i32* @FALSE, align 4
  %145 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %146 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  %147 = load i64*, i64** %11, align 8
  %148 = load i32, i32* @LEAP_RESPONSE_LEN, align 4
  %149 = call i64 @os_memcmp_const(i64* %147, i64* %27, i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %140
  %152 = load i32, i32* @MSG_WARNING, align 4
  %153 = call i32 (i32, i8*, ...) @wpa_printf(i32 %152, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0))
  %154 = load i32, i32* @MSG_DEBUG, align 4
  %155 = load i32, i32* @LEAP_RESPONSE_LEN, align 4
  %156 = call i32 @wpa_hexdump(i32 %154, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i64* %27, i32 %155)
  %157 = load i32, i32* @DECISION_FAIL, align 4
  %158 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %159 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  store i32 1, i32* %21, align 4
  br label %170

160:                                              ; preds = %140
  %161 = load i32, i32* @DECISION_UNCOND_SUCC, align 4
  %162 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %163 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  %164 = load i8*, i8** @TRUE, align 8
  %165 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %166 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %165, i32 0, i32 0
  store i8* %164, i8** %166, align 8
  %167 = load i32, i32* @LEAP_DONE, align 4
  %168 = load %struct.eap_leap_data*, %struct.eap_leap_data** %10, align 8
  %169 = getelementptr inbounds %struct.eap_leap_data, %struct.eap_leap_data* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 4
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  store i32 1, i32* %21, align 4
  br label %170

170:                                              ; preds = %160, %151, %136, %124, %108, %81, %56, %45, %34
  %171 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %171)
  %172 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  ret %struct.wpabuf* %172
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i64* @eap_get_config_password2(%struct.eap_sm*, i64*, i32*) #2

declare dso_local i64* @eap_hdr_validate(i32, i32, %struct.wpabuf*, i64*) #2

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #2

declare dso_local i32 @wpa_hexdump(i32, i8*, i64*, i32) #2

declare dso_local i32 @os_memcpy(i32, i64*, i32) #2

declare dso_local i64 @hash_nt_password_hash(i64*, i64*) #2

declare dso_local i64 @nt_password_hash(i64*, i64, i64*) #2

declare dso_local i64 @challenge_response(i32, i64*, i64*) #2

declare dso_local i64 @os_memcmp_const(i64*, i64*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
