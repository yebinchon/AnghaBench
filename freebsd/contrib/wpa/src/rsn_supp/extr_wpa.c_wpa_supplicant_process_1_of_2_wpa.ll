; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_supplicant_process_1_of_2_wpa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_supplicant_process_1_of_2_wpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32* }
%struct.wpa_eapol_key = type { i32*, i32 }
%struct.wpa_gtk_data = type { i64, i64, i32, i32*, i32, i32 }

@WPA_KEY_INFO_TYPE_HMAC_SHA1_AES = common dso_local global i64 0, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"WPA: Too short maxkeylen (%lu)\00", align 1
@WPA_KEY_INFO_KEY_INDEX_MASK = common dso_local global i64 0, align 8
@WPA_KEY_INFO_KEY_INDEX_SHIFT = common dso_local global i64 0, align 8
@WPA_KEY_INFO_TYPE_HMAC_MD5_RC4 = common dso_local global i64 0, align 8
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"WPA: RC4 key data too long (%lu)\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"WPA: RC4 failed\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"WPA: Unsupported AES-WRAP len %lu\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"WPA: AES-WRAP key data too long (keydatalen=%lu maxkeylen=%lu)\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"WPA: AES unwrap failed - could not decrypt GTK\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"WPA: Unsupported key_info type %d\00", align 1
@WPA_KEY_INFO_TXRX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_sm*, %struct.wpa_eapol_key*, i32*, i64, i64, i64, %struct.wpa_gtk_data*)* @wpa_supplicant_process_1_of_2_wpa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_supplicant_process_1_of_2_wpa(%struct.wpa_sm* %0, %struct.wpa_eapol_key* %1, i32* %2, i64 %3, i64 %4, i64 %5, %struct.wpa_gtk_data* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.wpa_sm*, align 8
  %10 = alloca %struct.wpa_eapol_key*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.wpa_gtk_data*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca [32 x i32], align 16
  store %struct.wpa_sm* %0, %struct.wpa_sm** %9, align 8
  store %struct.wpa_eapol_key* %1, %struct.wpa_eapol_key** %10, align 8
  store i32* %2, i32** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store %struct.wpa_gtk_data* %6, %struct.wpa_gtk_data** %15, align 8
  %19 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %10, align 8
  %20 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @WPA_GET_BE16(i32 %21)
  store i64 %22, i64* %17, align 8
  %23 = load i64, i64* %12, align 8
  store i64 %23, i64* %16, align 8
  %24 = load i64, i64* %14, align 8
  %25 = load i64, i64* @WPA_KEY_INFO_TYPE_HMAC_SHA1_AES, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %7
  %28 = load i64, i64* %16, align 8
  %29 = icmp ult i64 %28, 8
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load %struct.wpa_sm*, %struct.wpa_sm** %9, align 8
  %32 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MSG_INFO, align 4
  %37 = load i64, i64* %16, align 8
  %38 = call i32 (i32, i32, i8*, ...) @wpa_msg(i32 %35, i32 %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %37)
  store i32 -1, i32* %8, align 4
  br label %215

39:                                               ; preds = %27
  %40 = load i64, i64* %16, align 8
  %41 = sub i64 %40, 8
  store i64 %41, i64* %16, align 8
  br label %42

42:                                               ; preds = %39, %7
  %43 = load i64, i64* %17, align 8
  %44 = load i64, i64* %16, align 8
  %45 = icmp ugt i64 %43, %44
  br i1 %45, label %59, label %46

46:                                               ; preds = %42
  %47 = load %struct.wpa_sm*, %struct.wpa_sm** %9, align 8
  %48 = load %struct.wpa_sm*, %struct.wpa_sm** %9, align 8
  %49 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i64, i64* %17, align 8
  %52 = load i64, i64* %16, align 8
  %53 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %15, align 8
  %54 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %53, i32 0, i32 5
  %55 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %15, align 8
  %56 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %55, i32 0, i32 4
  %57 = call i64 @wpa_supplicant_check_group_cipher(%struct.wpa_sm* %47, i32 %50, i64 %51, i64 %52, i32* %54, i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %46, %42
  store i32 -1, i32* %8, align 4
  br label %215

60:                                               ; preds = %46
  %61 = load i64, i64* %17, align 8
  %62 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %15, align 8
  %63 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* @WPA_KEY_INFO_KEY_INDEX_MASK, align 8
  %66 = and i64 %64, %65
  %67 = load i64, i64* @WPA_KEY_INFO_KEY_INDEX_SHIFT, align 8
  %68 = lshr i64 %66, %67
  %69 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %15, align 8
  %70 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %69, i32 0, i32 1
  store i64 %68, i64* %70, align 8
  %71 = load i64, i64* %14, align 8
  %72 = load i64, i64* @WPA_KEY_INFO_TYPE_HMAC_MD5_RC4, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %136

74:                                               ; preds = %60
  %75 = load %struct.wpa_sm*, %struct.wpa_sm** %9, align 8
  %76 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 16
  br i1 %79, label %80, label %136

80:                                               ; preds = %74
  %81 = load i64, i64* %12, align 8
  %82 = icmp ugt i64 %81, 8
  br i1 %82, label %83, label %92

83:                                               ; preds = %80
  %84 = load %struct.wpa_sm*, %struct.wpa_sm** %9, align 8
  %85 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @MSG_WARNING, align 4
  %90 = load i64, i64* %12, align 8
  %91 = call i32 (i32, i32, i8*, ...) @wpa_msg(i32 %88, i32 %89, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %90)
  store i32 -1, i32* %8, align 4
  br label %215

92:                                               ; preds = %80
  %93 = getelementptr inbounds [32 x i32], [32 x i32]* %18, i64 0, i64 0
  %94 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %10, align 8
  %95 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @os_memcpy(i32* %93, i32* %96, i64 16)
  %98 = getelementptr inbounds [32 x i32], [32 x i32]* %18, i64 0, i64 0
  %99 = getelementptr inbounds i32, i32* %98, i64 16
  %100 = load %struct.wpa_sm*, %struct.wpa_sm** %9, align 8
  %101 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.wpa_sm*, %struct.wpa_sm** %9, align 8
  %105 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = call i32 @os_memcpy(i32* %99, i32* %103, i64 %108)
  %110 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %15, align 8
  %111 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %110, i32 0, i32 3
  %112 = load i32*, i32** %111, align 8
  %113 = load i32*, i32** %11, align 8
  %114 = load i64, i64* %12, align 8
  %115 = call i32 @os_memcpy(i32* %112, i32* %113, i64 %114)
  %116 = getelementptr inbounds [32 x i32], [32 x i32]* %18, i64 0, i64 0
  %117 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %15, align 8
  %118 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %117, i32 0, i32 3
  %119 = load i32*, i32** %118, align 8
  %120 = load i64, i64* %12, align 8
  %121 = call i64 @rc4_skip(i32* %116, i32 32, i32 256, i32* %119, i64 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %92
  %124 = getelementptr inbounds [32 x i32], [32 x i32]* %18, i64 0, i64 0
  %125 = call i32 @forced_memzero(i32* %124, i32 128)
  %126 = load %struct.wpa_sm*, %struct.wpa_sm** %9, align 8
  %127 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %126, i32 0, i32 0
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @MSG_ERROR, align 4
  %132 = call i32 (i32, i32, i8*, ...) @wpa_msg(i32 %130, i32 %131, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %215

133:                                              ; preds = %92
  %134 = getelementptr inbounds [32 x i32], [32 x i32]* %18, i64 0, i64 0
  %135 = call i32 @forced_memzero(i32* %134, i32 128)
  br label %203

136:                                              ; preds = %74, %60
  %137 = load i64, i64* %14, align 8
  %138 = load i64, i64* @WPA_KEY_INFO_TYPE_HMAC_SHA1_AES, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %193

140:                                              ; preds = %136
  %141 = load i64, i64* %16, align 8
  %142 = urem i64 %141, 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %140
  %145 = load %struct.wpa_sm*, %struct.wpa_sm** %9, align 8
  %146 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %145, i32 0, i32 0
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @MSG_WARNING, align 4
  %151 = load i64, i64* %16, align 8
  %152 = call i32 (i32, i32, i8*, ...) @wpa_msg(i32 %149, i32 %150, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 %151)
  store i32 -1, i32* %8, align 4
  br label %215

153:                                              ; preds = %140
  %154 = load i64, i64* %16, align 8
  %155 = icmp ugt i64 %154, 8
  br i1 %155, label %156, label %166

156:                                              ; preds = %153
  %157 = load %struct.wpa_sm*, %struct.wpa_sm** %9, align 8
  %158 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %157, i32 0, i32 0
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @MSG_WARNING, align 4
  %163 = load i64, i64* %12, align 8
  %164 = load i64, i64* %16, align 8
  %165 = call i32 (i32, i32, i8*, ...) @wpa_msg(i32 %161, i32 %162, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i64 %163, i64 %164)
  store i32 -1, i32* %8, align 4
  br label %215

166:                                              ; preds = %153
  %167 = load %struct.wpa_sm*, %struct.wpa_sm** %9, align 8
  %168 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = load %struct.wpa_sm*, %struct.wpa_sm** %9, align 8
  %172 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = sext i32 %174 to i64
  %176 = load i64, i64* %16, align 8
  %177 = udiv i64 %176, 8
  %178 = load i32*, i32** %11, align 8
  %179 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %15, align 8
  %180 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %179, i32 0, i32 3
  %181 = load i32*, i32** %180, align 8
  %182 = call i64 @aes_unwrap(i32* %170, i64 %175, i64 %177, i32* %178, i32* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %192

184:                                              ; preds = %166
  %185 = load %struct.wpa_sm*, %struct.wpa_sm** %9, align 8
  %186 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %185, i32 0, i32 0
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @MSG_WARNING, align 4
  %191 = call i32 (i32, i32, i8*, ...) @wpa_msg(i32 %189, i32 %190, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %215

192:                                              ; preds = %166
  br label %202

193:                                              ; preds = %136
  %194 = load %struct.wpa_sm*, %struct.wpa_sm** %9, align 8
  %195 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %194, i32 0, i32 0
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @MSG_WARNING, align 4
  %200 = load i64, i64* %14, align 8
  %201 = call i32 (i32, i32, i8*, ...) @wpa_msg(i32 %198, i32 %199, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i64 %200)
  store i32 -1, i32* %8, align 4
  br label %215

202:                                              ; preds = %192
  br label %203

203:                                              ; preds = %202, %133
  %204 = load %struct.wpa_sm*, %struct.wpa_sm** %9, align 8
  %205 = load i64, i64* %13, align 8
  %206 = load i64, i64* @WPA_KEY_INFO_TXRX, align 8
  %207 = and i64 %205, %206
  %208 = icmp ne i64 %207, 0
  %209 = xor i1 %208, true
  %210 = xor i1 %209, true
  %211 = zext i1 %210 to i32
  %212 = call i32 @wpa_supplicant_gtk_tx_bit_workaround(%struct.wpa_sm* %204, i32 %211)
  %213 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %15, align 8
  %214 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %213, i32 0, i32 2
  store i32 %212, i32* %214, align 8
  store i32 0, i32* %8, align 4
  br label %215

215:                                              ; preds = %203, %193, %184, %156, %144, %123, %83, %59, %30
  %216 = load i32, i32* %8, align 4
  ret i32 %216
}

declare dso_local i64 @WPA_GET_BE16(i32) #1

declare dso_local i32 @wpa_msg(i32, i32, i8*, ...) #1

declare dso_local i64 @wpa_supplicant_check_group_cipher(%struct.wpa_sm*, i32, i64, i64, i32*, i32*) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #1

declare dso_local i64 @rc4_skip(i32*, i32, i32, i32*, i64) #1

declare dso_local i32 @forced_memzero(i32*, i32) #1

declare dso_local i64 @aes_unwrap(i32*, i64, i64, i32*, i32*) #1

declare dso_local i32 @wpa_supplicant_gtk_tx_bit_workaround(%struct.wpa_sm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
