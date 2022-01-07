; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_build_conf_resp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_build_conf_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.dpp_authentication = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"DPP: configurationObject JSON\00", align 1
@DPP_STATUS_OK = common dso_local global i32 0, align 4
@DPP_STATUS_CONFIGURE_FAILURE = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@DPP_ATTR_ENROLLEE_NONCE = common dso_local global i32 0, align 4
@DPP_ATTR_CONFIG_OBJ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"DDP: AES-SIV AD\00", align 1
@DPP_ATTR_WRAPPED_DATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"DPP: AES-SIV cleartext\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"DPP: AES-SIV ciphertext\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"DPP: Configuration Response attributes\00", align 1
@DPP_TEST_AFTER_WRAPPED_DATA_CONF_RESP = common dso_local global i64 0, align 8
@DPP_TEST_E_NONCE_MISMATCH_CONF_RESP = common dso_local global i64 0, align 8
@DPP_TEST_INVALID_STATUS_CONF_RESP = common dso_local global i64 0, align 8
@DPP_TEST_NO_CONFIG_OBJ_CONF_RESP = common dso_local global i64 0, align 8
@DPP_TEST_NO_E_NONCE_CONF_RESP = common dso_local global i64 0, align 8
@DPP_TEST_NO_STATUS_CONF_RESP = common dso_local global i64 0, align 8
@DPP_TEST_NO_WRAPPED_DATA_CONF_RESP = common dso_local global i64 0, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@dpp_test = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.dpp_authentication*, i32*, i32, i32)* @dpp_build_conf_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @dpp_build_conf_resp(%struct.dpp_authentication* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dpp_authentication*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.wpabuf*, align 8
  %13 = alloca %struct.wpabuf*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca [1 x i32*], align 8
  %16 = alloca [1 x i64], align 8
  %17 = alloca i32, align 4
  store %struct.dpp_authentication* %0, %struct.dpp_authentication** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store %struct.wpabuf* null, %struct.wpabuf** %12, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %13, align 8
  %18 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call %struct.wpabuf* @dpp_build_conf_obj(%struct.dpp_authentication* %18, i32 %19)
  store %struct.wpabuf* %20, %struct.wpabuf** %9, align 8
  %21 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %22 = icmp ne %struct.wpabuf* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %4
  %24 = load i32, i32* @MSG_DEBUG, align 4
  %25 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %26 = call i32* @wpabuf_head(%struct.wpabuf* %25)
  %27 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %28 = call i32 @wpabuf_len(%struct.wpabuf* %27)
  %29 = call i32 @wpa_hexdump_ascii(i32 %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32* %26, i32 %28)
  br label %30

30:                                               ; preds = %23, %4
  %31 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %32 = icmp ne %struct.wpabuf* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @DPP_STATUS_OK, align 4
  br label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @DPP_STATUS_CONFIGURE_FAILURE, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %17, align 4
  %39 = load i32, i32* %17, align 4
  %40 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %41 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 4, %42
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %10, align 8
  %45 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %46 = icmp ne %struct.wpabuf* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %37
  %48 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %49 = call i32 @wpabuf_len(%struct.wpabuf* %48)
  %50 = add nsw i32 4, %49
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* %10, align 8
  %53 = add i64 %52, %51
  store i64 %53, i64* %10, align 8
  br label %54

54:                                               ; preds = %47, %37
  %55 = load i64, i64* %10, align 8
  %56 = call %struct.wpabuf* @wpabuf_alloc(i64 %55)
  store %struct.wpabuf* %56, %struct.wpabuf** %12, align 8
  %57 = load i64, i64* %10, align 8
  %58 = add i64 9, %57
  %59 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %60 = sext i32 %59 to i64
  %61 = add i64 %58, %60
  store i64 %61, i64* %11, align 8
  %62 = load i64, i64* %11, align 8
  %63 = call %struct.wpabuf* @wpabuf_alloc(i64 %62)
  store %struct.wpabuf* %63, %struct.wpabuf** %13, align 8
  %64 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %65 = icmp ne %struct.wpabuf* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %54
  %67 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %68 = icmp ne %struct.wpabuf* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %66, %54
  br label %165

70:                                               ; preds = %66
  %71 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %72 = load i32, i32* @DPP_ATTR_ENROLLEE_NONCE, align 4
  %73 = call i32 @wpabuf_put_le16(%struct.wpabuf* %71, i32 %72)
  %74 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @wpabuf_put_le16(%struct.wpabuf* %74, i32 %75)
  %77 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @wpabuf_put_data(%struct.wpabuf* %77, i32* %78, i32 %79)
  %81 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %82 = icmp ne %struct.wpabuf* %81, null
  br i1 %82, label %83, label %94

83:                                               ; preds = %70
  %84 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %85 = load i32, i32* @DPP_ATTR_CONFIG_OBJ, align 4
  %86 = call i32 @wpabuf_put_le16(%struct.wpabuf* %84, i32 %85)
  %87 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %88 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %89 = call i32 @wpabuf_len(%struct.wpabuf* %88)
  %90 = call i32 @wpabuf_put_le16(%struct.wpabuf* %87, i32 %89)
  %91 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %92 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %93 = call i32 @wpabuf_put_buf(%struct.wpabuf* %91, %struct.wpabuf* %92)
  br label %94

94:                                               ; preds = %83, %70
  %95 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %96 = load i32, i32* %17, align 4
  %97 = call i32 @dpp_build_attr_status(%struct.wpabuf* %95, i32 %96)
  %98 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %99 = call i32* @wpabuf_head(%struct.wpabuf* %98)
  %100 = getelementptr inbounds [1 x i32*], [1 x i32*]* %15, i64 0, i64 0
  store i32* %99, i32** %100, align 8
  %101 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %102 = call i32 @wpabuf_len(%struct.wpabuf* %101)
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [1 x i64], [1 x i64]* %16, i64 0, i64 0
  store i64 %103, i64* %104, align 8
  %105 = load i32, i32* @MSG_DEBUG, align 4
  %106 = getelementptr inbounds [1 x i32*], [1 x i32*]* %15, i64 0, i64 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds [1 x i64], [1 x i64]* %16, i64 0, i64 0
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  %111 = call i32 @wpa_hexdump(i32 %105, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %107, i32 %110)
  %112 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %113 = load i32, i32* @DPP_ATTR_WRAPPED_DATA, align 4
  %114 = call i32 @wpabuf_put_le16(%struct.wpabuf* %112, i32 %113)
  %115 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %116 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %117 = call i32 @wpabuf_len(%struct.wpabuf* %116)
  %118 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %119 = add nsw i32 %117, %118
  %120 = call i32 @wpabuf_put_le16(%struct.wpabuf* %115, i32 %119)
  %121 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %122 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %123 = call i32 @wpabuf_len(%struct.wpabuf* %122)
  %124 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %125 = add nsw i32 %123, %124
  %126 = call i32* @wpabuf_put(%struct.wpabuf* %121, i32 %125)
  store i32* %126, i32** %14, align 8
  %127 = load i32, i32* @MSG_DEBUG, align 4
  %128 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %129 = call i32 @wpa_hexdump_buf(i32 %127, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), %struct.wpabuf* %128)
  %130 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %131 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %134 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %133, i32 0, i32 1
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %139 = call i32* @wpabuf_head(%struct.wpabuf* %138)
  %140 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %141 = call i32 @wpabuf_len(%struct.wpabuf* %140)
  %142 = getelementptr inbounds [1 x i32*], [1 x i32*]* %15, i64 0, i64 0
  %143 = getelementptr inbounds [1 x i64], [1 x i64]* %16, i64 0, i64 0
  %144 = load i32*, i32** %14, align 8
  %145 = call i64 @aes_siv_encrypt(i32 %132, i32 %137, i32* %139, i32 %141, i32 1, i32** %142, i64* %143, i32* %144)
  %146 = icmp slt i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %94
  br label %165

148:                                              ; preds = %94
  %149 = load i32, i32* @MSG_DEBUG, align 4
  %150 = load i32*, i32** %14, align 8
  %151 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %152 = call i32 @wpabuf_len(%struct.wpabuf* %151)
  %153 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %154 = add nsw i32 %152, %153
  %155 = call i32 @wpa_hexdump(i32 %149, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32* %150, i32 %154)
  %156 = load i32, i32* @MSG_DEBUG, align 4
  %157 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %158 = call i32 @wpa_hexdump_buf(i32 %156, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), %struct.wpabuf* %157)
  br label %159

159:                                              ; preds = %165, %148
  %160 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %161 = call i32 @wpabuf_free(%struct.wpabuf* %160)
  %162 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %163 = call i32 @wpabuf_free(%struct.wpabuf* %162)
  %164 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  ret %struct.wpabuf* %164

165:                                              ; preds = %147, %69
  %166 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %167 = call i32 @wpabuf_free(%struct.wpabuf* %166)
  store %struct.wpabuf* null, %struct.wpabuf** %13, align 8
  br label %159
}

declare dso_local %struct.wpabuf* @dpp_build_conf_obj(%struct.dpp_authentication*, i32) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i32) #1

declare dso_local i32* @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local i32 @wpabuf_put_le16(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32*, i32) #1

declare dso_local i32 @wpabuf_put_buf(%struct.wpabuf*, %struct.wpabuf*) #1

declare dso_local i32 @dpp_build_attr_status(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i32* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpa_hexdump_buf(i32, i8*, %struct.wpabuf*) #1

declare dso_local i64 @aes_siv_encrypt(i32, i32, i32*, i32, i32, i32**, i64*, i32*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
