; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap.c_eap_teap_parse_decrypted.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap.c_eap_teap_parse_decrypted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_teap_tlv_parse = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"EAP-TEAP: TLV overflow\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"EAP-TEAP: Received Phase 2: TLV type %u (%s) length %u%s\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c" (mandatory)\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"EAP-TEAP: NAK unknown mandatory TLV type %u\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"EAP-TEAP: Ignore unknown optional TLV type %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpabuf*, %struct.eap_teap_tlv_parse*, %struct.wpabuf**)* @eap_teap_parse_decrypted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_teap_parse_decrypted(%struct.wpabuf* %0, %struct.eap_teap_tlv_parse* %1, %struct.wpabuf** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.eap_teap_tlv_parse*, align 8
  %7 = alloca %struct.wpabuf**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.wpabuf* %0, %struct.wpabuf** %5, align 8
  store %struct.eap_teap_tlv_parse* %1, %struct.eap_teap_tlv_parse** %6, align 8
  store %struct.wpabuf** %2, %struct.wpabuf*** %7, align 8
  %14 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %15 = call i32 @os_memset(%struct.eap_teap_tlv_parse* %14, i32 0, i32 4)
  %16 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %17 = call i32* @wpabuf_mhead(%struct.wpabuf* %16)
  store i32* %17, i32** %12, align 8
  %18 = load i32*, i32** %12, align 8
  %19 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %20 = call i32 @wpabuf_len(%struct.wpabuf* %19)
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  store i32* %22, i32** %13, align 8
  br label %23

23:                                               ; preds = %94, %3
  %24 = load i32*, i32** %13, align 8
  %25 = load i32*, i32** %12, align 8
  %26 = ptrtoint i32* %24 to i64
  %27 = ptrtoint i32* %25 to i64
  %28 = sub i64 %26, %27
  %29 = sdiv exact i64 %28, 4
  %30 = icmp sge i64 %29, 4
  br i1 %30, label %31, label %98

31:                                               ; preds = %23
  %32 = load i32*, i32** %12, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 128
  store i32 %35, i32* %9, align 4
  %36 = load i32*, i32** %12, align 8
  %37 = call i32 @WPA_GET_BE16(i32* %36)
  %38 = and i32 %37, 16383
  store i32 %38, i32* %8, align 4
  %39 = load i32*, i32** %12, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  store i32* %40, i32** %12, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = call i32 @WPA_GET_BE16(i32* %41)
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %11, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  store i32* %45, i32** %12, align 8
  %46 = load i64, i64* %11, align 8
  %47 = load i32*, i32** %13, align 8
  %48 = load i32*, i32** %12, align 8
  %49 = ptrtoint i32* %47 to i64
  %50 = ptrtoint i32* %48 to i64
  %51 = sub i64 %49, %50
  %52 = sdiv exact i64 %51, 4
  %53 = icmp ugt i64 %46, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %31
  %55 = load i32, i32* @MSG_INFO, align 4
  %56 = call i32 (i32, i8*, ...) @wpa_printf(i32 %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %99

57:                                               ; preds = %31
  %58 = load i32, i32* @MSG_DEBUG, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @eap_teap_tlv_type_str(i32 %60)
  %62 = load i64, i64* %11, align 8
  %63 = trunc i64 %62 to i32
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %68 = call i32 (i32, i8*, ...) @wpa_printf(i32 %58, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %61, i32 %63, i8* %67)
  %69 = load %struct.eap_teap_tlv_parse*, %struct.eap_teap_tlv_parse** %6, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i32*, i32** %12, align 8
  %72 = load i64, i64* %11, align 8
  %73 = call i32 @eap_teap_parse_tlv(%struct.eap_teap_tlv_parse* %69, i32 %70, i32* %71, i64 %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp eq i32 %74, -2
  br i1 %75, label %76, label %77

76:                                               ; preds = %57
  br label %98

77:                                               ; preds = %57
  %78 = load i32, i32* %10, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %77
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  %84 = load i32, i32* @MSG_DEBUG, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 (i32, i8*, ...) @wpa_printf(i32 %84, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %8, align 4
  %88 = call %struct.wpabuf* @eap_teap_tlv_nak(i32 0, i32 %87)
  %89 = load %struct.wpabuf**, %struct.wpabuf*** %7, align 8
  store %struct.wpabuf* %88, %struct.wpabuf** %89, align 8
  br label %98

90:                                               ; preds = %80
  %91 = load i32, i32* @MSG_DEBUG, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 (i32, i8*, ...) @wpa_printf(i32 %91, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %90, %77
  %95 = load i64, i64* %11, align 8
  %96 = load i32*, i32** %12, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 %95
  store i32* %97, i32** %12, align 8
  br label %23

98:                                               ; preds = %83, %76, %23
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %98, %54
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @os_memset(%struct.eap_teap_tlv_parse*, i32, i32) #1

declare dso_local i32* @wpabuf_mhead(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @WPA_GET_BE16(i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @eap_teap_tlv_type_str(i32) #1

declare dso_local i32 @eap_teap_parse_tlv(%struct.eap_teap_tlv_parse*, i32, i32*, i64) #1

declare dso_local %struct.wpabuf* @eap_teap_tlv_nak(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
