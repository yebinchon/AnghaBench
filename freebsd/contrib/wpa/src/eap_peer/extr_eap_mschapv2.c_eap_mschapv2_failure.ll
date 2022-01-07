; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_mschapv2.c_eap_mschapv2_failure.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_mschapv2.c_eap_mschapv2_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32 }
%struct.eap_mschapv2_data = type { i64, i32 }
%struct.eap_method_ret = type { i8*, i32, i32, i8* }
%struct.eap_mschapv2_hdr = type { i32 }
%struct.eap_peer_config = type { i64, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"EAP-MSCHAPV2: Received failure\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"EAP-MSCHAPV2: Failure data\00", align 1
@FALSE = common dso_local global i8* null, align 8
@METHOD_DONE = common dso_local global i32 0, align 4
@DECISION_FAIL = common dso_local global i32 0, align 4
@ERROR_PASSWD_EXPIRED = common dso_local global i64 0, align 8
@ERROR_AUTHENTICATION_FAILURE = common dso_local global i64 0, align 8
@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_MSCHAPV2 = common dso_local global i32 0, align 4
@EAP_CODE_RESPONSE = common dso_local global i32 0, align 4
@MSCHAPV2_OP_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_mschapv2_data*, %struct.eap_method_ret*, %struct.eap_mschapv2_hdr*, i64, i32)* @eap_mschapv2_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_mschapv2_failure(%struct.eap_sm* %0, %struct.eap_mschapv2_data* %1, %struct.eap_method_ret* %2, %struct.eap_mschapv2_hdr* %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca %struct.eap_sm*, align 8
  %9 = alloca %struct.eap_mschapv2_data*, align 8
  %10 = alloca %struct.eap_method_ret*, align 8
  %11 = alloca %struct.eap_mschapv2_hdr*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.wpabuf*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.eap_peer_config*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %8, align 8
  store %struct.eap_mschapv2_data* %1, %struct.eap_mschapv2_data** %9, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %10, align 8
  store %struct.eap_mschapv2_hdr* %3, %struct.eap_mschapv2_hdr** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = load %struct.eap_mschapv2_hdr*, %struct.eap_mschapv2_hdr** %11, align 8
  %21 = getelementptr inbounds %struct.eap_mschapv2_hdr, %struct.eap_mschapv2_hdr* %20, i64 1
  %22 = bitcast %struct.eap_mschapv2_hdr* %21 to i32*
  store i32* %22, i32** %15, align 8
  %23 = load i64, i64* %12, align 8
  %24 = sub i64 %23, 4
  store i64 %24, i64* %17, align 8
  store i32 0, i32* %18, align 4
  %25 = load i32, i32* @MSG_DEBUG, align 4
  %26 = call i32 @wpa_printf(i32 %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @MSG_DEBUG, align 4
  %28 = load i32*, i32** %15, align 8
  %29 = load i64, i64* %17, align 8
  %30 = call i32 @wpa_hexdump_ascii(i32 %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32* %28, i64 %29)
  %31 = load i32*, i32** %15, align 8
  %32 = load i64, i64* %17, align 8
  %33 = call i8* @dup_binstr(i32* %31, i64 %32)
  store i8* %33, i8** %16, align 8
  %34 = load i8*, i8** %16, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %6
  %37 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %38 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %9, align 8
  %39 = load i8*, i8** %16, align 8
  %40 = call i32 @eap_mschapv2_failure_txt(%struct.eap_sm* %37, %struct.eap_mschapv2_data* %38, i8* %39)
  store i32 %40, i32* %18, align 4
  %41 = load i8*, i8** %16, align 8
  %42 = call i32 @os_free(i8* %41)
  br label %43

43:                                               ; preds = %36, %6
  %44 = load i8*, i8** @FALSE, align 8
  %45 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %46 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %45, i32 0, i32 3
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* @METHOD_DONE, align 4
  %48 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %49 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @DECISION_FAIL, align 4
  %51 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %52 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load i8*, i8** @FALSE, align 8
  %54 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %55 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  %56 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %9, align 8
  %57 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @ERROR_PASSWD_EXPIRED, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %93

61:                                               ; preds = %43
  %62 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %9, align 8
  %63 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 3
  br i1 %65, label %66, label %93

66:                                               ; preds = %61
  %67 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %68 = call %struct.eap_peer_config* @eap_get_config(%struct.eap_sm* %67)
  store %struct.eap_peer_config* %68, %struct.eap_peer_config** %19, align 8
  %69 = load %struct.eap_peer_config*, %struct.eap_peer_config** %19, align 8
  %70 = icmp ne %struct.eap_peer_config* %69, null
  br i1 %70, label %71, label %83

71:                                               ; preds = %66
  %72 = load %struct.eap_peer_config*, %struct.eap_peer_config** %19, align 8
  %73 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %78 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %9, align 8
  %79 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %80 = load %struct.eap_mschapv2_hdr*, %struct.eap_mschapv2_hdr** %11, align 8
  %81 = load i32, i32* %13, align 4
  %82 = call %struct.wpabuf* @eap_mschapv2_change_password(%struct.eap_sm* %77, %struct.eap_mschapv2_data* %78, %struct.eap_method_ret* %79, %struct.eap_mschapv2_hdr* %80, i32 %81)
  store %struct.wpabuf* %82, %struct.wpabuf** %7, align 8
  br label %118

83:                                               ; preds = %71, %66
  %84 = load %struct.eap_peer_config*, %struct.eap_peer_config** %19, align 8
  %85 = icmp ne %struct.eap_peer_config* %84, null
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = load %struct.eap_peer_config*, %struct.eap_peer_config** %19, align 8
  %88 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  store %struct.wpabuf* null, %struct.wpabuf** %7, align 8
  br label %118

92:                                               ; preds = %86, %83
  br label %104

93:                                               ; preds = %61, %43
  %94 = load i32, i32* %18, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %93
  %97 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %9, align 8
  %98 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @ERROR_AUTHENTICATION_FAILURE, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  store %struct.wpabuf* null, %struct.wpabuf** %7, align 8
  br label %118

103:                                              ; preds = %96, %93
  br label %104

104:                                              ; preds = %103, %92
  %105 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %106 = load i32, i32* @EAP_TYPE_MSCHAPV2, align 4
  %107 = load i32, i32* @EAP_CODE_RESPONSE, align 4
  %108 = load i32, i32* %13, align 4
  %109 = call %struct.wpabuf* @eap_msg_alloc(i32 %105, i32 %106, i32 1, i32 %107, i32 %108)
  store %struct.wpabuf* %109, %struct.wpabuf** %14, align 8
  %110 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %111 = icmp eq %struct.wpabuf* %110, null
  br i1 %111, label %112, label %113

112:                                              ; preds = %104
  store %struct.wpabuf* null, %struct.wpabuf** %7, align 8
  br label %118

113:                                              ; preds = %104
  %114 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %115 = load i32, i32* @MSCHAPV2_OP_FAILURE, align 4
  %116 = call i32 @wpabuf_put_u8(%struct.wpabuf* %114, i32 %115)
  %117 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  store %struct.wpabuf* %117, %struct.wpabuf** %7, align 8
  br label %118

118:                                              ; preds = %113, %112, %102, %91, %76
  %119 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  ret %struct.wpabuf* %119
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i64) #1

declare dso_local i8* @dup_binstr(i32*, i64) #1

declare dso_local i32 @eap_mschapv2_failure_txt(%struct.eap_sm*, %struct.eap_mschapv2_data*, i8*) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local %struct.eap_peer_config* @eap_get_config(%struct.eap_sm*) #1

declare dso_local %struct.wpabuf* @eap_mschapv2_change_password(%struct.eap_sm*, %struct.eap_mschapv2_data*, %struct.eap_method_ret*, %struct.eap_mschapv2_hdr*, i32) #1

declare dso_local %struct.wpabuf* @eap_msg_alloc(i32, i32, i32, i32, i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
