; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_build_conf_req_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_build_conf_req_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.dpp_authentication = type { i8*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"DPP: Build configuration request\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"DPP: Failed to generate E-nonce\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"DPP: E-nonce\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"DPP: configAttr JSON\00", align 1
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@DPP_ATTR_ENROLLEE_NONCE = common dso_local global i32 0, align 4
@DPP_ATTR_CONFIG_ATTR_OBJ = common dso_local global i32 0, align 4
@DPP_ATTR_WRAPPED_DATA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"DPP: AES-SIV cleartext\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"DPP: AES-SIV ciphertext\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"DPP: Configuration Request frame attributes\00", align 1
@DPP_STATUS_OK = common dso_local global i32 0, align 4
@DPP_TEST_AFTER_WRAPPED_DATA_CONF_REQ = common dso_local global i64 0, align 8
@DPP_TEST_INVALID_E_NONCE_CONF_REQ = common dso_local global i64 0, align 8
@DPP_TEST_NO_CONFIG_ATTR_OBJ_CONF_REQ = common dso_local global i64 0, align 8
@DPP_TEST_NO_E_NONCE_CONF_REQ = common dso_local global i64 0, align 8
@DPP_TEST_NO_WRAPPED_DATA_CONF_REQ = common dso_local global i64 0, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@dpp_test = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.dpp_authentication*, i8*)* @dpp_build_conf_req_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @dpp_build_conf_req_attr(%struct.dpp_authentication* %0, i8* %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca %struct.dpp_authentication*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca %struct.wpabuf*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.dpp_authentication* %0, %struct.dpp_authentication** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %9, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %10, align 8
  %13 = load i32, i32* @MSG_DEBUG, align 4
  %14 = call i32 @wpa_printf(i32 %13, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %16 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %6, align 8
  %20 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %21 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i64 @random_get_bytes(i8* %22, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @MSG_ERROR, align 4
  %28 = call i32 @wpa_printf(i32 %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %136

29:                                               ; preds = %2
  %30 = load i32, i32* @MSG_DEBUG, align 4
  %31 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %32 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 @wpa_hexdump(i32 %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %33, i32 %35)
  %37 = load i8*, i8** %5, align 8
  %38 = call i64 @os_strlen(i8* %37)
  store i64 %38, i64* %7, align 8
  %39 = load i32, i32* @MSG_DEBUG, align 4
  %40 = load i8*, i8** %5, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @wpa_hexdump_ascii(i32 %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %40, i64 %41)
  %43 = load i64, i64* %6, align 8
  %44 = add i64 4, %43
  %45 = add i64 %44, 4
  %46 = load i64, i64* %7, align 8
  %47 = add i64 %45, %46
  store i64 %47, i64* %8, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call %struct.wpabuf* @wpabuf_alloc(i64 %48)
  store %struct.wpabuf* %49, %struct.wpabuf** %9, align 8
  %50 = load i64, i64* %8, align 8
  %51 = add i64 4, %50
  %52 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %53 = sext i32 %52 to i64
  %54 = add i64 %51, %53
  store i64 %54, i64* %12, align 8
  %55 = load i64, i64* %12, align 8
  %56 = call %struct.wpabuf* @wpabuf_alloc(i64 %55)
  store %struct.wpabuf* %56, %struct.wpabuf** %10, align 8
  %57 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %58 = icmp ne %struct.wpabuf* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %29
  %60 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %61 = icmp ne %struct.wpabuf* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %59, %29
  br label %136

63:                                               ; preds = %59
  %64 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %65 = load i32, i32* @DPP_ATTR_ENROLLEE_NONCE, align 4
  %66 = call i32 @wpabuf_put_le16(%struct.wpabuf* %64, i32 %65)
  %67 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %68 = load i64, i64* %6, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i32 @wpabuf_put_le16(%struct.wpabuf* %67, i32 %69)
  %71 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %72 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %73 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load i64, i64* %6, align 8
  %76 = call i32 @wpabuf_put_data(%struct.wpabuf* %71, i8* %74, i64 %75)
  %77 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %78 = load i32, i32* @DPP_ATTR_CONFIG_ATTR_OBJ, align 4
  %79 = call i32 @wpabuf_put_le16(%struct.wpabuf* %77, i32 %78)
  %80 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %81 = load i64, i64* %7, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i32 @wpabuf_put_le16(%struct.wpabuf* %80, i32 %82)
  %84 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %85 = load i8*, i8** %5, align 8
  %86 = load i64, i64* %7, align 8
  %87 = call i32 @wpabuf_put_data(%struct.wpabuf* %84, i8* %85, i64 %86)
  %88 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %89 = load i32, i32* @DPP_ATTR_WRAPPED_DATA, align 4
  %90 = call i32 @wpabuf_put_le16(%struct.wpabuf* %88, i32 %89)
  %91 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %92 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %93 = call i32 @wpabuf_len(%struct.wpabuf* %92)
  %94 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %95 = add nsw i32 %93, %94
  %96 = call i32 @wpabuf_put_le16(%struct.wpabuf* %91, i32 %95)
  %97 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %98 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %99 = call i32 @wpabuf_len(%struct.wpabuf* %98)
  %100 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %101 = add nsw i32 %99, %100
  %102 = call i8* @wpabuf_put(%struct.wpabuf* %97, i32 %101)
  store i8* %102, i8** %11, align 8
  %103 = load i32, i32* @MSG_DEBUG, align 4
  %104 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %105 = call i32 @wpa_hexdump_buf(i32 %103, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), %struct.wpabuf* %104)
  %106 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %107 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %110 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %109, i32 0, i32 1
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %115 = call i32 @wpabuf_head(%struct.wpabuf* %114)
  %116 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %117 = call i32 @wpabuf_len(%struct.wpabuf* %116)
  %118 = load i8*, i8** %11, align 8
  %119 = call i64 @aes_siv_encrypt(i32 %108, i32 %113, i32 %115, i32 %117, i32 0, i32* null, i32* null, i8* %118)
  %120 = icmp slt i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %63
  br label %136

122:                                              ; preds = %63
  %123 = load i32, i32* @MSG_DEBUG, align 4
  %124 = load i8*, i8** %11, align 8
  %125 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %126 = call i32 @wpabuf_len(%struct.wpabuf* %125)
  %127 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %128 = add nsw i32 %126, %127
  %129 = call i32 @wpa_hexdump(i32 %123, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* %124, i32 %128)
  %130 = load i32, i32* @MSG_DEBUG, align 4
  %131 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %132 = call i32 @wpa_hexdump_buf(i32 %130, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), %struct.wpabuf* %131)
  %133 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %134 = call i32 @wpabuf_free(%struct.wpabuf* %133)
  %135 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  store %struct.wpabuf* %135, %struct.wpabuf** %3, align 8
  br label %141

136:                                              ; preds = %121, %62, %26
  %137 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %138 = call i32 @wpabuf_free(%struct.wpabuf* %137)
  %139 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %140 = call i32 @wpabuf_free(%struct.wpabuf* %139)
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %141

141:                                              ; preds = %136, %122
  %142 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  ret %struct.wpabuf* %142
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @random_get_bytes(i8*, i64) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i8*, i32) #1

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i8*, i64) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local i32 @wpabuf_put_le16(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i8*, i64) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i8* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpa_hexdump_buf(i32, i8*, %struct.wpabuf*) #1

declare dso_local i64 @aes_siv_encrypt(i32, i32, i32, i32, i32, i32*, i32*, i8*) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
