; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_build_r_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_build_r_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { i32, i32*, i32*, i32*, i32*, i32* }
%struct.wpabuf = type { i32 }

@WPS_SECRET_NONCE_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"WPS: R-S1\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"WPS: R-S2\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"WPS: DH public keys not available for R-Hash derivation\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"WPS:  * R-Hash1\00", align 1
@ATTR_R_HASH1 = common dso_local global i32 0, align 4
@SHA256_MAC_LEN = common dso_local global i32 0, align 4
@WPS_PSK_LEN = common dso_local global i64 0, align 8
@WPS_AUTHKEY_LEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"WPS: R-Hash1\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"WPS:  * R-Hash2\00", align 1
@ATTR_R_HASH2 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"WPS: R-Hash2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_data*, %struct.wpabuf*)* @wps_build_r_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_build_r_hash(%struct.wps_data* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wps_data*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [4 x i32*], align 16
  %8 = alloca [4 x i64], align 16
  store %struct.wps_data* %0, %struct.wps_data** %4, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %5, align 8
  %9 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %10 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* @WPS_SECRET_NONCE_LEN, align 4
  %13 = mul nsw i32 2, %12
  %14 = call i64 @random_get_bytes(i32* %11, i32 %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %136

17:                                               ; preds = %2
  %18 = load i32, i32* @MSG_DEBUG, align 4
  %19 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %20 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* @WPS_SECRET_NONCE_LEN, align 4
  %23 = call i32 @wpa_hexdump(i32 %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %21, i32 %22)
  %24 = load i32, i32* @MSG_DEBUG, align 4
  %25 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %26 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* @WPS_SECRET_NONCE_LEN, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* @WPS_SECRET_NONCE_LEN, align 4
  %32 = call i32 @wpa_hexdump(i32 %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %30, i32 %31)
  %33 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %34 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %17
  %38 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %39 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %37, %17
  %43 = load i32, i32* @MSG_DEBUG, align 4
  %44 = call i32 @wpa_printf(i32 %43, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %136

45:                                               ; preds = %37
  %46 = load i32, i32* @MSG_DEBUG, align 4
  %47 = call i32 @wpa_printf(i32 %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %48 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %49 = load i32, i32* @ATTR_R_HASH1, align 4
  %50 = call i32 @wpabuf_put_be16(%struct.wpabuf* %48, i32 %49)
  %51 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %52 = load i32, i32* @SHA256_MAC_LEN, align 4
  %53 = call i32 @wpabuf_put_be16(%struct.wpabuf* %51, i32 %52)
  %54 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %55 = load i32, i32* @SHA256_MAC_LEN, align 4
  %56 = call i32* @wpabuf_put(%struct.wpabuf* %54, i32 %55)
  store i32* %56, i32** %6, align 8
  %57 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %58 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds [4 x i32*], [4 x i32*]* %7, i64 0, i64 0
  store i32* %59, i32** %60, align 16
  %61 = load i32, i32* @WPS_SECRET_NONCE_LEN, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 0
  store i64 %62, i64* %63, align 16
  %64 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %65 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %64, i32 0, i32 5
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds [4 x i32*], [4 x i32*]* %7, i64 0, i64 1
  store i32* %66, i32** %67, align 8
  %68 = load i64, i64* @WPS_PSK_LEN, align 8
  %69 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 1
  store i64 %68, i64* %69, align 8
  %70 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %71 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %70, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  %73 = call i32* @wpabuf_head(i32* %72)
  %74 = getelementptr inbounds [4 x i32*], [4 x i32*]* %7, i64 0, i64 2
  store i32* %73, i32** %74, align 16
  %75 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %76 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %75, i32 0, i32 4
  %77 = load i32*, i32** %76, align 8
  %78 = call i64 @wpabuf_len(i32* %77)
  %79 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 2
  store i64 %78, i64* %79, align 16
  %80 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %81 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = call i32* @wpabuf_head(i32* %82)
  %84 = getelementptr inbounds [4 x i32*], [4 x i32*]* %7, i64 0, i64 3
  store i32* %83, i32** %84, align 8
  %85 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %86 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = call i64 @wpabuf_len(i32* %87)
  %89 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 3
  store i64 %88, i64* %89, align 8
  %90 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %91 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @WPS_AUTHKEY_LEN, align 4
  %94 = getelementptr inbounds [4 x i32*], [4 x i32*]* %7, i64 0, i64 0
  %95 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 0
  %96 = load i32*, i32** %6, align 8
  %97 = call i32 @hmac_sha256_vector(i32 %92, i32 %93, i32 4, i32** %94, i64* %95, i32* %96)
  %98 = load i32, i32* @MSG_DEBUG, align 4
  %99 = load i32*, i32** %6, align 8
  %100 = load i32, i32* @SHA256_MAC_LEN, align 4
  %101 = call i32 @wpa_hexdump(i32 %98, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32* %99, i32 %100)
  %102 = load i32, i32* @MSG_DEBUG, align 4
  %103 = call i32 @wpa_printf(i32 %102, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %104 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %105 = load i32, i32* @ATTR_R_HASH2, align 4
  %106 = call i32 @wpabuf_put_be16(%struct.wpabuf* %104, i32 %105)
  %107 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %108 = load i32, i32* @SHA256_MAC_LEN, align 4
  %109 = call i32 @wpabuf_put_be16(%struct.wpabuf* %107, i32 %108)
  %110 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %111 = load i32, i32* @SHA256_MAC_LEN, align 4
  %112 = call i32* @wpabuf_put(%struct.wpabuf* %110, i32 %111)
  store i32* %112, i32** %6, align 8
  %113 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %114 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* @WPS_SECRET_NONCE_LEN, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = getelementptr inbounds [4 x i32*], [4 x i32*]* %7, i64 0, i64 0
  store i32* %118, i32** %119, align 16
  %120 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %121 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds [4 x i32*], [4 x i32*]* %7, i64 0, i64 1
  store i32* %122, i32** %123, align 8
  %124 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %125 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @WPS_AUTHKEY_LEN, align 4
  %128 = getelementptr inbounds [4 x i32*], [4 x i32*]* %7, i64 0, i64 0
  %129 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 0
  %130 = load i32*, i32** %6, align 8
  %131 = call i32 @hmac_sha256_vector(i32 %126, i32 %127, i32 4, i32** %128, i64* %129, i32* %130)
  %132 = load i32, i32* @MSG_DEBUG, align 4
  %133 = load i32*, i32** %6, align 8
  %134 = load i32, i32* @SHA256_MAC_LEN, align 4
  %135 = call i32 @wpa_hexdump(i32 %132, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32* %133, i32 %134)
  store i32 0, i32* %3, align 4
  br label %136

136:                                              ; preds = %45, %42, %16
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i64 @random_get_bytes(i32*, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i32) #1

declare dso_local i32* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32* @wpabuf_head(i32*) #1

declare dso_local i64 @wpabuf_len(i32*) #1

declare dso_local i32 @hmac_sha256_vector(i32, i32, i32, i32**, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
