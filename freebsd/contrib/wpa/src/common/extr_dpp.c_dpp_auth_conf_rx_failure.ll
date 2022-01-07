; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_auth_conf_rx_failure.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_auth_conf_rx_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp_authentication = type { i32*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@DPP_HDR_LEN = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"DDP: AES-SIV AD[0]\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"DDP: AES-SIV AD[1]\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"DPP: AES-SIV ciphertext\00", align 1
@AES_BLOCK_SIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"Authentication failed\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"AES-SIV decryption failed\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"DPP: AES-SIV cleartext\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Invalid attribute in unwrapped data\00", align 1
@DPP_ATTR_R_NONCE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"DPP: Missing or invalid R-nonce\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"DPP: Received R-nonce\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"DPP: Expected R-nonce\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"R-nonce mismatch\00", align 1
@DPP_STATUS_NOT_COMPATIBLE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [40 x i8] c"Peer reported incompatible R-capab role\00", align 1
@DPP_STATUS_AUTH_FAILURE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [38 x i8] c"Peer reported authentication failure)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpp_authentication*, i32*, i32*, i64, i32*, i64, i32)* @dpp_auth_conf_rx_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpp_auth_conf_rx_failure(%struct.dpp_authentication* %0, i32* %1, i32* %2, i64 %3, i32* %4, i64 %5, i32 %6) #0 {
  %8 = alloca %struct.dpp_authentication*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca [2 x i32*], align 16
  %16 = alloca [2 x i64], align 16
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  store %struct.dpp_authentication* %0, %struct.dpp_authentication** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 %6, i32* %14, align 4
  store i32* null, i32** %17, align 8
  store i64 0, i64* %18, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = getelementptr inbounds [2 x i32*], [2 x i32*]* %15, i64 0, i64 0
  store i32* %21, i32** %22, align 16
  %23 = load i64, i64* @DPP_HDR_LEN, align 8
  %24 = getelementptr inbounds [2 x i64], [2 x i64]* %16, i64 0, i64 0
  store i64 %23, i64* %24, align 16
  %25 = load i32*, i32** %10, align 8
  %26 = getelementptr inbounds [2 x i32*], [2 x i32*]* %15, i64 0, i64 1
  store i32* %25, i32** %26, align 8
  %27 = load i64, i64* %11, align 8
  %28 = getelementptr inbounds [2 x i64], [2 x i64]* %16, i64 0, i64 1
  store i64 %27, i64* %28, align 8
  %29 = load i32, i32* @MSG_DEBUG, align 4
  %30 = getelementptr inbounds [2 x i32*], [2 x i32*]* %15, i64 0, i64 0
  %31 = load i32*, i32** %30, align 16
  %32 = getelementptr inbounds [2 x i64], [2 x i64]* %16, i64 0, i64 0
  %33 = load i64, i64* %32, align 16
  %34 = call i32 @wpa_hexdump(i32 %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %31, i64 %33)
  %35 = load i32, i32* @MSG_DEBUG, align 4
  %36 = getelementptr inbounds [2 x i32*], [2 x i32*]* %15, i64 0, i64 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds [2 x i64], [2 x i64]* %16, i64 0, i64 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @wpa_hexdump(i32 %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32* %37, i64 %39)
  %41 = load i32, i32* @MSG_DEBUG, align 4
  %42 = load i32*, i32** %12, align 8
  %43 = load i64, i64* %13, align 8
  %44 = call i32 @wpa_hexdump(i32 %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32* %42, i64 %43)
  %45 = load i64, i64* %13, align 8
  %46 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %47 = sub i64 %45, %46
  store i64 %47, i64* %18, align 8
  %48 = load i64, i64* %18, align 8
  %49 = call i32* @os_malloc(i64 %48)
  store i32* %49, i32** %17, align 8
  %50 = load i32*, i32** %17, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %7
  %53 = load %struct.dpp_authentication*, %struct.dpp_authentication** %8, align 8
  %54 = call i32 @dpp_auth_fail(%struct.dpp_authentication* %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %141

55:                                               ; preds = %7
  %56 = load %struct.dpp_authentication*, %struct.dpp_authentication** %8, align 8
  %57 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.dpp_authentication*, %struct.dpp_authentication** %8, align 8
  %60 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32*, i32** %12, align 8
  %65 = load i64, i64* %13, align 8
  %66 = getelementptr inbounds [2 x i32*], [2 x i32*]* %15, i64 0, i64 0
  %67 = getelementptr inbounds [2 x i64], [2 x i64]* %16, i64 0, i64 0
  %68 = load i32*, i32** %17, align 8
  %69 = call i64 @aes_siv_decrypt(i32 %58, i32 %63, i32* %64, i64 %65, i32 2, i32** %66, i64* %67, i32* %68)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %55
  %72 = load %struct.dpp_authentication*, %struct.dpp_authentication** %8, align 8
  %73 = call i32 @dpp_auth_fail(%struct.dpp_authentication* %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %141

74:                                               ; preds = %55
  %75 = load i32, i32* @MSG_DEBUG, align 4
  %76 = load i32*, i32** %17, align 8
  %77 = load i64, i64* %18, align 8
  %78 = call i32 @wpa_hexdump(i32 %75, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32* %76, i64 %77)
  %79 = load i32*, i32** %17, align 8
  %80 = load i64, i64* %18, align 8
  %81 = call i64 @dpp_check_attrs(i32* %79, i64 %80)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %74
  %84 = load %struct.dpp_authentication*, %struct.dpp_authentication** %8, align 8
  %85 = call i32 @dpp_auth_fail(%struct.dpp_authentication* %84, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  br label %141

86:                                               ; preds = %74
  %87 = load i32*, i32** %17, align 8
  %88 = load i64, i64* %18, align 8
  %89 = load i32, i32* @DPP_ATTR_R_NONCE, align 4
  %90 = call i32* @dpp_get_attr(i32* %87, i64 %88, i32 %89, i64* %20)
  store i32* %90, i32** %19, align 8
  %91 = load i32*, i32** %19, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %101

93:                                               ; preds = %86
  %94 = load i64, i64* %20, align 8
  %95 = load %struct.dpp_authentication*, %struct.dpp_authentication** %8, align 8
  %96 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %95, i32 0, i32 1
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %94, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %93, %86
  %102 = load %struct.dpp_authentication*, %struct.dpp_authentication** %8, align 8
  %103 = call i32 @dpp_auth_fail(%struct.dpp_authentication* %102, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  br label %141

104:                                              ; preds = %93
  %105 = load i32*, i32** %19, align 8
  %106 = load %struct.dpp_authentication*, %struct.dpp_authentication** %8, align 8
  %107 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* %20, align 8
  %110 = call i64 @os_memcmp(i32* %105, i32* %108, i64 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %125

112:                                              ; preds = %104
  %113 = load i32, i32* @MSG_DEBUG, align 4
  %114 = load i32*, i32** %19, align 8
  %115 = load i64, i64* %20, align 8
  %116 = call i32 @wpa_hexdump(i32 %113, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32* %114, i64 %115)
  %117 = load i32, i32* @MSG_DEBUG, align 4
  %118 = load %struct.dpp_authentication*, %struct.dpp_authentication** %8, align 8
  %119 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i64, i64* %20, align 8
  %122 = call i32 @wpa_hexdump(i32 %117, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32* %120, i64 %121)
  %123 = load %struct.dpp_authentication*, %struct.dpp_authentication** %8, align 8
  %124 = call i32 @dpp_auth_fail(%struct.dpp_authentication* %123, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  br label %141

125:                                              ; preds = %104
  %126 = load i32, i32* %14, align 4
  %127 = load i32, i32* @DPP_STATUS_NOT_COMPATIBLE, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = load %struct.dpp_authentication*, %struct.dpp_authentication** %8, align 8
  %131 = call i32 @dpp_auth_fail(%struct.dpp_authentication* %130, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  br label %140

132:                                              ; preds = %125
  %133 = load i32, i32* %14, align 4
  %134 = load i32, i32* @DPP_STATUS_AUTH_FAILURE, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = load %struct.dpp_authentication*, %struct.dpp_authentication** %8, align 8
  %138 = call i32 @dpp_auth_fail(%struct.dpp_authentication* %137, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0))
  br label %139

139:                                              ; preds = %136, %132
  br label %140

140:                                              ; preds = %139, %129
  br label %141

141:                                              ; preds = %140, %112, %101, %83, %71, %52
  %142 = load i32*, i32** %17, align 8
  %143 = load i64, i64* %18, align 8
  %144 = call i32 @bin_clear_free(i32* %142, i64 %143)
  ret i32 -1
}

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i32 @dpp_auth_fail(%struct.dpp_authentication*, i8*) #1

declare dso_local i64 @aes_siv_decrypt(i32, i32, i32*, i64, i32, i32**, i64*, i32*) #1

declare dso_local i64 @dpp_check_attrs(i32*, i64) #1

declare dso_local i32* @dpp_get_attr(i32*, i64, i32, i64*) #1

declare dso_local i64 @os_memcmp(i32*, i32*, i64) #1

declare dso_local i32 @bin_clear_free(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
