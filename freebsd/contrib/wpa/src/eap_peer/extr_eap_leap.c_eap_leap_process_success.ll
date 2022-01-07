; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_leap.c_eap_leap_process_success.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_leap.c_eap_leap_process_success.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_method_ret = type { i8* }
%struct.wpabuf = type { i32 }
%struct.eap_leap_data = type { i64, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"EAP-LEAP: Processing EAP-Success\00", align 1
@LEAP_WAIT_SUCCESS = common dso_local global i64 0, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"EAP-LEAP: EAP-Success received in unexpected state (%d) - ignored\00", align 1
@TRUE = common dso_local global i8* null, align 8
@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_LEAP = common dso_local global i32 0, align 4
@LEAP_CHALLENGE_LEN = common dso_local global i64 0, align 8
@EAP_CODE_REQUEST = common dso_local global i32 0, align 4
@LEAP_VERSION = common dso_local global i64 0, align 8
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"EAP-LEAP: Failed to read random data for challenge\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"EAP-LEAP: Challenge to AP/AS\00", align 1
@LEAP_WAIT_RESPONSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, i8*, %struct.eap_method_ret*, %struct.wpabuf*)* @eap_leap_process_success to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_leap_process_success(%struct.eap_sm* %0, i8* %1, %struct.eap_method_ret* %2, %struct.wpabuf* %3) #0 {
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.eap_sm*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.eap_method_ret*, align 8
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca %struct.eap_leap_data*, align 8
  %11 = alloca %struct.wpabuf*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %8, align 8
  store %struct.wpabuf* %3, %struct.wpabuf** %9, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.eap_leap_data*
  store %struct.eap_leap_data* %16, %struct.eap_leap_data** %10, align 8
  %17 = load i32, i32* @MSG_DEBUG, align 4
  %18 = call i32 (i32, i8*, ...) @wpa_printf(i32 %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %20 = call i32* @eap_get_config_identity(%struct.eap_sm* %19, i64* %14)
  store i32* %20, i32** %13, align 8
  %21 = load i32*, i32** %13, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %96

24:                                               ; preds = %4
  %25 = load %struct.eap_leap_data*, %struct.eap_leap_data** %10, align 8
  %26 = getelementptr inbounds %struct.eap_leap_data, %struct.eap_leap_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @LEAP_WAIT_SUCCESS, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %24
  %31 = load i32, i32* @MSG_INFO, align 4
  %32 = load %struct.eap_leap_data*, %struct.eap_leap_data** %10, align 8
  %33 = getelementptr inbounds %struct.eap_leap_data, %struct.eap_leap_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 (i32, i8*, ...) @wpa_printf(i32 %31, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  %36 = load i8*, i8** @TRUE, align 8
  %37 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %38 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %96

39:                                               ; preds = %24
  %40 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %41 = load i32, i32* @EAP_TYPE_LEAP, align 4
  %42 = load i64, i64* @LEAP_CHALLENGE_LEN, align 8
  %43 = add nsw i64 3, %42
  %44 = load i64, i64* %14, align 8
  %45 = add i64 %43, %44
  %46 = load i32, i32* @EAP_CODE_REQUEST, align 4
  %47 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %48 = call i32 @eap_get_id(%struct.wpabuf* %47)
  %49 = call %struct.wpabuf* @eap_msg_alloc(i32 %40, i32 %41, i64 %45, i32 %46, i32 %48)
  store %struct.wpabuf* %49, %struct.wpabuf** %11, align 8
  %50 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %51 = icmp eq %struct.wpabuf* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %39
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %96

53:                                               ; preds = %39
  %54 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %55 = load i64, i64* @LEAP_VERSION, align 8
  %56 = call i32 @wpabuf_put_u8(%struct.wpabuf* %54, i64 %55)
  %57 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %58 = call i32 @wpabuf_put_u8(%struct.wpabuf* %57, i64 0)
  %59 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %60 = load i64, i64* @LEAP_CHALLENGE_LEN, align 8
  %61 = call i32 @wpabuf_put_u8(%struct.wpabuf* %59, i64 %60)
  %62 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %63 = load i64, i64* @LEAP_CHALLENGE_LEN, align 8
  %64 = call i32* @wpabuf_put(%struct.wpabuf* %62, i64 %63)
  store i32* %64, i32** %12, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = load i64, i64* @LEAP_CHALLENGE_LEN, align 8
  %67 = call i64 @random_get_bytes(i32* %65, i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %53
  %70 = load i32, i32* @MSG_WARNING, align 4
  %71 = call i32 (i32, i8*, ...) @wpa_printf(i32 %70, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %72 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %73 = call i32 @wpabuf_free(%struct.wpabuf* %72)
  %74 = load i8*, i8** @TRUE, align 8
  %75 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %76 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %96

77:                                               ; preds = %53
  %78 = load %struct.eap_leap_data*, %struct.eap_leap_data** %10, align 8
  %79 = getelementptr inbounds %struct.eap_leap_data, %struct.eap_leap_data* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32*, i32** %12, align 8
  %82 = load i64, i64* @LEAP_CHALLENGE_LEN, align 8
  %83 = call i32 @os_memcpy(i32 %80, i32* %81, i64 %82)
  %84 = load i32, i32* @MSG_MSGDUMP, align 4
  %85 = load i32*, i32** %12, align 8
  %86 = load i64, i64* @LEAP_CHALLENGE_LEN, align 8
  %87 = call i32 @wpa_hexdump(i32 %84, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32* %85, i64 %86)
  %88 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %89 = load i32*, i32** %13, align 8
  %90 = load i64, i64* %14, align 8
  %91 = call i32 @wpabuf_put_data(%struct.wpabuf* %88, i32* %89, i64 %90)
  %92 = load i64, i64* @LEAP_WAIT_RESPONSE, align 8
  %93 = load %struct.eap_leap_data*, %struct.eap_leap_data** %10, align 8
  %94 = getelementptr inbounds %struct.eap_leap_data, %struct.eap_leap_data* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  store %struct.wpabuf* %95, %struct.wpabuf** %5, align 8
  br label %96

96:                                               ; preds = %77, %69, %52, %30, %23
  %97 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  ret %struct.wpabuf* %97
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32* @eap_get_config_identity(%struct.eap_sm*, i64*) #1

declare dso_local %struct.wpabuf* @eap_msg_alloc(i32, i32, i64, i32, i32) #1

declare dso_local i32 @eap_get_id(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i64) #1

declare dso_local i32* @wpabuf_put(%struct.wpabuf*, i64) #1

declare dso_local i64 @random_get_bytes(i32*, i64) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @os_memcpy(i32, i32*, i64) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
