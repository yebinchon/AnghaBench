; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mesh_rsn.c_mesh_rsn_protect_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mesh_rsn.c_mesh_rsn_protect_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mesh_rsn = type { i64, i32, i32, %struct.TYPE_2__*, i32, i64, i32 }
%struct.TYPE_2__ = type { i64* }
%struct.sta_info = type { i64*, i32, i32, i32 }
%struct.wpabuf = type { i32 }
%struct.ieee80211_ampe_ie = type { i64*, i64*, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@PLINK_OPEN = common dso_local global i64 0, align 8
@WPA_KEY_RSC_LEN = common dso_local global i64 0, align 8
@AES_BLOCK_SIZE = common dso_local global i64 0, align 8
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"protect frame: buffer too small\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"protect frame: out of memory\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@WLAN_EID_AMPE = common dso_local global i64 0, align 8
@RSN_CIPHER_SUITE_CCMP = common dso_local global i32 0, align 4
@WPA_NONCE_LEN = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"mesh: Plaintext AMPE element\00", align 1
@WLAN_EID_MIC = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"protect frame: failed to encrypt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mesh_rsn_protect_frame(%struct.mesh_rsn* %0, %struct.sta_info* %1, i64* %2, %struct.wpabuf* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mesh_rsn*, align 8
  %7 = alloca %struct.sta_info*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca %struct.ieee80211_ampe_ie*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca [3 x i64*], align 16
  %16 = alloca [3 x i64], align 16
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.mesh_rsn* %0, %struct.mesh_rsn** %6, align 8
  store %struct.sta_info* %1, %struct.sta_info** %7, align 8
  store i64* %2, i64** %8, align 8
  store %struct.wpabuf* %3, %struct.wpabuf** %9, align 8
  %19 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %20 = call i64* @wpabuf_head_u8(%struct.wpabuf* %19)
  %21 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %22 = call i32 @wpabuf_len(%struct.wpabuf* %21)
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %20, i64 %23
  store i64* %24, i64** %11, align 8
  %25 = getelementptr inbounds [3 x i64*], [3 x i64*]* %15, i64 0, i64 0
  %26 = load %struct.mesh_rsn*, %struct.mesh_rsn** %6, align 8
  %27 = getelementptr inbounds %struct.mesh_rsn, %struct.mesh_rsn* %26, i32 0, i32 3
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  store i64* %30, i64** %25, align 8
  %31 = getelementptr inbounds i64*, i64** %25, i64 1
  %32 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %33 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  store i64* %34, i64** %31, align 8
  %35 = getelementptr inbounds i64*, i64** %31, i64 1
  %36 = load i64*, i64** %8, align 8
  store i64* %36, i64** %35, align 8
  %37 = getelementptr inbounds [3 x i64], [3 x i64]* %16, i64 0, i64 0
  %38 = load i32, i32* @ETH_ALEN, align 4
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %37, align 8
  %40 = getelementptr inbounds i64, i64* %37, i64 1
  %41 = load i32, i32* @ETH_ALEN, align 4
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %40, align 8
  %43 = getelementptr inbounds i64, i64* %40, i64 1
  %44 = load i64*, i64** %11, align 8
  %45 = load i64*, i64** %8, align 8
  %46 = ptrtoint i64* %44 to i64
  %47 = ptrtoint i64* %45 to i64
  %48 = sub i64 %46, %47
  %49 = sdiv exact i64 %48, 8
  store i64 %49, i64* %43, align 8
  store i32 0, i32* %17, align 4
  store i64 24, i64* %18, align 8
  %50 = load i64*, i64** %8, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PLINK_OPEN, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %4
  %56 = load %struct.mesh_rsn*, %struct.mesh_rsn** %6, align 8
  %57 = getelementptr inbounds %struct.mesh_rsn, %struct.mesh_rsn* %56, i32 0, i32 5
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @WPA_KEY_RSC_LEN, align 8
  %60 = add nsw i64 %58, %59
  %61 = add nsw i64 %60, 4
  %62 = load i64, i64* %18, align 8
  %63 = add i64 %62, %61
  store i64 %63, i64* %18, align 8
  br label %64

64:                                               ; preds = %55, %4
  %65 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %66 = add nsw i64 2, %65
  %67 = add nsw i64 %66, 2
  %68 = load i64, i64* %18, align 8
  %69 = add i64 %67, %68
  %70 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %71 = call i64 @wpabuf_tailroom(%struct.wpabuf* %70)
  %72 = icmp ugt i64 %69, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %64
  %74 = load i32, i32* @MSG_ERROR, align 4
  %75 = call i32 @wpa_printf(i32 %74, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %199

78:                                               ; preds = %64
  %79 = load i64, i64* %18, align 8
  %80 = add i64 2, %79
  %81 = trunc i64 %80 to i32
  %82 = call i64* @os_zalloc(i32 %81)
  store i64* %82, i64** %12, align 8
  %83 = load i64*, i64** %12, align 8
  %84 = icmp ne i64* %83, null
  br i1 %84, label %90, label %85

85:                                               ; preds = %78
  %86 = load i32, i32* @MSG_ERROR, align 4
  %87 = call i32 @wpa_printf(i32 %86, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %5, align 4
  br label %199

90:                                               ; preds = %78
  %91 = load i64, i64* @WLAN_EID_AMPE, align 8
  %92 = load i64*, i64** %12, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 0
  store i64 %91, i64* %93, align 8
  %94 = load i64, i64* %18, align 8
  %95 = load i64*, i64** %12, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 1
  store i64 %94, i64* %96, align 8
  %97 = load i64*, i64** %12, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 2
  %99 = bitcast i64* %98 to %struct.ieee80211_ampe_ie*
  store %struct.ieee80211_ampe_ie* %99, %struct.ieee80211_ampe_ie** %10, align 8
  %100 = load %struct.ieee80211_ampe_ie*, %struct.ieee80211_ampe_ie** %10, align 8
  %101 = getelementptr inbounds %struct.ieee80211_ampe_ie, %struct.ieee80211_ampe_ie* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @RSN_CIPHER_SUITE_CCMP, align 4
  %104 = call i32 @RSN_SELECTOR_PUT(i32 %102, i32 %103)
  %105 = load %struct.ieee80211_ampe_ie*, %struct.ieee80211_ampe_ie** %10, align 8
  %106 = getelementptr inbounds %struct.ieee80211_ampe_ie, %struct.ieee80211_ampe_ie* %105, i32 0, i32 0
  %107 = load i64*, i64** %106, align 8
  %108 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %109 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load i64, i64* @WPA_NONCE_LEN, align 8
  %112 = call i32 @os_memcpy(i64* %107, i32 %110, i64 %111)
  %113 = load %struct.ieee80211_ampe_ie*, %struct.ieee80211_ampe_ie** %10, align 8
  %114 = getelementptr inbounds %struct.ieee80211_ampe_ie, %struct.ieee80211_ampe_ie* %113, i32 0, i32 1
  %115 = load i64*, i64** %114, align 8
  %116 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %117 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load i64, i64* @WPA_NONCE_LEN, align 8
  %120 = call i32 @os_memcpy(i64* %115, i32 %118, i64 %119)
  %121 = load %struct.ieee80211_ampe_ie*, %struct.ieee80211_ampe_ie** %10, align 8
  %122 = getelementptr inbounds %struct.ieee80211_ampe_ie, %struct.ieee80211_ampe_ie* %121, i64 1
  %123 = bitcast %struct.ieee80211_ampe_ie* %122 to i64*
  store i64* %123, i64** %13, align 8
  %124 = load i64*, i64** %8, align 8
  %125 = getelementptr inbounds i64, i64* %124, i64 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @PLINK_OPEN, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %90
  br label %159

130:                                              ; preds = %90
  %131 = load i64*, i64** %13, align 8
  %132 = load %struct.mesh_rsn*, %struct.mesh_rsn** %6, align 8
  %133 = getelementptr inbounds %struct.mesh_rsn, %struct.mesh_rsn* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.mesh_rsn*, %struct.mesh_rsn** %6, align 8
  %136 = getelementptr inbounds %struct.mesh_rsn, %struct.mesh_rsn* %135, i32 0, i32 5
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @os_memcpy(i64* %131, i32 %134, i64 %137)
  %139 = load %struct.mesh_rsn*, %struct.mesh_rsn** %6, align 8
  %140 = getelementptr inbounds %struct.mesh_rsn, %struct.mesh_rsn* %139, i32 0, i32 5
  %141 = load i64, i64* %140, align 8
  %142 = load i64*, i64** %13, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 %141
  store i64* %143, i64** %13, align 8
  %144 = load %struct.mesh_rsn*, %struct.mesh_rsn** %6, align 8
  %145 = getelementptr inbounds %struct.mesh_rsn, %struct.mesh_rsn* %144, i32 0, i32 3
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = load %struct.mesh_rsn*, %struct.mesh_rsn** %6, align 8
  %148 = getelementptr inbounds %struct.mesh_rsn, %struct.mesh_rsn* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = load i64*, i64** %13, align 8
  %151 = call i32 @wpa_drv_get_seqnum(%struct.TYPE_2__* %146, i32* null, i32 %149, i64* %150)
  %152 = load i64, i64* @WPA_KEY_RSC_LEN, align 8
  %153 = load i64*, i64** %13, align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 %152
  store i64* %154, i64** %13, align 8
  %155 = load i64*, i64** %13, align 8
  %156 = call i32 @WPA_PUT_LE32(i64* %155, i32 -1)
  %157 = load i64*, i64** %13, align 8
  %158 = getelementptr inbounds i64, i64* %157, i64 4
  store i64* %158, i64** %13, align 8
  br label %159

159:                                              ; preds = %130, %129
  %160 = load i32, i32* @MSG_DEBUG, align 4
  %161 = load i64*, i64** %12, align 8
  %162 = load i64, i64* %18, align 8
  %163 = add i64 2, %162
  %164 = trunc i64 %163 to i32
  %165 = call i32 @wpa_hexdump_key(i32 %160, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64* %161, i32 %164)
  %166 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %167 = load i64, i64* @WLAN_EID_MIC, align 8
  %168 = call i32 @wpabuf_put_u8(%struct.wpabuf* %166, i64 %167)
  %169 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %170 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %171 = call i32 @wpabuf_put_u8(%struct.wpabuf* %169, i64 %170)
  %172 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %173 = load i64, i64* %18, align 8
  %174 = add i64 2, %173
  %175 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %176 = add i64 %174, %175
  %177 = call i64* @wpabuf_put(%struct.wpabuf* %172, i64 %176)
  store i64* %177, i64** %14, align 8
  %178 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %179 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = load i64*, i64** %12, align 8
  %182 = load i64, i64* %18, align 8
  %183 = add i64 2, %182
  %184 = trunc i64 %183 to i32
  %185 = getelementptr inbounds [3 x i64*], [3 x i64*]* %15, i64 0, i64 0
  %186 = getelementptr inbounds [3 x i64], [3 x i64]* %16, i64 0, i64 0
  %187 = load i64*, i64** %14, align 8
  %188 = call i64 @aes_siv_encrypt(i32 %180, i32 4, i64* %181, i32 %184, i32 3, i64** %185, i64* %186, i64* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %159
  %191 = load i32, i32* @MSG_ERROR, align 4
  %192 = call i32 @wpa_printf(i32 %191, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %193 = load i32, i32* @ENOMEM, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %17, align 4
  br label %195

195:                                              ; preds = %190, %159
  %196 = load i64*, i64** %12, align 8
  %197 = call i32 @os_free(i64* %196)
  %198 = load i32, i32* %17, align 4
  store i32 %198, i32* %5, align 4
  br label %199

199:                                              ; preds = %195, %85, %73
  %200 = load i32, i32* %5, align 4
  ret i32 %200
}

declare dso_local i64* @wpabuf_head_u8(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i64 @wpabuf_tailroom(%struct.wpabuf*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64* @os_zalloc(i32) #1

declare dso_local i32 @RSN_SELECTOR_PUT(i32, i32) #1

declare dso_local i32 @os_memcpy(i64*, i32, i64) #1

declare dso_local i32 @wpa_drv_get_seqnum(%struct.TYPE_2__*, i32*, i32, i64*) #1

declare dso_local i32 @WPA_PUT_LE32(i64*, i32) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i64*, i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i64) #1

declare dso_local i64* @wpabuf_put(%struct.wpabuf*, i64) #1

declare dso_local i64 @aes_siv_encrypt(i32, i32, i64*, i32, i32, i64**, i64*, i64*) #1

declare dso_local i32 @os_free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
