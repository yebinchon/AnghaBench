; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_sm_key_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_sm_key_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i64, i64, i32, i64, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.wpa_eapol_key = type { i32, i32*, i32*, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@WPA_KEY_INFO_TYPE_AKM_DEFINED = common dso_local global i32 0, align 4
@WPA_KEY_INFO_TYPE_AES_128_CMAC = common dso_local global i32 0, align 4
@WPA_CIPHER_TKIP = common dso_local global i64 0, align 8
@WPA_KEY_INFO_TYPE_HMAC_SHA1_AES = common dso_local global i32 0, align 4
@WPA_KEY_INFO_TYPE_HMAC_MD5_RC4 = common dso_local global i32 0, align 4
@MSG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Failed to read BSSID for EAPOL-Key request\00", align 1
@IEEE802_1X_TYPE_EAPOL_KEY = common dso_local global i32 0, align 4
@WPA_PROTO_RSN = common dso_local global i64 0, align 8
@WPA_PROTO_OSEN = common dso_local global i64 0, align 8
@EAPOL_KEY_TYPE_RSN = common dso_local global i32 0, align 4
@EAPOL_KEY_TYPE_WPA = common dso_local global i32 0, align 4
@WPA_KEY_INFO_REQUEST = common dso_local global i32 0, align 4
@WPA_KEY_INFO_SECURE = common dso_local global i32 0, align 4
@WPA_KEY_INFO_MIC = common dso_local global i32 0, align 4
@WPA_KEY_INFO_ERROR = common dso_local global i32 0, align 4
@WPA_KEY_INFO_KEY_TYPE = common dso_local global i32 0, align 4
@WPA_REPLAY_COUNTER_LEN = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"WPA: Sending EAPOL-Key Request (error=%d pairwise=%d ptk_set=%d len=%lu)\00", align 1
@ETH_P_EAPOL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_sm_key_request(%struct.wpa_sm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wpa_sm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.wpa_eapol_key*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store %struct.wpa_sm* %0, %struct.wpa_sm** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %19 = load i32, i32* @ETH_ALEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %13, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %14, align 8
  %23 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %24 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @wpa_use_akm_defined(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* @WPA_KEY_INFO_TYPE_AKM_DEFINED, align 4
  store i32 %29, i32* %12, align 4
  br label %56

30:                                               ; preds = %3
  %31 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %32 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @wpa_key_mgmt_ft(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %38 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @wpa_key_mgmt_sha256(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36, %30
  %43 = load i32, i32* @WPA_KEY_INFO_TYPE_AES_128_CMAC, align 4
  store i32 %43, i32* %12, align 4
  br label %55

44:                                               ; preds = %36
  %45 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %46 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @WPA_CIPHER_TKIP, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @WPA_KEY_INFO_TYPE_HMAC_SHA1_AES, align 4
  store i32 %51, i32* %12, align 4
  br label %54

52:                                               ; preds = %44
  %53 = load i32, i32* @WPA_KEY_INFO_TYPE_HMAC_MD5_RC4, align 4
  store i32 %53, i32* %12, align 4
  br label %54

54:                                               ; preds = %52, %50
  br label %55

55:                                               ; preds = %54, %42
  br label %56

56:                                               ; preds = %55, %28
  %57 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %58 = call i64 @wpa_sm_get_bssid(%struct.wpa_sm* %57, i32* %22)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %62 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %61, i32 0, i32 4
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @MSG_WARNING, align 4
  %67 = call i32 (i32, i32, i8*, ...) @wpa_msg(i32 %65, i32 %66, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %18, align 4
  br label %204

68:                                               ; preds = %56
  %69 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %70 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %73 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @wpa_mic_len(i32 %71, i32 %74)
  store i64 %75, i64* %7, align 8
  %76 = load i64, i64* %7, align 8
  %77 = add i64 32, %76
  %78 = add i64 %77, 2
  store i64 %78, i64* %8, align 8
  %79 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %80 = load i32, i32* @IEEE802_1X_TYPE_EAPOL_KEY, align 4
  %81 = load i64, i64* %8, align 8
  %82 = bitcast %struct.wpa_eapol_key** %10 to i8*
  %83 = call i32* @wpa_sm_alloc_eapol(%struct.wpa_sm* %79, i32 %80, i32* null, i64 %81, i64* %9, i8* %82)
  store i32* %83, i32** %15, align 8
  %84 = load i32*, i32** %15, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %68
  store i32 1, i32* %18, align 4
  br label %204

87:                                               ; preds = %68
  %88 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %89 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @WPA_PROTO_RSN, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %99, label %93

93:                                               ; preds = %87
  %94 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %95 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @WPA_PROTO_OSEN, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %93, %87
  %100 = load i32, i32* @EAPOL_KEY_TYPE_RSN, align 4
  br label %103

101:                                              ; preds = %93
  %102 = load i32, i32* @EAPOL_KEY_TYPE_WPA, align 4
  br label %103

103:                                              ; preds = %101, %99
  %104 = phi i32 [ %100, %99 ], [ %102, %101 ]
  %105 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %10, align 8
  %106 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* @WPA_KEY_INFO_REQUEST, align 4
  %108 = load i32, i32* %12, align 4
  %109 = or i32 %107, %108
  store i32 %109, i32* %11, align 4
  %110 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %111 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %103
  %115 = load i32, i32* @WPA_KEY_INFO_SECURE, align 4
  %116 = load i32, i32* %11, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %11, align 4
  br label %118

118:                                              ; preds = %114, %103
  %119 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %120 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %118
  %124 = load i64, i64* %7, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = load i32, i32* @WPA_KEY_INFO_MIC, align 4
  %128 = load i32, i32* %11, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %11, align 4
  br label %130

130:                                              ; preds = %126, %123, %118
  %131 = load i32, i32* %5, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %130
  %134 = load i32, i32* @WPA_KEY_INFO_ERROR, align 4
  %135 = load i32, i32* %11, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %11, align 4
  br label %137

137:                                              ; preds = %133, %130
  %138 = load i32, i32* %6, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %137
  %141 = load i32, i32* @WPA_KEY_INFO_KEY_TYPE, align 4
  %142 = load i32, i32* %11, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %11, align 4
  br label %144

144:                                              ; preds = %140, %137
  %145 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %10, align 8
  %146 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %11, align 4
  %149 = call i32 @WPA_PUT_BE16(i32* %147, i32 %148)
  %150 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %10, align 8
  %151 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = call i32 @WPA_PUT_BE16(i32* %152, i32 0)
  %154 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %10, align 8
  %155 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %158 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @WPA_REPLAY_COUNTER_LEN, align 4
  %161 = call i32 @os_memcpy(i32 %156, i32 %159, i32 %160)
  %162 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %163 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @WPA_REPLAY_COUNTER_LEN, align 4
  %166 = call i32 @inc_byte_array(i32 %164, i32 %165)
  %167 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %10, align 8
  %168 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %167, i64 1
  %169 = bitcast %struct.wpa_eapol_key* %168 to i32*
  store i32* %169, i32** %17, align 8
  %170 = load i32*, i32** %17, align 8
  %171 = load i64, i64* %7, align 8
  %172 = getelementptr inbounds i32, i32* %170, i64 %171
  %173 = call i32 @WPA_PUT_BE16(i32* %172, i32 0)
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* @WPA_KEY_INFO_MIC, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %144
  store i32* null, i32** %16, align 8
  br label %181

179:                                              ; preds = %144
  %180 = load i32*, i32** %17, align 8
  store i32* %180, i32** %16, align 8
  br label %181

181:                                              ; preds = %179, %178
  %182 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %183 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %182, i32 0, i32 4
  %184 = load %struct.TYPE_2__*, %struct.TYPE_2__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @MSG_INFO, align 4
  %188 = load i32, i32* %5, align 4
  %189 = load i32, i32* %6, align 4
  %190 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %191 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %190, i32 0, i32 3
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* %9, align 8
  %194 = call i32 (i32, i32, i8*, ...) @wpa_msg(i32 %186, i32 %187, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 %188, i32 %189, i64 %192, i64 %193)
  %195 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %196 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %197 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %196, i32 0, i32 2
  %198 = load i32, i32* %12, align 4
  %199 = load i32, i32* @ETH_P_EAPOL, align 4
  %200 = load i32*, i32** %15, align 8
  %201 = load i64, i64* %9, align 8
  %202 = load i32*, i32** %16, align 8
  %203 = call i32 @wpa_eapol_key_send(%struct.wpa_sm* %195, i32* %197, i32 %198, i32* %22, i32 %199, i32* %200, i64 %201, i32* %202)
  store i32 0, i32* %18, align 4
  br label %204

204:                                              ; preds = %181, %86, %60
  %205 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %205)
  %206 = load i32, i32* %18, align 4
  switch i32 %206, label %208 [
    i32 0, label %207
    i32 1, label %207
  ]

207:                                              ; preds = %204, %204
  ret void

208:                                              ; preds = %204
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @wpa_use_akm_defined(i32) #2

declare dso_local i64 @wpa_key_mgmt_ft(i32) #2

declare dso_local i64 @wpa_key_mgmt_sha256(i32) #2

declare dso_local i64 @wpa_sm_get_bssid(%struct.wpa_sm*, i32*) #2

declare dso_local i32 @wpa_msg(i32, i32, i8*, ...) #2

declare dso_local i64 @wpa_mic_len(i32, i32) #2

declare dso_local i32* @wpa_sm_alloc_eapol(%struct.wpa_sm*, i32, i32*, i64, i64*, i8*) #2

declare dso_local i32 @WPA_PUT_BE16(i32*, i32) #2

declare dso_local i32 @os_memcpy(i32, i32, i32) #2

declare dso_local i32 @inc_byte_array(i32, i32) #2

declare dso_local i32 @wpa_eapol_key_send(%struct.wpa_sm*, i32*, i32, i32*, i32, i32*, i64, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
