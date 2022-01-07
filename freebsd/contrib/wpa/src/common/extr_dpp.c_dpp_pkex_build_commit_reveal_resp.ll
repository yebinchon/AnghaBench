; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_pkex_build_commit_reveal_resp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_pkex_build_commit_reveal_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp_pkex = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.dpp_curve_params* }
%struct.dpp_curve_params = type { i32, i32 }
%struct.wpabuf = type opaque

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@DPP_PA_PKEX_COMMIT_REVEAL_RESP = common dso_local global i32 0, align 4
@DPP_ATTR_BOOTSTRAP_KEY = common dso_local global i32 0, align 4
@DPP_ATTR_R_AUTH_TAG = common dso_local global i32 0, align 4
@DPP_HDR_LEN = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"DDP: AES-SIV AD[0]\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"DDP: AES-SIV AD[1]\00", align 1
@DPP_ATTR_WRAPPED_DATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"DPP: AES-SIV cleartext\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"DPP: AES-SIV ciphertext\00", align 1
@DPP_STATUS_OK = common dso_local global i32 0, align 4
@DPP_TEST_AFTER_WRAPPED_DATA_PKEX_CR_RESP = common dso_local global i64 0, align 8
@DPP_TEST_INVALID_BOOTSTRAP_KEY_PKEX_CR_RESP = common dso_local global i64 0, align 8
@DPP_TEST_NO_BOOTSTRAP_KEY_PKEX_CR_RESP = common dso_local global i64 0, align 8
@DPP_TEST_NO_R_AUTH_TAG_PKEX_CR_RESP = common dso_local global i64 0, align 8
@DPP_TEST_NO_WRAPPED_DATA_PKEX_CR_RESP = common dso_local global i64 0, align 8
@DPP_TEST_R_AUTH_TAG_MISMATCH_PKEX_CR_RESP = common dso_local global i64 0, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@dpp_test = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.dpp_pkex*, %struct.wpabuf*, i32*)* @dpp_pkex_build_commit_reveal_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @dpp_pkex_build_commit_reveal_resp(%struct.dpp_pkex* %0, %struct.wpabuf* %1, i32* %2) #0 {
  %4 = alloca %struct.dpp_pkex*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.dpp_curve_params*, align 8
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca [2 x i32*], align 16
  %10 = alloca [2 x i64], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.wpabuf*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.dpp_pkex* %0, %struct.dpp_pkex** %4, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %5, align 8
  store i32* %2, i32** %6, align 8
  %16 = load %struct.dpp_pkex*, %struct.dpp_pkex** %4, align 8
  %17 = getelementptr inbounds %struct.dpp_pkex, %struct.dpp_pkex* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %19, align 8
  store %struct.dpp_curve_params* %20, %struct.dpp_curve_params** %7, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %8, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %13, align 8
  %21 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %7, align 8
  %22 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 2, %23
  %25 = add nsw i32 4, %24
  %26 = add nsw i32 %25, 4
  %27 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %7, align 8
  %28 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %26, %29
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %14, align 8
  %32 = load i64, i64* %14, align 8
  %33 = call %struct.wpabuf* @wpabuf_alloc(i64 %32)
  store %struct.wpabuf* %33, %struct.wpabuf** %13, align 8
  %34 = load i64, i64* %14, align 8
  %35 = add i64 4, %34
  %36 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %37 = sext i32 %36 to i64
  %38 = add i64 %35, %37
  store i64 %38, i64* %15, align 8
  %39 = load i32, i32* @DPP_PA_PKEX_COMMIT_REVEAL_RESP, align 4
  %40 = load i64, i64* %15, align 8
  %41 = call %struct.wpabuf* @dpp_alloc_msg(i32 %39, i64 %40)
  store %struct.wpabuf* %41, %struct.wpabuf** %8, align 8
  %42 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %43 = icmp ne %struct.wpabuf* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %3
  %45 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %46 = icmp ne %struct.wpabuf* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %44, %3
  br label %141

48:                                               ; preds = %44
  %49 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %50 = load i32, i32* @DPP_ATTR_BOOTSTRAP_KEY, align 4
  %51 = call i32 @wpabuf_put_le16(%struct.wpabuf* %49, i32 %50)
  %52 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %53 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %54 = call i32 @wpabuf_len(%struct.wpabuf* %53)
  %55 = call i32 @wpabuf_put_le16(%struct.wpabuf* %52, i32 %54)
  %56 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %57 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %58 = call i32 @wpabuf_put_buf(%struct.wpabuf* %56, %struct.wpabuf* %57)
  %59 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %60 = load i32, i32* @DPP_ATTR_R_AUTH_TAG, align 4
  %61 = call i32 @wpabuf_put_le16(%struct.wpabuf* %59, i32 %60)
  %62 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %63 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %7, align 8
  %64 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @wpabuf_put_le16(%struct.wpabuf* %62, i32 %65)
  %67 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %7, align 8
  %70 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @wpabuf_put_data(%struct.wpabuf* %67, i32* %68, i32 %71)
  %73 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %74 = call i32* @wpabuf_head_u8(%struct.wpabuf* %73)
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  %76 = getelementptr inbounds [2 x i32*], [2 x i32*]* %9, i64 0, i64 0
  store i32* %75, i32** %76, align 16
  %77 = load i64, i64* @DPP_HDR_LEN, align 8
  %78 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  store i64 %77, i64* %78, align 16
  store i32 1, i32* %11, align 4
  %79 = getelementptr inbounds [2 x i32*], [2 x i32*]* %9, i64 0, i64 1
  store i32* %11, i32** %79, align 8
  %80 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 1
  store i64 4, i64* %80, align 8
  %81 = load i32, i32* @MSG_DEBUG, align 4
  %82 = getelementptr inbounds [2 x i32*], [2 x i32*]* %9, i64 0, i64 0
  %83 = load i32*, i32** %82, align 16
  %84 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %85 = load i64, i64* %84, align 16
  %86 = trunc i64 %85 to i32
  %87 = call i32 @wpa_hexdump(i32 %81, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %83, i32 %86)
  %88 = load i32, i32* @MSG_DEBUG, align 4
  %89 = getelementptr inbounds [2 x i32*], [2 x i32*]* %9, i64 0, i64 1
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 1
  %92 = load i64, i64* %91, align 8
  %93 = trunc i64 %92 to i32
  %94 = call i32 @wpa_hexdump(i32 %88, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32* %90, i32 %93)
  %95 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %96 = load i32, i32* @DPP_ATTR_WRAPPED_DATA, align 4
  %97 = call i32 @wpabuf_put_le16(%struct.wpabuf* %95, i32 %96)
  %98 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %99 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %100 = call i32 @wpabuf_len(%struct.wpabuf* %99)
  %101 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %102 = add nsw i32 %100, %101
  %103 = call i32 @wpabuf_put_le16(%struct.wpabuf* %98, i32 %102)
  %104 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %105 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %106 = call i32 @wpabuf_len(%struct.wpabuf* %105)
  %107 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %108 = add nsw i32 %106, %107
  %109 = call i32* @wpabuf_put(%struct.wpabuf* %104, i32 %108)
  store i32* %109, i32** %12, align 8
  %110 = load i32, i32* @MSG_DEBUG, align 4
  %111 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %112 = call i32 @wpa_hexdump_buf(i32 %110, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), %struct.wpabuf* %111)
  %113 = load %struct.dpp_pkex*, %struct.dpp_pkex** %4, align 8
  %114 = getelementptr inbounds %struct.dpp_pkex, %struct.dpp_pkex* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %7, align 8
  %117 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %120 = call i32 @wpabuf_head(%struct.wpabuf* %119)
  %121 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %122 = call i32 @wpabuf_len(%struct.wpabuf* %121)
  %123 = getelementptr inbounds [2 x i32*], [2 x i32*]* %9, i64 0, i64 0
  %124 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %125 = load i32*, i32** %12, align 8
  %126 = call i64 @aes_siv_encrypt(i32 %115, i32 %118, i32 %120, i32 %122, i32 2, i32** %123, i64* %124, i32* %125)
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %48
  br label %141

129:                                              ; preds = %48
  %130 = load i32, i32* @MSG_DEBUG, align 4
  %131 = load i32*, i32** %12, align 8
  %132 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %133 = call i32 @wpabuf_len(%struct.wpabuf* %132)
  %134 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %135 = add nsw i32 %133, %134
  %136 = call i32 @wpa_hexdump(i32 %130, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32* %131, i32 %135)
  br label %137

137:                                              ; preds = %141, %129
  %138 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %139 = call i32 @wpabuf_free(%struct.wpabuf* %138)
  %140 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  ret %struct.wpabuf* %140

141:                                              ; preds = %128, %47
  %142 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %143 = call i32 @wpabuf_free(%struct.wpabuf* %142)
  store %struct.wpabuf* null, %struct.wpabuf** %8, align 8
  br label %137
}

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local %struct.wpabuf* @dpp_alloc_msg(i32, i64) #1

declare dso_local i32 @wpabuf_put_le16(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put_buf(%struct.wpabuf*, %struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32*, i32) #1

declare dso_local i32* @wpabuf_head_u8(%struct.wpabuf*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i32* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpa_hexdump_buf(i32, i8*, %struct.wpabuf*) #1

declare dso_local i64 @aes_siv_encrypt(i32, i32, i32, i32, i32, i32**, i64*, i32*) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
