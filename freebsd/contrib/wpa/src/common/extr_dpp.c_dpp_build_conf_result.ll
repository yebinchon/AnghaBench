; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_build_conf_result.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_build_conf_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.dpp_authentication = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@DPP_PA_CONFIGURATION_RESULT = common dso_local global i32 0, align 4
@DPP_ATTR_ENROLLEE_NONCE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"DDP: AES-SIV AD[0]\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"DDP: AES-SIV AD[1]\00", align 1
@DPP_ATTR_WRAPPED_DATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"DPP: AES-SIV cleartext\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"DPP: Configuration Result attributes\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @dpp_build_conf_result(%struct.dpp_authentication* %0, i32 %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca %struct.dpp_authentication*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [2 x i32*], align 16
  %12 = alloca [2 x i64], align 16
  %13 = alloca i32*, align 8
  store %struct.dpp_authentication* %0, %struct.dpp_authentication** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %15 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = add i64 9, %19
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = add i64 4, %21
  %23 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %24 = sext i32 %23 to i64
  %25 = add i64 %22, %24
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call %struct.wpabuf* @wpabuf_alloc(i64 %26)
  store %struct.wpabuf* %27, %struct.wpabuf** %7, align 8
  %28 = load i32, i32* @DPP_PA_CONFIGURATION_RESULT, align 4
  %29 = load i64, i64* %10, align 8
  %30 = call %struct.wpabuf* @dpp_alloc_msg(i32 %28, i64 %29)
  store %struct.wpabuf* %30, %struct.wpabuf** %6, align 8
  %31 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %32 = icmp ne %struct.wpabuf* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %2
  %34 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %35 = icmp ne %struct.wpabuf* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %33, %2
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %125

37:                                               ; preds = %33
  %38 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @dpp_build_attr_status(%struct.wpabuf* %38, i32 %39)
  %41 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %42 = load i32, i32* @DPP_ATTR_ENROLLEE_NONCE, align 4
  %43 = call i32 @wpabuf_put_le16(%struct.wpabuf* %41, i32 %42)
  %44 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %45 = load i64, i64* %8, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i32 @wpabuf_put_le16(%struct.wpabuf* %44, i32 %46)
  %48 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %49 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %50 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @wpabuf_put_data(%struct.wpabuf* %48, i32 %51, i64 %52)
  %54 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %55 = call i32* @wpabuf_head_u8(%struct.wpabuf* %54)
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = getelementptr inbounds [2 x i32*], [2 x i32*]* %11, i64 0, i64 0
  store i32* %56, i32** %57, align 16
  %58 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 0
  store i64 6, i64* %58, align 16
  %59 = load i32, i32* @MSG_DEBUG, align 4
  %60 = getelementptr inbounds [2 x i32*], [2 x i32*]* %11, i64 0, i64 0
  %61 = load i32*, i32** %60, align 16
  %62 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 0
  %63 = load i64, i64* %62, align 16
  %64 = call i32 @wpa_hexdump(i32 %59, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %61, i64 %63)
  %65 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %66 = call i8* @wpabuf_put(%struct.wpabuf* %65, i32 0)
  %67 = bitcast i8* %66 to i32*
  %68 = getelementptr inbounds [2 x i32*], [2 x i32*]* %11, i64 0, i64 1
  store i32* %67, i32** %68, align 8
  %69 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 1
  store i64 0, i64* %69, align 8
  %70 = load i32, i32* @MSG_DEBUG, align 4
  %71 = getelementptr inbounds [2 x i32*], [2 x i32*]* %11, i64 0, i64 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 1
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @wpa_hexdump(i32 %70, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32* %72, i64 %74)
  %76 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %77 = load i32, i32* @DPP_ATTR_WRAPPED_DATA, align 4
  %78 = call i32 @wpabuf_put_le16(%struct.wpabuf* %76, i32 %77)
  %79 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %80 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %81 = call i32 @wpabuf_len(%struct.wpabuf* %80)
  %82 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %83 = add nsw i32 %81, %82
  %84 = call i32 @wpabuf_put_le16(%struct.wpabuf* %79, i32 %83)
  %85 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %86 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %87 = call i32 @wpabuf_len(%struct.wpabuf* %86)
  %88 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %89 = add nsw i32 %87, %88
  %90 = call i8* @wpabuf_put(%struct.wpabuf* %85, i32 %89)
  %91 = bitcast i8* %90 to i32*
  store i32* %91, i32** %13, align 8
  %92 = load i32, i32* @MSG_DEBUG, align 4
  %93 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %94 = call i32 @wpa_hexdump_buf(i32 %92, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), %struct.wpabuf* %93)
  %95 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %96 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %99 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %104 = call i32 @wpabuf_head(%struct.wpabuf* %103)
  %105 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %106 = call i32 @wpabuf_len(%struct.wpabuf* %105)
  %107 = getelementptr inbounds [2 x i32*], [2 x i32*]* %11, i64 0, i64 0
  %108 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 0
  %109 = load i32*, i32** %13, align 8
  %110 = call i64 @aes_siv_encrypt(i32 %97, i32 %102, i32 %104, i32 %106, i32 2, i32** %107, i64* %108, i32* %109)
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %37
  br label %120

113:                                              ; preds = %37
  %114 = load i32, i32* @MSG_DEBUG, align 4
  %115 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %116 = call i32 @wpa_hexdump_buf(i32 %114, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), %struct.wpabuf* %115)
  %117 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %118 = call i32 @wpabuf_free(%struct.wpabuf* %117)
  %119 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  store %struct.wpabuf* %119, %struct.wpabuf** %3, align 8
  br label %125

120:                                              ; preds = %112
  %121 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %122 = call i32 @wpabuf_free(%struct.wpabuf* %121)
  %123 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %124 = call i32 @wpabuf_free(%struct.wpabuf* %123)
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %125

125:                                              ; preds = %120, %113, %36
  %126 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  ret %struct.wpabuf* %126
}

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local %struct.wpabuf* @dpp_alloc_msg(i32, i64) #1

declare dso_local i32 @dpp_build_attr_status(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_le16(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32, i64) #1

declare dso_local i32* @wpabuf_head_u8(%struct.wpabuf*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i8* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

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
