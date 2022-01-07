; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_common.c_wps_derive_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_common.c_wps_derive_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { i32*, i32*, i32*, i32*, i32*, i32*, %struct.wpabuf*, i32*, %struct.wpabuf*, %struct.wpabuf*, i64 }
%struct.wpabuf = type { i32 }

@SHA256_MAC_LEN = common dso_local global i32 0, align 4
@WPS_AUTHKEY_LEN = common dso_local global i32 0, align 4
@WPS_KEYWRAPKEY_LEN = common dso_local global i32 0, align 4
@WPS_EMSK_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"WPS: Own DH private key not available\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"WPS: Peer DH public key not available\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"WPS: DH Private Key\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"WPS: DH peer Public Key\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"WPS: Failed to derive DH shared key\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"WPS: DH shared key\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"WPS: DHKey\00", align 1
@WPS_NONCE_LEN = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"WPS: KDK\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Wi-Fi Easy and Secure Key Derivation\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"WPS: AuthKey\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"WPS: KeyWrapKey\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"WPS: EMSK\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_derive_keys(%struct.wps_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wps_data*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [3 x i32*], align 16
  %10 = alloca [3 x i64], align 16
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.wps_data* %0, %struct.wps_data** %3, align 8
  %13 = load i32, i32* @SHA256_MAC_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load i32, i32* @SHA256_MAC_LEN, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  %20 = load i32, i32* @WPS_AUTHKEY_LEN, align 4
  %21 = load i32, i32* @WPS_KEYWRAPKEY_LEN, align 4
  %22 = add nsw i32 %20, %21
  %23 = load i32, i32* @WPS_EMSK_LEN, align 4
  %24 = add nsw i32 %22, %23
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %11, align 8
  %27 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %28 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %27, i32 0, i32 6
  %29 = load %struct.wpabuf*, %struct.wpabuf** %28, align 8
  %30 = icmp eq %struct.wpabuf* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load i32, i32* @MSG_DEBUG, align 4
  %33 = call i32 @wpa_printf(i32 %32, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %181

34:                                               ; preds = %1
  %35 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %36 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %35, i32 0, i32 10
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %41 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %40, i32 0, i32 9
  %42 = load %struct.wpabuf*, %struct.wpabuf** %41, align 8
  br label %47

43:                                               ; preds = %34
  %44 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %45 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %44, i32 0, i32 8
  %46 = load %struct.wpabuf*, %struct.wpabuf** %45, align 8
  br label %47

47:                                               ; preds = %43, %39
  %48 = phi %struct.wpabuf* [ %42, %39 ], [ %46, %43 ]
  store %struct.wpabuf* %48, %struct.wpabuf** %4, align 8
  %49 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %50 = icmp eq %struct.wpabuf* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* @MSG_DEBUG, align 4
  %53 = call i32 @wpa_printf(i32 %52, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %181

54:                                               ; preds = %47
  %55 = load i32, i32* @MSG_DEBUG, align 4
  %56 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %57 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %56, i32 0, i32 6
  %58 = load %struct.wpabuf*, %struct.wpabuf** %57, align 8
  %59 = call i32 @wpa_hexdump_buf_key(i32 %55, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), %struct.wpabuf* %58)
  %60 = load i32, i32* @MSG_DEBUG, align 4
  %61 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %62 = call i32 @wpa_hexdump_buf(i32 %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), %struct.wpabuf* %61)
  %63 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %64 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %63, i32 0, i32 7
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %67 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %68 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %67, i32 0, i32 6
  %69 = load %struct.wpabuf*, %struct.wpabuf** %68, align 8
  %70 = call %struct.wpabuf* @dh5_derive_shared(i32* %65, %struct.wpabuf* %66, %struct.wpabuf* %69)
  store %struct.wpabuf* %70, %struct.wpabuf** %5, align 8
  %71 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %72 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %71, i32 0, i32 7
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @dh5_free(i32* %73)
  %75 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %76 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %75, i32 0, i32 7
  store i32* null, i32** %76, align 8
  %77 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %78 = call %struct.wpabuf* @wpabuf_zeropad(%struct.wpabuf* %77, i32 192)
  store %struct.wpabuf* %78, %struct.wpabuf** %5, align 8
  %79 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %80 = icmp eq %struct.wpabuf* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %54
  %82 = load i32, i32* @MSG_DEBUG, align 4
  %83 = call i32 @wpa_printf(i32 %82, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %181

84:                                               ; preds = %54
  %85 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %86 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %85, i32 0, i32 6
  %87 = load %struct.wpabuf*, %struct.wpabuf** %86, align 8
  %88 = call i32 @wpabuf_clear_free(%struct.wpabuf* %87)
  %89 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %90 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %89, i32 0, i32 6
  store %struct.wpabuf* null, %struct.wpabuf** %90, align 8
  %91 = load i32, i32* @MSG_DEBUG, align 4
  %92 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %93 = call i32 @wpa_hexdump_buf_key(i32 %91, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), %struct.wpabuf* %92)
  %94 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %95 = call i32* @wpabuf_head(%struct.wpabuf* %94)
  %96 = getelementptr inbounds [3 x i32*], [3 x i32*]* %9, i64 0, i64 0
  store i32* %95, i32** %96, align 16
  %97 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %98 = call i64 @wpabuf_len(%struct.wpabuf* %97)
  %99 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 0
  store i64 %98, i64* %99, align 16
  %100 = getelementptr inbounds [3 x i32*], [3 x i32*]* %9, i64 0, i64 0
  %101 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 0
  %102 = call i32 @sha256_vector(i32 1, i32** %100, i64* %101, i32* %16)
  %103 = load i32, i32* @MSG_DEBUG, align 4
  %104 = mul nuw i64 4, %14
  %105 = trunc i64 %104 to i32
  %106 = call i32 @wpa_hexdump_key(i32 %103, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32* %16, i32 %105)
  %107 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %108 = call i32 @wpabuf_clear_free(%struct.wpabuf* %107)
  %109 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %110 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %109, i32 0, i32 5
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds [3 x i32*], [3 x i32*]* %9, i64 0, i64 0
  store i32* %111, i32** %112, align 16
  %113 = load i64, i64* @WPS_NONCE_LEN, align 8
  %114 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 0
  store i64 %113, i64* %114, align 16
  %115 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %116 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %115, i32 0, i32 4
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds [3 x i32*], [3 x i32*]* %9, i64 0, i64 1
  store i32* %117, i32** %118, align 8
  %119 = load i64, i64* @ETH_ALEN, align 8
  %120 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 1
  store i64 %119, i64* %120, align 8
  %121 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %122 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %121, i32 0, i32 3
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds [3 x i32*], [3 x i32*]* %9, i64 0, i64 2
  store i32* %123, i32** %124, align 16
  %125 = load i64, i64* @WPS_NONCE_LEN, align 8
  %126 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 2
  store i64 %125, i64* %126, align 16
  %127 = mul nuw i64 4, %14
  %128 = trunc i64 %127 to i32
  %129 = getelementptr inbounds [3 x i32*], [3 x i32*]* %9, i64 0, i64 0
  %130 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 0
  %131 = call i32 @hmac_sha256_vector(i32* %16, i32 %128, i32 3, i32** %129, i64* %130, i32* %19)
  %132 = load i32, i32* @MSG_DEBUG, align 4
  %133 = mul nuw i64 4, %18
  %134 = trunc i64 %133 to i32
  %135 = call i32 @wpa_hexdump_key(i32 %132, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32* %19, i32 %134)
  %136 = mul nuw i64 4, %25
  %137 = trunc i64 %136 to i32
  %138 = call i32 @wps_kdf(i32* %19, i32* null, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32* %26, i32 %137)
  %139 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %140 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* @WPS_AUTHKEY_LEN, align 4
  %143 = call i32 @os_memcpy(i32* %141, i32* %26, i32 %142)
  %144 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %145 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* @WPS_AUTHKEY_LEN, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %26, i64 %148
  %150 = load i32, i32* @WPS_KEYWRAPKEY_LEN, align 4
  %151 = call i32 @os_memcpy(i32* %146, i32* %149, i32 %150)
  %152 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %153 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* @WPS_AUTHKEY_LEN, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %26, i64 %156
  %158 = load i32, i32* @WPS_KEYWRAPKEY_LEN, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* @WPS_EMSK_LEN, align 4
  %162 = call i32 @os_memcpy(i32* %154, i32* %160, i32 %161)
  %163 = load i32, i32* @MSG_DEBUG, align 4
  %164 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %165 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %164, i32 0, i32 2
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* @WPS_AUTHKEY_LEN, align 4
  %168 = call i32 @wpa_hexdump_key(i32 %163, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32* %166, i32 %167)
  %169 = load i32, i32* @MSG_DEBUG, align 4
  %170 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %171 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* @WPS_KEYWRAPKEY_LEN, align 4
  %174 = call i32 @wpa_hexdump_key(i32 %169, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32* %172, i32 %173)
  %175 = load i32, i32* @MSG_DEBUG, align 4
  %176 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %177 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* @WPS_EMSK_LEN, align 4
  %180 = call i32 @wpa_hexdump_key(i32 %175, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32* %178, i32 %179)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %181

181:                                              ; preds = %84, %81, %51, %31
  %182 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %182)
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_printf(i32, i8*) #2

declare dso_local i32 @wpa_hexdump_buf_key(i32, i8*, %struct.wpabuf*) #2

declare dso_local i32 @wpa_hexdump_buf(i32, i8*, %struct.wpabuf*) #2

declare dso_local %struct.wpabuf* @dh5_derive_shared(i32*, %struct.wpabuf*, %struct.wpabuf*) #2

declare dso_local i32 @dh5_free(i32*) #2

declare dso_local %struct.wpabuf* @wpabuf_zeropad(%struct.wpabuf*, i32) #2

declare dso_local i32 @wpabuf_clear_free(%struct.wpabuf*) #2

declare dso_local i32* @wpabuf_head(%struct.wpabuf*) #2

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #2

declare dso_local i32 @sha256_vector(i32, i32**, i64*, i32*) #2

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i32) #2

declare dso_local i32 @hmac_sha256_vector(i32*, i32, i32, i32**, i64*, i32*) #2

declare dso_local i32 @wps_kdf(i32*, i32*, i32, i8*, i32*, i32) #2

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
