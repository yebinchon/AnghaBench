; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_supplicant_decrypt_key_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_supplicant_decrypt_key_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { %struct.TYPE_4__*, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32* }
%struct.wpa_eapol_key = type { i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"RSN: encrypted key data\00", align 1
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"WPA: PTK not available, cannot decrypt EAPOL-Key Key Data\00", align 1
@WPA_KEY_INFO_TYPE_HMAC_MD5_RC4 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"WPA: Decrypt Key Data using RC4\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"WPA: RC4 failed\00", align 1
@WPA_KEY_INFO_TYPE_HMAC_SHA1_AES = common dso_local global i32 0, align 4
@WPA_KEY_INFO_TYPE_AES_128_CMAC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [55 x i8] c"WPA: Decrypt Key Data using AES-UNWRAP (KEK length %u)\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"WPA: Unsupported AES-WRAP len %u\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"WPA: No memory for AES-UNWRAP buffer\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"WPA: AES unwrap failed - could not decrypt EAPOL-Key key data\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"WPA: Unsupported key_info type %d\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"WPA: decrypted EAPOL-Key key data\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_sm*, %struct.wpa_eapol_key*, i64, i32, i32*, i64*)* @wpa_supplicant_decrypt_key_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_supplicant_decrypt_key_data(%struct.wpa_sm* %0, %struct.wpa_eapol_key* %1, i64 %2, i32 %3, i32* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpa_sm*, align 8
  %9 = alloca %struct.wpa_eapol_key*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca [32 x i32], align 16
  %15 = alloca i32*, align 8
  store %struct.wpa_sm* %0, %struct.wpa_sm** %8, align 8
  store %struct.wpa_eapol_key* %1, %struct.wpa_eapol_key** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i64* %5, i64** %13, align 8
  %16 = load i32, i32* @MSG_DEBUG, align 4
  %17 = load i32*, i32** %12, align 8
  %18 = load i64*, i64** %13, align 8
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @wpa_hexdump(i32 %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* %17, i64 %19)
  %21 = load %struct.wpa_sm*, %struct.wpa_sm** %8, align 8
  %22 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %6
  %26 = load %struct.wpa_sm*, %struct.wpa_sm** %8, align 8
  %27 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MSG_WARNING, align 4
  %32 = call i32 (i32, i32, i8*, ...) @wpa_msg(i32 %30, i32 %31, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %202

33:                                               ; preds = %6
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @WPA_KEY_INFO_TYPE_HMAC_MD5_RC4, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %82

37:                                               ; preds = %33
  %38 = load %struct.wpa_sm*, %struct.wpa_sm** %8, align 8
  %39 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 16
  br i1 %42, label %43, label %82

43:                                               ; preds = %37
  %44 = load i32, i32* @MSG_DEBUG, align 4
  %45 = call i32 (i32, i8*, ...) @wpa_printf(i32 %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %46 = getelementptr inbounds [32 x i32], [32 x i32]* %14, i64 0, i64 0
  %47 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %9, align 8
  %48 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @os_memcpy(i32* %46, i32* %49, i64 16)
  %51 = getelementptr inbounds [32 x i32], [32 x i32]* %14, i64 0, i64 0
  %52 = getelementptr inbounds i32, i32* %51, i64 16
  %53 = load %struct.wpa_sm*, %struct.wpa_sm** %8, align 8
  %54 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.wpa_sm*, %struct.wpa_sm** %8, align 8
  %58 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = call i32 @os_memcpy(i32* %52, i32* %56, i64 %61)
  %63 = getelementptr inbounds [32 x i32], [32 x i32]* %14, i64 0, i64 0
  %64 = load i32*, i32** %12, align 8
  %65 = load i64*, i64** %13, align 8
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @rc4_skip(i32* %63, i32 32, i32 256, i32* %64, i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %43
  %70 = getelementptr inbounds [32 x i32], [32 x i32]* %14, i64 0, i64 0
  %71 = call i32 @forced_memzero(i32* %70, i32 128)
  %72 = load %struct.wpa_sm*, %struct.wpa_sm** %8, align 8
  %73 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @MSG_ERROR, align 4
  %78 = call i32 (i32, i32, i8*, ...) @wpa_msg(i32 %76, i32 %77, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %202

79:                                               ; preds = %43
  %80 = getelementptr inbounds [32 x i32], [32 x i32]* %14, i64 0, i64 0
  %81 = call i32 @forced_memzero(i32* %80, i32 128)
  br label %196

82:                                               ; preds = %37, %33
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* @WPA_KEY_INFO_TYPE_HMAC_SHA1_AES, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %96, label %86

86:                                               ; preds = %82
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* @WPA_KEY_INFO_TYPE_AES_128_CMAC, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %96, label %90

90:                                               ; preds = %86
  %91 = load %struct.wpa_sm*, %struct.wpa_sm** %8, align 8
  %92 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @wpa_use_aes_key_wrap(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %186

96:                                               ; preds = %90, %86, %82
  %97 = load i32, i32* @MSG_DEBUG, align 4
  %98 = load %struct.wpa_sm*, %struct.wpa_sm** %8, align 8
  %99 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (i32, i8*, ...) @wpa_printf(i32 %97, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 %101)
  %103 = load i64*, i64** %13, align 8
  %104 = load i64, i64* %103, align 8
  %105 = icmp ult i64 %104, 8
  br i1 %105, label %111, label %106

106:                                              ; preds = %96
  %107 = load i64*, i64** %13, align 8
  %108 = load i64, i64* %107, align 8
  %109 = urem i64 %108, 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %106, %96
  %112 = load %struct.wpa_sm*, %struct.wpa_sm** %8, align 8
  %113 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %112, i32 0, i32 0
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @MSG_WARNING, align 4
  %118 = load i64*, i64** %13, align 8
  %119 = load i64, i64* %118, align 8
  %120 = trunc i64 %119 to i32
  %121 = call i32 (i32, i32, i8*, ...) @wpa_msg(i32 %116, i32 %117, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %120)
  store i32 -1, i32* %7, align 4
  br label %202

122:                                              ; preds = %106
  %123 = load i64*, i64** %13, align 8
  %124 = load i64, i64* %123, align 8
  %125 = sub i64 %124, 8
  store i64 %125, i64* %123, align 8
  %126 = load i64*, i64** %13, align 8
  %127 = load i64, i64* %126, align 8
  %128 = call i32* @os_malloc(i64 %127)
  store i32* %128, i32** %15, align 8
  %129 = load i32*, i32** %15, align 8
  %130 = icmp eq i32* %129, null
  br i1 %130, label %131, label %139

131:                                              ; preds = %122
  %132 = load %struct.wpa_sm*, %struct.wpa_sm** %8, align 8
  %133 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %132, i32 0, i32 0
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @MSG_WARNING, align 4
  %138 = call i32 (i32, i32, i8*, ...) @wpa_msg(i32 %136, i32 %137, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %202

139:                                              ; preds = %122
  %140 = load %struct.wpa_sm*, %struct.wpa_sm** %8, align 8
  %141 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = load %struct.wpa_sm*, %struct.wpa_sm** %8, align 8
  %145 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = sext i32 %147 to i64
  %149 = load i64*, i64** %13, align 8
  %150 = load i64, i64* %149, align 8
  %151 = udiv i64 %150, 8
  %152 = load i32*, i32** %12, align 8
  %153 = load i32*, i32** %15, align 8
  %154 = call i64 @aes_unwrap(i32* %143, i64 %148, i64 %151, i32* %152, i32* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %168

156:                                              ; preds = %139
  %157 = load i32*, i32** %15, align 8
  %158 = load i64*, i64** %13, align 8
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @bin_clear_free(i32* %157, i64 %159)
  %161 = load %struct.wpa_sm*, %struct.wpa_sm** %8, align 8
  %162 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %161, i32 0, i32 0
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @MSG_WARNING, align 4
  %167 = call i32 (i32, i32, i8*, ...) @wpa_msg(i32 %165, i32 %166, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %202

168:                                              ; preds = %139
  %169 = load i32*, i32** %12, align 8
  %170 = load i32*, i32** %15, align 8
  %171 = load i64*, i64** %13, align 8
  %172 = load i64, i64* %171, align 8
  %173 = call i32 @os_memcpy(i32* %169, i32* %170, i64 %172)
  %174 = load i32*, i32** %15, align 8
  %175 = load i64*, i64** %13, align 8
  %176 = load i64, i64* %175, align 8
  %177 = call i32 @bin_clear_free(i32* %174, i64 %176)
  %178 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %9, align 8
  %179 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %178, i64 1
  %180 = bitcast %struct.wpa_eapol_key* %179 to i32*
  %181 = load i64, i64* %10, align 8
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  %183 = load i64*, i64** %13, align 8
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @WPA_PUT_BE16(i32* %182, i64 %184)
  br label %195

186:                                              ; preds = %90
  %187 = load %struct.wpa_sm*, %struct.wpa_sm** %8, align 8
  %188 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %187, i32 0, i32 0
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @MSG_WARNING, align 4
  %193 = load i32, i32* %11, align 4
  %194 = call i32 (i32, i32, i8*, ...) @wpa_msg(i32 %191, i32 %192, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %193)
  store i32 -1, i32* %7, align 4
  br label %202

195:                                              ; preds = %168
  br label %196

196:                                              ; preds = %195, %79
  %197 = load i32, i32* @MSG_DEBUG, align 4
  %198 = load i32*, i32** %12, align 8
  %199 = load i64*, i64** %13, align 8
  %200 = load i64, i64* %199, align 8
  %201 = call i32 @wpa_hexdump_key(i32 %197, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32* %198, i64 %200)
  store i32 0, i32* %7, align 4
  br label %202

202:                                              ; preds = %196, %186, %156, %131, %111, %69, %25
  %203 = load i32, i32* %7, align 4
  ret i32 %203
}

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i32 @wpa_msg(i32, i32, i8*, ...) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #1

declare dso_local i64 @rc4_skip(i32*, i32, i32, i32*, i64) #1

declare dso_local i32 @forced_memzero(i32*, i32) #1

declare dso_local i64 @wpa_use_aes_key_wrap(i32) #1

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i64 @aes_unwrap(i32*, i64, i64, i32*, i32*) #1

declare dso_local i32 @bin_clear_free(i32*, i64) #1

declare dso_local i32 @WPA_PUT_BE16(i32*, i64) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
