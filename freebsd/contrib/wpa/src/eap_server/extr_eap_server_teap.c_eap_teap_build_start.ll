; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_teap.c_eap_teap_build_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_teap.c_eap_teap_build_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32 }
%struct.eap_teap_data = type { i32, i32, i32, i32 }

@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_TEAP = common dso_local global i32 0, align 4
@EAP_CODE_REQUEST = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"EAP-TEAP: Failed to allocate memory for request\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@EAP_TLS_FLAGS_START = common dso_local global i32 0, align 4
@EAP_TEAP_FLAGS_OUTER_TLV_LEN = common dso_local global i32 0, align 4
@TEAP_TLV_AUTHORITY_ID = common dso_local global i32 0, align 4
@PHASE1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_teap_data*, i32)* @eap_teap_build_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_teap_build_start(%struct.eap_sm* %0, %struct.eap_teap_data* %1, i32 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_teap_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_teap_data* %1, %struct.eap_teap_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.eap_teap_data*, %struct.eap_teap_data** %6, align 8
  %13 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = add i64 4, %15
  store i64 %16, i64* %9, align 8
  %17 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %18 = load i32, i32* @EAP_TYPE_TEAP, align 4
  %19 = load i64, i64* %9, align 8
  %20 = add i64 5, %19
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* @EAP_CODE_REQUEST, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call %struct.wpabuf* @eap_msg_alloc(i32 %17, i32 %18, i32 %21, i32 %22, i32 %23)
  store %struct.wpabuf* %24, %struct.wpabuf** %8, align 8
  %25 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %26 = icmp ne %struct.wpabuf* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @MSG_ERROR, align 4
  %29 = call i32 @wpa_printf(i32 %28, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.eap_teap_data*, %struct.eap_teap_data** %6, align 8
  %31 = load i32, i32* @FAILURE, align 4
  %32 = call i32 @eap_teap_state(%struct.eap_teap_data* %30, i32 %31)
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %87

33:                                               ; preds = %3
  %34 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %35 = load i32, i32* @EAP_TLS_FLAGS_START, align 4
  %36 = load i32, i32* @EAP_TEAP_FLAGS_OUTER_TLV_LEN, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.eap_teap_data*, %struct.eap_teap_data** %6, align 8
  %39 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %37, %40
  %42 = call i32 @wpabuf_put_u8(%struct.wpabuf* %34, i32 %41)
  %43 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @wpabuf_put_be32(%struct.wpabuf* %43, i64 %44)
  %46 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %47 = call i32* @wpabuf_put(%struct.wpabuf* %46, i32 0)
  store i32* %47, i32** %10, align 8
  %48 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %49 = load i32, i32* @TEAP_TLV_AUTHORITY_ID, align 4
  %50 = load %struct.eap_teap_data*, %struct.eap_teap_data** %6, align 8
  %51 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.eap_teap_data*, %struct.eap_teap_data** %6, align 8
  %54 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @eap_teap_put_tlv(%struct.wpabuf* %48, i32 %49, i32 %52, i32 %55)
  %57 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %58 = call i32* @wpabuf_put(%struct.wpabuf* %57, i32 0)
  store i32* %58, i32** %11, align 8
  %59 = load %struct.eap_teap_data*, %struct.eap_teap_data** %6, align 8
  %60 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @wpabuf_free(i32 %61)
  %63 = load i32*, i32** %10, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = ptrtoint i32* %64 to i64
  %67 = ptrtoint i32* %65 to i64
  %68 = sub i64 %66, %67
  %69 = sdiv exact i64 %68, 4
  %70 = trunc i64 %69 to i32
  %71 = call i32 @wpabuf_alloc_copy(i32* %63, i32 %70)
  %72 = load %struct.eap_teap_data*, %struct.eap_teap_data** %6, align 8
  %73 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  %74 = load %struct.eap_teap_data*, %struct.eap_teap_data** %6, align 8
  %75 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %33
  %79 = load %struct.eap_teap_data*, %struct.eap_teap_data** %6, align 8
  %80 = load i32, i32* @FAILURE, align 4
  %81 = call i32 @eap_teap_state(%struct.eap_teap_data* %79, i32 %80)
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %87

82:                                               ; preds = %33
  %83 = load %struct.eap_teap_data*, %struct.eap_teap_data** %6, align 8
  %84 = load i32, i32* @PHASE1, align 4
  %85 = call i32 @eap_teap_state(%struct.eap_teap_data* %83, i32 %84)
  %86 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  store %struct.wpabuf* %86, %struct.wpabuf** %4, align 8
  br label %87

87:                                               ; preds = %82, %78, %27
  %88 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %88
}

declare dso_local %struct.wpabuf* @eap_msg_alloc(i32, i32, i32, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @eap_teap_state(%struct.eap_teap_data*, i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_be32(%struct.wpabuf*, i64) #1

declare dso_local i32* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @eap_teap_put_tlv(%struct.wpabuf*, i32, i32, i32) #1

declare dso_local i32 @wpabuf_free(i32) #1

declare dso_local i32 @wpabuf_alloc_copy(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
