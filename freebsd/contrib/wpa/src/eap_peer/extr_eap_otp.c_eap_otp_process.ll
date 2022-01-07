; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_otp.c_eap_otp_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_otp.c_eap_otp_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_method_ret = type { i8*, i32, i32, i8* }
%struct.wpabuf = type { i32 }

@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_OTP = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"EAP-OTP: Request message\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"EAP-OTP: Password not configured\00", align 1
@FALSE = common dso_local global i8* null, align 8
@METHOD_DONE = common dso_local global i32 0, align 4
@DECISION_COND_SUCC = common dso_local global i32 0, align 4
@EAP_CODE_RESPONSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"EAP-OTP: Response\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"EAP-OTP: Forgetting used password\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, i8*, %struct.eap_method_ret*, %struct.wpabuf*)* @eap_otp_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_otp_process(%struct.eap_sm* %0, i8* %1, %struct.eap_method_ret* %2, %struct.wpabuf* %3) #0 {
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.eap_sm*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.eap_method_ret*, align 8
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca %struct.wpabuf*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %8, align 8
  store %struct.wpabuf* %3, %struct.wpabuf** %9, align 8
  %16 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %17 = load i32, i32* @EAP_TYPE_OTP, align 4
  %18 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %19 = call i32* @eap_hdr_validate(i32 %16, i32 %17, %struct.wpabuf* %18, i64* %14)
  store i32* %19, i32** %11, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load i8*, i8** @TRUE, align 8
  %24 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %25 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %24, i32 0, i32 3
  store i8* %23, i8** %25, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %94

26:                                               ; preds = %4
  %27 = load i32, i32* @MSG_MSGDUMP, align 4
  %28 = load i32*, i32** %11, align 8
  %29 = load i64, i64* %14, align 8
  %30 = call i32 @wpa_hexdump_ascii(i32 %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32* %28, i64 %29)
  %31 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %32 = call i32* @eap_get_config_otp(%struct.eap_sm* %31, i64* %13)
  store i32* %32, i32** %12, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store i32 1, i32* %15, align 4
  br label %39

36:                                               ; preds = %26
  %37 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %38 = call i32* @eap_get_config_password(%struct.eap_sm* %37, i64* %13)
  store i32* %38, i32** %12, align 8
  store i32 0, i32* %15, align 4
  br label %39

39:                                               ; preds = %36, %35
  %40 = load i32*, i32** %12, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  %43 = load i32, i32* @MSG_INFO, align 4
  %44 = call i32 @wpa_printf(i32 %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = bitcast i32* %46 to i8*
  %48 = load i64, i64* %14, align 8
  %49 = call i32 @eap_sm_request_otp(%struct.eap_sm* %45, i8* %47, i64 %48)
  %50 = load i8*, i8** @TRUE, align 8
  %51 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %52 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %94

53:                                               ; preds = %39
  %54 = load i8*, i8** @FALSE, align 8
  %55 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %56 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %55, i32 0, i32 3
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* @METHOD_DONE, align 4
  %58 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %59 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @DECISION_COND_SUCC, align 4
  %61 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %62 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  %63 = load i8*, i8** @FALSE, align 8
  %64 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %65 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  %66 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %67 = load i32, i32* @EAP_TYPE_OTP, align 4
  %68 = load i64, i64* %13, align 8
  %69 = load i32, i32* @EAP_CODE_RESPONSE, align 4
  %70 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %71 = call i32 @eap_get_id(%struct.wpabuf* %70)
  %72 = call %struct.wpabuf* @eap_msg_alloc(i32 %66, i32 %67, i64 %68, i32 %69, i32 %71)
  store %struct.wpabuf* %72, %struct.wpabuf** %10, align 8
  %73 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %74 = icmp eq %struct.wpabuf* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %53
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %94

76:                                               ; preds = %53
  %77 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %78 = load i32*, i32** %12, align 8
  %79 = load i64, i64* %13, align 8
  %80 = call i32 @wpabuf_put_data(%struct.wpabuf* %77, i32* %78, i64 %79)
  %81 = load i32, i32* @MSG_MSGDUMP, align 4
  %82 = load i32*, i32** %12, align 8
  %83 = load i64, i64* %13, align 8
  %84 = call i32 @wpa_hexdump_ascii_key(i32 %81, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32* %82, i64 %83)
  %85 = load i32, i32* %15, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %76
  %88 = load i32, i32* @MSG_DEBUG, align 4
  %89 = call i32 @wpa_printf(i32 %88, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %90 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %91 = call i32 @eap_clear_config_otp(%struct.eap_sm* %90)
  br label %92

92:                                               ; preds = %87, %76
  %93 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  store %struct.wpabuf* %93, %struct.wpabuf** %5, align 8
  br label %94

94:                                               ; preds = %92, %75, %42, %22
  %95 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  ret %struct.wpabuf* %95
}

declare dso_local i32* @eap_hdr_validate(i32, i32, %struct.wpabuf*, i64*) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i64) #1

declare dso_local i32* @eap_get_config_otp(%struct.eap_sm*, i64*) #1

declare dso_local i32* @eap_get_config_password(%struct.eap_sm*, i64*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @eap_sm_request_otp(%struct.eap_sm*, i8*, i64) #1

declare dso_local %struct.wpabuf* @eap_msg_alloc(i32, i32, i64, i32, i32) #1

declare dso_local i32 @eap_get_id(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32*, i64) #1

declare dso_local i32 @wpa_hexdump_ascii_key(i32, i8*, i32*, i64) #1

declare dso_local i32 @eap_clear_config_otp(%struct.eap_sm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
