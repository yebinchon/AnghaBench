; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_mschapv2.c_eap_mschapv2_challenge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_mschapv2.c_eap_mschapv2_challenge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32 }
%struct.eap_mschapv2_data = type { i32*, i64 }
%struct.eap_method_ret = type { i8*, i32, i32, i8* }
%struct.eap_mschapv2_hdr = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"EAP-MSCHAPV2: Received challenge\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"EAP-MSCHAPV2: Too short challenge data (len %lu)\00", align 1
@TRUE = common dso_local global i8* null, align 8
@MSCHAPV2_CHAL_LEN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"EAP-MSCHAPV2: Invalid challenge length %lu\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"EAP-MSCHAPV2: Too short challenge packet: len=%lu challenge_len=%lu\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"EAP-MSCHAPV2: Using challenge from the failure message\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"EAP-MSCHAPV2: Authentication Servername\00", align 1
@FALSE = common dso_local global i8* null, align 8
@METHOD_MAY_CONT = common dso_local global i32 0, align 4
@DECISION_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_mschapv2_data*, %struct.eap_method_ret*, %struct.eap_mschapv2_hdr*, i64, i32)* @eap_mschapv2_challenge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_mschapv2_challenge(%struct.eap_sm* %0, %struct.eap_mschapv2_data* %1, %struct.eap_method_ret* %2, %struct.eap_mschapv2_hdr* %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca %struct.eap_sm*, align 8
  %9 = alloca %struct.eap_mschapv2_data*, align 8
  %10 = alloca %struct.eap_method_ret*, align 8
  %11 = alloca %struct.eap_mschapv2_hdr*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %8, align 8
  store %struct.eap_mschapv2_data* %1, %struct.eap_mschapv2_data** %9, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %10, align 8
  store %struct.eap_mschapv2_hdr* %3, %struct.eap_mschapv2_hdr** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %19 = call i32* @eap_get_config_identity(%struct.eap_sm* %18, i64* %14)
  %20 = icmp eq i32* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %6
  %22 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %23 = call i32* @eap_get_config_password(%struct.eap_sm* %22, i64* %14)
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %6
  store %struct.wpabuf* null, %struct.wpabuf** %7, align 8
  br label %115

26:                                               ; preds = %21
  %27 = load i32, i32* @MSG_DEBUG, align 4
  %28 = call i32 (i32, i8*, ...) @wpa_printf(i32 %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %29 = load i64, i64* %12, align 8
  %30 = icmp ult i64 %29, 5
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load i32, i32* @MSG_INFO, align 4
  %33 = load i64, i64* %12, align 8
  %34 = call i32 (i32, i8*, ...) @wpa_printf(i32 %32, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %33)
  %35 = load i8*, i8** @TRUE, align 8
  %36 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %37 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %7, align 8
  br label %115

38:                                               ; preds = %26
  %39 = load %struct.eap_mschapv2_hdr*, %struct.eap_mschapv2_hdr** %11, align 8
  %40 = getelementptr inbounds %struct.eap_mschapv2_hdr, %struct.eap_mschapv2_hdr* %39, i64 1
  %41 = bitcast %struct.eap_mschapv2_hdr* %40 to i32*
  store i32* %41, i32** %16, align 8
  %42 = load i32*, i32** %16, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %16, align 8
  %44 = load i32, i32* %42, align 4
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %15, align 8
  %46 = load i64, i64* %12, align 8
  %47 = sub i64 %46, 4
  %48 = sub i64 %47, 1
  store i64 %48, i64* %14, align 8
  %49 = load i64, i64* %15, align 8
  %50 = load i64, i64* @MSCHAPV2_CHAL_LEN, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %38
  %53 = load i32, i32* @MSG_INFO, align 4
  %54 = load i64, i64* %15, align 8
  %55 = call i32 (i32, i8*, ...) @wpa_printf(i32 %53, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i64 %54)
  %56 = load i8*, i8** @TRUE, align 8
  %57 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %58 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %57, i32 0, i32 3
  store i8* %56, i8** %58, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %7, align 8
  br label %115

59:                                               ; preds = %38
  %60 = load i64, i64* %14, align 8
  %61 = load i64, i64* %15, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load i32, i32* @MSG_INFO, align 4
  %65 = load i64, i64* %14, align 8
  %66 = load i64, i64* %15, align 8
  %67 = call i32 (i32, i8*, ...) @wpa_printf(i32 %64, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i64 %65, i64 %66)
  %68 = load i8*, i8** @TRUE, align 8
  %69 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %70 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %69, i32 0, i32 3
  store i8* %68, i8** %70, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %7, align 8
  br label %115

71:                                               ; preds = %59
  %72 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %9, align 8
  %73 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load i32, i32* @MSG_DEBUG, align 4
  %78 = call i32 (i32, i8*, ...) @wpa_printf(i32 %77, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  %79 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %9, align 8
  %80 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  store i32* %81, i32** %17, align 8
  br label %84

82:                                               ; preds = %71
  %83 = load i32*, i32** %16, align 8
  store i32* %83, i32** %17, align 8
  br label %84

84:                                               ; preds = %82, %76
  %85 = load i64, i64* %15, align 8
  %86 = load i32*, i32** %16, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 %85
  store i32* %87, i32** %16, align 8
  %88 = load i64, i64* %15, align 8
  %89 = load i64, i64* %14, align 8
  %90 = sub i64 %89, %88
  store i64 %90, i64* %14, align 8
  %91 = load i32, i32* @MSG_DEBUG, align 4
  %92 = load i32*, i32** %16, align 8
  %93 = load i64, i64* %14, align 8
  %94 = call i32 @wpa_hexdump_ascii(i32 %91, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32* %92, i64 %93)
  %95 = load i8*, i8** @FALSE, align 8
  %96 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %97 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %96, i32 0, i32 3
  store i8* %95, i8** %97, align 8
  %98 = load i32, i32* @METHOD_MAY_CONT, align 4
  %99 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %100 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* @DECISION_FAIL, align 4
  %102 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %103 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 8
  %104 = load i8*, i8** @TRUE, align 8
  %105 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %106 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %105, i32 0, i32 0
  store i8* %104, i8** %106, align 8
  %107 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %108 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %9, align 8
  %109 = load i32, i32* %13, align 4
  %110 = load %struct.eap_mschapv2_hdr*, %struct.eap_mschapv2_hdr** %11, align 8
  %111 = getelementptr inbounds %struct.eap_mschapv2_hdr, %struct.eap_mschapv2_hdr* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %17, align 8
  %114 = call %struct.wpabuf* @eap_mschapv2_challenge_reply(%struct.eap_sm* %107, %struct.eap_mschapv2_data* %108, i32 %109, i32 %112, i32* %113)
  store %struct.wpabuf* %114, %struct.wpabuf** %7, align 8
  br label %115

115:                                              ; preds = %84, %63, %52, %31, %25
  %116 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  ret %struct.wpabuf* %116
}

declare dso_local i32* @eap_get_config_identity(%struct.eap_sm*, i64*) #1

declare dso_local i32* @eap_get_config_password(%struct.eap_sm*, i64*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i64) #1

declare dso_local %struct.wpabuf* @eap_mschapv2_challenge_reply(%struct.eap_sm*, %struct.eap_mschapv2_data*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
