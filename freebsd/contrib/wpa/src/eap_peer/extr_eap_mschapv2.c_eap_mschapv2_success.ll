; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_mschapv2.c_eap_mschapv2_success.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_mschapv2.c_eap_mschapv2_success.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32 }
%struct.eap_mschapv2_data = type { i32, i64, i32, i32 }
%struct.eap_method_ret = type { i32, i32, i8*, i32 }
%struct.eap_mschapv2_hdr = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"EAP-MSCHAPV2: Received success\00", align 1
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"EAP-MSCHAPV2: Invalid authenticator response in success request\00", align 1
@METHOD_DONE = common dso_local global i8* null, align 8
@DECISION_FAIL = common dso_local global i32 0, align 4
@MSCHAPV2_AUTH_RESPONSE_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"EAP-MSCHAPV2: Success message\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"EAP-MSCHAPV2: Authentication succeeded\00", align 1
@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_MSCHAPV2 = common dso_local global i32 0, align 4
@EAP_CODE_RESPONSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [61 x i8] c"EAP-MSCHAPV2: Failed to allocate buffer for success response\00", align 1
@TRUE = common dso_local global i32 0, align 4
@MSCHAPV2_OP_SUCCESS = common dso_local global i32 0, align 4
@DECISION_UNCOND_SUCC = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ERROR_PASSWD_EXPIRED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_mschapv2_data*, %struct.eap_method_ret*, %struct.eap_mschapv2_hdr*, i64, i8)* @eap_mschapv2_success to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_mschapv2_success(%struct.eap_sm* %0, %struct.eap_mschapv2_data* %1, %struct.eap_method_ret* %2, %struct.eap_mschapv2_hdr* %3, i64 %4, i8 signext %5) #0 {
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca %struct.eap_sm*, align 8
  %9 = alloca %struct.eap_mschapv2_data*, align 8
  %10 = alloca %struct.eap_method_ret*, align 8
  %11 = alloca %struct.eap_mschapv2_hdr*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8, align 1
  %14 = alloca %struct.wpabuf*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %8, align 8
  store %struct.eap_mschapv2_data* %1, %struct.eap_mschapv2_data** %9, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %10, align 8
  store %struct.eap_mschapv2_hdr* %3, %struct.eap_mschapv2_hdr** %11, align 8
  store i64 %4, i64* %12, align 8
  store i8 %5, i8* %13, align 1
  %17 = load i32, i32* @MSG_DEBUG, align 4
  %18 = call i32 @wpa_printf(i32 %17, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %19 = load i64, i64* %12, align 8
  %20 = sub i64 %19, 4
  store i64 %20, i64* %16, align 8
  %21 = load %struct.eap_mschapv2_hdr*, %struct.eap_mschapv2_hdr** %11, align 8
  %22 = getelementptr inbounds %struct.eap_mschapv2_hdr, %struct.eap_mschapv2_hdr* %21, i64 1
  %23 = bitcast %struct.eap_mschapv2_hdr* %22 to i8*
  store i8* %23, i8** %15, align 8
  %24 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %9, align 8
  %25 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %6
  %29 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %9, align 8
  %30 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i8*, i8** %15, align 8
  %33 = load i64, i64* %16, align 8
  %34 = call i64 @mschapv2_verify_auth_response(i32 %31, i8* %32, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %28, %6
  %37 = load i32, i32* @MSG_WARNING, align 4
  %38 = call i32 @wpa_printf(i32 %37, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i8*, i8** @METHOD_DONE, align 8
  %40 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %41 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* @DECISION_FAIL, align 4
  %43 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %44 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  store %struct.wpabuf* null, %struct.wpabuf** %7, align 8
  br label %119

45:                                               ; preds = %28
  %46 = load i32, i32* @MSCHAPV2_AUTH_RESPONSE_LEN, align 4
  %47 = mul nsw i32 2, %46
  %48 = add nsw i32 2, %47
  %49 = load i8*, i8** %15, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8* %51, i8** %15, align 8
  %52 = load i32, i32* @MSCHAPV2_AUTH_RESPONSE_LEN, align 4
  %53 = mul nsw i32 2, %52
  %54 = add nsw i32 2, %53
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %16, align 8
  %57 = sub i64 %56, %55
  store i64 %57, i64* %16, align 8
  br label %58

58:                                               ; preds = %68, %45
  %59 = load i64, i64* %16, align 8
  %60 = icmp ugt i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i8*, i8** %15, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 32
  br label %66

66:                                               ; preds = %61, %58
  %67 = phi i1 [ false, %58 ], [ %65, %61 ]
  br i1 %67, label %68, label %73

68:                                               ; preds = %66
  %69 = load i8*, i8** %15, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %15, align 8
  %71 = load i64, i64* %16, align 8
  %72 = add i64 %71, -1
  store i64 %72, i64* %16, align 8
  br label %58

73:                                               ; preds = %66
  %74 = load i32, i32* @MSG_DEBUG, align 4
  %75 = load i8*, i8** %15, align 8
  %76 = load i64, i64* %16, align 8
  %77 = call i32 @wpa_hexdump_ascii(i32 %74, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %75, i64 %76)
  %78 = load i32, i32* @MSG_INFO, align 4
  %79 = call i32 @wpa_printf(i32 %78, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %80 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %81 = load i32, i32* @EAP_TYPE_MSCHAPV2, align 4
  %82 = load i32, i32* @EAP_CODE_RESPONSE, align 4
  %83 = load i8, i8* %13, align 1
  %84 = call %struct.wpabuf* @eap_msg_alloc(i32 %80, i32 %81, i32 1, i32 %82, i8 signext %83)
  store %struct.wpabuf* %84, %struct.wpabuf** %14, align 8
  %85 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %86 = icmp eq %struct.wpabuf* %85, null
  br i1 %86, label %87, label %93

87:                                               ; preds = %73
  %88 = load i32, i32* @MSG_DEBUG, align 4
  %89 = call i32 @wpa_printf(i32 %88, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0))
  %90 = load i32, i32* @TRUE, align 4
  %91 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %92 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %7, align 8
  br label %119

93:                                               ; preds = %73
  %94 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %95 = load i32, i32* @MSCHAPV2_OP_SUCCESS, align 4
  %96 = call i32 @wpabuf_put_u8(%struct.wpabuf* %94, i32 %95)
  %97 = load i8*, i8** @METHOD_DONE, align 8
  %98 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %99 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %98, i32 0, i32 2
  store i8* %97, i8** %99, align 8
  %100 = load i32, i32* @DECISION_UNCOND_SUCC, align 4
  %101 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %102 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* @FALSE, align 4
  %104 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %105 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %9, align 8
  %107 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %106, i32 0, i32 0
  store i32 1, i32* %107, align 8
  %108 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %9, align 8
  %109 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @ERROR_PASSWD_EXPIRED, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %93
  %114 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %115 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %9, align 8
  %116 = call i32 @eap_mschapv2_password_changed(%struct.eap_sm* %114, %struct.eap_mschapv2_data* %115)
  br label %117

117:                                              ; preds = %113, %93
  %118 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  store %struct.wpabuf* %118, %struct.wpabuf** %7, align 8
  br label %119

119:                                              ; preds = %117, %87, %36
  %120 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  ret %struct.wpabuf* %120
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @mschapv2_verify_auth_response(i32, i8*, i64) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i8*, i64) #1

declare dso_local %struct.wpabuf* @eap_msg_alloc(i32, i32, i32, i32, i8 signext) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @eap_mschapv2_password_changed(%struct.eap_sm*, %struct.eap_mschapv2_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
