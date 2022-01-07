; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_ttls.c_eap_ttls_build_phase2_mschapv2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_ttls.c_eap_ttls_build_phase2_mschapv2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32 }
%struct.eap_ttls_data = type { i32, i32, i32, i64 }

@RADIUS_ATTR_MS_CHAP2_SUCCESS = common dso_local global i32 0, align 4
@RADIUS_VENDOR_ID_MICROSOFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"S=\00", align 1
@RADIUS_ATTR_MS_CHAP_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"Failed\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"EAP-TTLS/MSCHAPV2: Encrypting Phase 2 data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_ttls_data*)* @eap_ttls_build_phase2_mschapv2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_ttls_build_phase2_mschapv2(%struct.eap_sm* %0, %struct.eap_ttls_data* %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca %struct.eap_ttls_data*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.wpabuf, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store %struct.eap_ttls_data* %1, %struct.eap_ttls_data** %5, align 8
  %12 = call i32* @os_malloc(i32 100)
  store i32* %12, i32** %8, align 8
  store i32* %12, i32** %9, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %106

16:                                               ; preds = %2
  %17 = load i32*, i32** %8, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 100
  store i32* %18, i32** %10, align 8
  %19 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %5, align 8
  %20 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %75

23:                                               ; preds = %16
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* @RADIUS_ATTR_MS_CHAP2_SUCCESS, align 4
  %26 = load i32, i32* @RADIUS_VENDOR_ID_MICROSOFT, align 4
  %27 = call i32* @eap_ttls_avp_hdr(i32* %24, i32 %25, i32 %26, i32 1, i32 43)
  store i32* %27, i32** %9, align 8
  %28 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %5, align 8
  %29 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %9, align 8
  store i32 %30, i32* %31, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = bitcast i32* %33 to i8*
  %35 = load i32*, i32** %10, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = ptrtoint i32* %35 to i64
  %38 = ptrtoint i32* %36 to i64
  %39 = sub i64 %37, %38
  %40 = sdiv exact i64 %39, 4
  %41 = trunc i64 %40 to i32
  %42 = call i32 @os_snprintf(i8* %34, i32 %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %42, i32* %11, align 4
  %43 = load i32*, i32** %10, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = ptrtoint i32* %43 to i64
  %46 = ptrtoint i32* %44 to i64
  %47 = sub i64 %45, %46
  %48 = sdiv exact i64 %47, 4
  %49 = trunc i64 %48 to i32
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @os_snprintf_error(i32 %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %23
  %54 = load i32, i32* %11, align 4
  %55 = load i32*, i32** %9, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32* %57, i32** %9, align 8
  br label %58

58:                                               ; preds = %53, %23
  %59 = load i32*, i32** %9, align 8
  %60 = bitcast i32* %59 to i8*
  %61 = load i32*, i32** %10, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = ptrtoint i32* %61 to i64
  %64 = ptrtoint i32* %62 to i64
  %65 = sub i64 %63, %64
  %66 = sdiv exact i64 %65, 4
  %67 = trunc i64 %66 to i32
  %68 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %5, align 8
  %69 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @wpa_snprintf_hex_uppercase(i8* %60, i32 %67, i32 %70, i32 4)
  %72 = load i32*, i32** %9, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32* %74, i32** %9, align 8
  br label %87

75:                                               ; preds = %16
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* @RADIUS_ATTR_MS_CHAP_ERROR, align 4
  %78 = load i32, i32* @RADIUS_VENDOR_ID_MICROSOFT, align 4
  %79 = call i32* @eap_ttls_avp_hdr(i32* %76, i32 %77, i32 %78, i32 1, i32 6)
  store i32* %79, i32** %9, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = call i32 @os_memcpy(i32* %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %82 = load i32*, i32** %9, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 6
  store i32* %83, i32** %9, align 8
  %84 = load i32*, i32** %8, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = call i32 @AVP_PAD(i32* %84, i32* %85)
  br label %87

87:                                               ; preds = %75, %58
  %88 = load i32*, i32** %8, align 8
  %89 = load i32*, i32** %9, align 8
  %90 = load i32*, i32** %8, align 8
  %91 = ptrtoint i32* %89 to i64
  %92 = ptrtoint i32* %90 to i64
  %93 = sub i64 %91, %92
  %94 = sdiv exact i64 %93, 4
  %95 = trunc i64 %94 to i32
  %96 = call i32 @wpabuf_set(%struct.wpabuf* %7, i32* %88, i32 %95)
  %97 = load i32, i32* @MSG_DEBUG, align 4
  %98 = call i32 @wpa_hexdump_buf_key(i32 %97, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), %struct.wpabuf* %7)
  %99 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %100 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %5, align 8
  %101 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %100, i32 0, i32 0
  %102 = call %struct.wpabuf* @eap_server_tls_encrypt(%struct.eap_sm* %99, i32* %101, %struct.wpabuf* %7)
  store %struct.wpabuf* %102, %struct.wpabuf** %6, align 8
  %103 = load i32*, i32** %8, align 8
  %104 = call i32 @os_free(i32* %103)
  %105 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  store %struct.wpabuf* %105, %struct.wpabuf** %3, align 8
  br label %106

106:                                              ; preds = %87, %15
  %107 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  ret %struct.wpabuf* %107
}

declare dso_local i32* @os_malloc(i32) #1

declare dso_local i32* @eap_ttls_avp_hdr(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*) #1

declare dso_local i32 @os_snprintf_error(i32, i32) #1

declare dso_local i32 @wpa_snprintf_hex_uppercase(i8*, i32, i32, i32) #1

declare dso_local i32 @os_memcpy(i32*, i8*, i32) #1

declare dso_local i32 @AVP_PAD(i32*, i32*) #1

declare dso_local i32 @wpabuf_set(%struct.wpabuf*, i32*, i32) #1

declare dso_local i32 @wpa_hexdump_buf_key(i32, i8*, %struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @eap_server_tls_encrypt(%struct.eap_sm*, i32*, %struct.wpabuf*) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
