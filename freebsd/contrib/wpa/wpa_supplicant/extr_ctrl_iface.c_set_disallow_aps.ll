; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_set_disallow_aps.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_set_disallow_aps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64, i64, i64, i32, i32, %struct.TYPE_2__, i32, %struct.wpa_ssid*, %struct.wpa_ssid_value*, %struct.wpa_ssid_value* }
%struct.TYPE_2__ = type { i64 }
%struct.wpa_ssid = type { i64, i32, i32 }
%struct.wpa_ssid_value = type { i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"bssid \00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Invalid disallow_aps BSSID value '%s'\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"ssid \00", align 1
@SSID_MAX_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Invalid disallow_aps SSID value '%s'\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"disallow_aps SSID\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Unexpected disallow_aps value '%s'\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"disallow_aps_bssid\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"disallow_aps_ssid_count %d\00", align 1
@WPA_AUTHENTICATING = common dso_local global i64 0, align 8
@WPAS_MODE_INFRA = common dso_local global i64 0, align 8
@WPAS_MODE_IBSS = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [84 x i8] c"Disconnect and try to find another network because current AP was marked disallowed\00", align 1
@WLAN_REASON_DEAUTH_LEAVING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i8*)* @set_disallow_aps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_disallow_aps(%struct.wpa_supplicant* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.wpa_ssid_value*, align 8
  %10 = alloca %struct.wpa_ssid_value*, align 8
  %11 = alloca %struct.wpa_ssid_value*, align 8
  %12 = alloca %struct.wpa_ssid_value*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.wpa_ssid*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store i8* %1, i8** %5, align 8
  %19 = load i32, i32* @ETH_ALEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %7, align 8
  %22 = alloca %struct.wpa_ssid_value, i64 %20, align 16
  store i64 %20, i64* %8, align 8
  store %struct.wpa_ssid_value* null, %struct.wpa_ssid_value** %9, align 8
  store %struct.wpa_ssid_value* null, %struct.wpa_ssid_value** %11, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %23 = load i8*, i8** %5, align 8
  store i8* %23, i8** %6, align 8
  br label %24

24:                                               ; preds = %206, %2
  %25 = load i8*, i8** %6, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %207

27:                                               ; preds = %24
  %28 = load i8*, i8** %6, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %207

33:                                               ; preds = %27
  %34 = load i8*, i8** %6, align 8
  %35 = call i64 @os_strncmp(i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %81

37:                                               ; preds = %33
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 6
  store i8* %39, i8** %6, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @hwaddr_aton2(i8* %40, %struct.wpa_ssid_value* %22)
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %16, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %37
  %45 = load %struct.wpa_ssid_value*, %struct.wpa_ssid_value** %11, align 8
  %46 = call i32 @os_free(%struct.wpa_ssid_value* %45)
  %47 = load %struct.wpa_ssid_value*, %struct.wpa_ssid_value** %9, align 8
  %48 = call i32 @os_free(%struct.wpa_ssid_value* %47)
  %49 = load i32, i32* @MSG_DEBUG, align 4
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 (i32, i8*, ...) @wpa_printf(i32 %49, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %296

52:                                               ; preds = %37
  %53 = load i32, i32* %16, align 4
  %54 = load i8*, i8** %6, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8* %56, i8** %6, align 8
  %57 = load %struct.wpa_ssid_value*, %struct.wpa_ssid_value** %9, align 8
  %58 = load i64, i64* %13, align 8
  %59 = add i64 %58, 1
  %60 = load i32, i32* @ETH_ALEN, align 4
  %61 = call %struct.wpa_ssid_value* @os_realloc_array(%struct.wpa_ssid_value* %57, i64 %59, i32 %60)
  store %struct.wpa_ssid_value* %61, %struct.wpa_ssid_value** %10, align 8
  %62 = load %struct.wpa_ssid_value*, %struct.wpa_ssid_value** %10, align 8
  %63 = icmp eq %struct.wpa_ssid_value* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %52
  %65 = load %struct.wpa_ssid_value*, %struct.wpa_ssid_value** %11, align 8
  %66 = call i32 @os_free(%struct.wpa_ssid_value* %65)
  %67 = load %struct.wpa_ssid_value*, %struct.wpa_ssid_value** %9, align 8
  %68 = call i32 @os_free(%struct.wpa_ssid_value* %67)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %296

69:                                               ; preds = %52
  %70 = load %struct.wpa_ssid_value*, %struct.wpa_ssid_value** %10, align 8
  store %struct.wpa_ssid_value* %70, %struct.wpa_ssid_value** %9, align 8
  %71 = load %struct.wpa_ssid_value*, %struct.wpa_ssid_value** %9, align 8
  %72 = load i64, i64* %13, align 8
  %73 = load i32, i32* @ETH_ALEN, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 %72, %74
  %76 = getelementptr inbounds %struct.wpa_ssid_value, %struct.wpa_ssid_value* %71, i64 %75
  %77 = load i32, i32* @ETH_ALEN, align 4
  %78 = call i32 @os_memcpy(%struct.wpa_ssid_value* %76, %struct.wpa_ssid_value* %22, i32 %77)
  %79 = load i64, i64* %13, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %13, align 8
  br label %198

81:                                               ; preds = %33
  %82 = load i8*, i8** %6, align 8
  %83 = call i64 @os_strncmp(i8* %82, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %189

85:                                               ; preds = %81
  %86 = load i8*, i8** %6, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 5
  store i8* %87, i8** %6, align 8
  %88 = load i8*, i8** %6, align 8
  store i8* %88, i8** %18, align 8
  br label %89

89:                                               ; preds = %104, %85
  %90 = load i8*, i8** %18, align 8
  %91 = load i8, i8* %90, align 1
  %92 = icmp ne i8 %91, 0
  br i1 %92, label %93, label %107

93:                                               ; preds = %89
  %94 = load i8*, i8** %18, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %93
  %99 = load i8*, i8** %18, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 32
  br i1 %102, label %103, label %104

103:                                              ; preds = %98, %93
  br label %107

104:                                              ; preds = %98
  %105 = load i8*, i8** %18, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %18, align 8
  br label %89

107:                                              ; preds = %103, %89
  %108 = load %struct.wpa_ssid_value*, %struct.wpa_ssid_value** %11, align 8
  %109 = load i64, i64* %14, align 8
  %110 = add i64 %109, 1
  %111 = call %struct.wpa_ssid_value* @os_realloc_array(%struct.wpa_ssid_value* %108, i64 %110, i32 8)
  store %struct.wpa_ssid_value* %111, %struct.wpa_ssid_value** %12, align 8
  %112 = load %struct.wpa_ssid_value*, %struct.wpa_ssid_value** %12, align 8
  %113 = icmp eq %struct.wpa_ssid_value* %112, null
  br i1 %113, label %114, label %119

114:                                              ; preds = %107
  %115 = load %struct.wpa_ssid_value*, %struct.wpa_ssid_value** %11, align 8
  %116 = call i32 @os_free(%struct.wpa_ssid_value* %115)
  %117 = load %struct.wpa_ssid_value*, %struct.wpa_ssid_value** %9, align 8
  %118 = call i32 @os_free(%struct.wpa_ssid_value* %117)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %296

119:                                              ; preds = %107
  %120 = load %struct.wpa_ssid_value*, %struct.wpa_ssid_value** %12, align 8
  store %struct.wpa_ssid_value* %120, %struct.wpa_ssid_value** %11, align 8
  %121 = load i8*, i8** %18, align 8
  %122 = load i8*, i8** %6, align 8
  %123 = ptrtoint i8* %121 to i64
  %124 = ptrtoint i8* %122 to i64
  %125 = sub i64 %123, %124
  %126 = and i64 %125, 1
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %154, label %128

128:                                              ; preds = %119
  %129 = load i8*, i8** %18, align 8
  %130 = load i8*, i8** %6, align 8
  %131 = ptrtoint i8* %129 to i64
  %132 = ptrtoint i8* %130 to i64
  %133 = sub i64 %131, %132
  %134 = load i32, i32* @SSID_MAX_LEN, align 4
  %135 = mul nsw i32 2, %134
  %136 = sext i32 %135 to i64
  %137 = icmp sgt i64 %133, %136
  br i1 %137, label %154, label %138

138:                                              ; preds = %128
  %139 = load i8*, i8** %6, align 8
  %140 = load %struct.wpa_ssid_value*, %struct.wpa_ssid_value** %11, align 8
  %141 = load i64, i64* %14, align 8
  %142 = getelementptr inbounds %struct.wpa_ssid_value, %struct.wpa_ssid_value* %140, i64 %141
  %143 = getelementptr inbounds %struct.wpa_ssid_value, %struct.wpa_ssid_value* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i8*, i8** %18, align 8
  %146 = load i8*, i8** %6, align 8
  %147 = ptrtoint i8* %145 to i64
  %148 = ptrtoint i8* %146 to i64
  %149 = sub i64 %147, %148
  %150 = sdiv i64 %149, 2
  %151 = trunc i64 %150 to i32
  %152 = call i64 @hexstr2bin(i8* %139, i32 %144, i32 %151)
  %153 = icmp slt i64 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %138, %128, %119
  %155 = load %struct.wpa_ssid_value*, %struct.wpa_ssid_value** %11, align 8
  %156 = call i32 @os_free(%struct.wpa_ssid_value* %155)
  %157 = load %struct.wpa_ssid_value*, %struct.wpa_ssid_value** %9, align 8
  %158 = call i32 @os_free(%struct.wpa_ssid_value* %157)
  %159 = load i32, i32* @MSG_DEBUG, align 4
  %160 = load i8*, i8** %6, align 8
  %161 = call i32 (i32, i8*, ...) @wpa_printf(i32 %159, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %160)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %296

162:                                              ; preds = %138
  %163 = load i8*, i8** %18, align 8
  %164 = load i8*, i8** %6, align 8
  %165 = ptrtoint i8* %163 to i64
  %166 = ptrtoint i8* %164 to i64
  %167 = sub i64 %165, %166
  %168 = sdiv i64 %167, 2
  %169 = trunc i64 %168 to i32
  %170 = load %struct.wpa_ssid_value*, %struct.wpa_ssid_value** %11, align 8
  %171 = load i64, i64* %14, align 8
  %172 = getelementptr inbounds %struct.wpa_ssid_value, %struct.wpa_ssid_value* %170, i64 %171
  %173 = getelementptr inbounds %struct.wpa_ssid_value, %struct.wpa_ssid_value* %172, i32 0, i32 0
  store i32 %169, i32* %173, align 4
  %174 = load i32, i32* @MSG_DEBUG, align 4
  %175 = load %struct.wpa_ssid_value*, %struct.wpa_ssid_value** %11, align 8
  %176 = load i64, i64* %14, align 8
  %177 = getelementptr inbounds %struct.wpa_ssid_value, %struct.wpa_ssid_value* %175, i64 %176
  %178 = getelementptr inbounds %struct.wpa_ssid_value, %struct.wpa_ssid_value* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.wpa_ssid_value*, %struct.wpa_ssid_value** %11, align 8
  %181 = load i64, i64* %14, align 8
  %182 = getelementptr inbounds %struct.wpa_ssid_value, %struct.wpa_ssid_value* %180, i64 %181
  %183 = getelementptr inbounds %struct.wpa_ssid_value, %struct.wpa_ssid_value* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @wpa_hexdump_ascii(i32 %174, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %179, i32 %184)
  %186 = load i64, i64* %14, align 8
  %187 = add i64 %186, 1
  store i64 %187, i64* %14, align 8
  %188 = load i8*, i8** %18, align 8
  store i8* %188, i8** %6, align 8
  br label %197

189:                                              ; preds = %81
  %190 = load i32, i32* @MSG_DEBUG, align 4
  %191 = load i8*, i8** %6, align 8
  %192 = call i32 (i32, i8*, ...) @wpa_printf(i32 %190, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* %191)
  %193 = load %struct.wpa_ssid_value*, %struct.wpa_ssid_value** %11, align 8
  %194 = call i32 @os_free(%struct.wpa_ssid_value* %193)
  %195 = load %struct.wpa_ssid_value*, %struct.wpa_ssid_value** %9, align 8
  %196 = call i32 @os_free(%struct.wpa_ssid_value* %195)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %296

197:                                              ; preds = %162
  br label %198

198:                                              ; preds = %197, %69
  %199 = load i8*, i8** %6, align 8
  %200 = call i8* @os_strchr(i8* %199, i8 signext 32)
  store i8* %200, i8** %6, align 8
  %201 = load i8*, i8** %6, align 8
  %202 = icmp ne i8* %201, null
  br i1 %202, label %203, label %206

203:                                              ; preds = %198
  %204 = load i8*, i8** %6, align 8
  %205 = getelementptr inbounds i8, i8* %204, i32 1
  store i8* %205, i8** %6, align 8
  br label %206

206:                                              ; preds = %203, %198
  br label %24

207:                                              ; preds = %32, %24
  %208 = load i32, i32* @MSG_DEBUG, align 4
  %209 = load %struct.wpa_ssid_value*, %struct.wpa_ssid_value** %9, align 8
  %210 = load i64, i64* %13, align 8
  %211 = load i32, i32* @ETH_ALEN, align 4
  %212 = sext i32 %211 to i64
  %213 = mul i64 %210, %212
  %214 = call i32 @wpa_hexdump(i32 %208, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), %struct.wpa_ssid_value* %209, i64 %213)
  %215 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %216 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %215, i32 0, i32 9
  %217 = load %struct.wpa_ssid_value*, %struct.wpa_ssid_value** %216, align 8
  %218 = call i32 @os_free(%struct.wpa_ssid_value* %217)
  %219 = load %struct.wpa_ssid_value*, %struct.wpa_ssid_value** %9, align 8
  %220 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %221 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %220, i32 0, i32 9
  store %struct.wpa_ssid_value* %219, %struct.wpa_ssid_value** %221, align 8
  %222 = load i64, i64* %13, align 8
  %223 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %224 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %223, i32 0, i32 0
  store i64 %222, i64* %224, align 8
  %225 = load i32, i32* @MSG_DEBUG, align 4
  %226 = load i64, i64* %14, align 8
  %227 = trunc i64 %226 to i32
  %228 = call i32 (i32, i8*, ...) @wpa_printf(i32 %225, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %227)
  %229 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %230 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %229, i32 0, i32 8
  %231 = load %struct.wpa_ssid_value*, %struct.wpa_ssid_value** %230, align 8
  %232 = call i32 @os_free(%struct.wpa_ssid_value* %231)
  %233 = load %struct.wpa_ssid_value*, %struct.wpa_ssid_value** %11, align 8
  %234 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %235 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %234, i32 0, i32 8
  store %struct.wpa_ssid_value* %233, %struct.wpa_ssid_value** %235, align 8
  %236 = load i64, i64* %14, align 8
  %237 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %238 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %237, i32 0, i32 1
  store i64 %236, i64* %238, align 8
  %239 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %240 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %239, i32 0, i32 7
  %241 = load %struct.wpa_ssid*, %struct.wpa_ssid** %240, align 8
  %242 = icmp ne %struct.wpa_ssid* %241, null
  br i1 %242, label %243, label %249

243:                                              ; preds = %207
  %244 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %245 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %244, i32 0, i32 2
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @WPA_AUTHENTICATING, align 8
  %248 = icmp slt i64 %246, %247
  br i1 %248, label %249, label %250

249:                                              ; preds = %243, %207
  store i32 0, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %296

250:                                              ; preds = %243
  %251 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %252 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %251, i32 0, i32 7
  %253 = load %struct.wpa_ssid*, %struct.wpa_ssid** %252, align 8
  store %struct.wpa_ssid* %253, %struct.wpa_ssid** %15, align 8
  %254 = load %struct.wpa_ssid*, %struct.wpa_ssid** %15, align 8
  %255 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @WPAS_MODE_INFRA, align 8
  %258 = icmp ne i64 %256, %257
  br i1 %258, label %259, label %266

259:                                              ; preds = %250
  %260 = load %struct.wpa_ssid*, %struct.wpa_ssid** %15, align 8
  %261 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @WPAS_MODE_IBSS, align 8
  %264 = icmp ne i64 %262, %263
  br i1 %264, label %265, label %266

265:                                              ; preds = %259
  store i32 0, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %296

266:                                              ; preds = %259, %250
  %267 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %268 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %269 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %268, i32 0, i32 6
  %270 = load i32, i32* %269, align 8
  %271 = call i32 @disallowed_bssid(%struct.wpa_supplicant* %267, i32 %270)
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %284, label %273

273:                                              ; preds = %266
  %274 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %275 = load %struct.wpa_ssid*, %struct.wpa_ssid** %15, align 8
  %276 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.wpa_ssid*, %struct.wpa_ssid** %15, align 8
  %279 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 8
  %281 = call i32 @disallowed_ssid(%struct.wpa_supplicant* %274, i32 %277, i32 %280)
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %284, label %283

283:                                              ; preds = %273
  store i32 0, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %296

284:                                              ; preds = %273, %266
  %285 = load i32, i32* @MSG_DEBUG, align 4
  %286 = call i32 (i32, i8*, ...) @wpa_printf(i32 %285, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.8, i64 0, i64 0))
  %287 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %288 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %287, i32 0, i32 3
  store i32 1, i32* %288, align 8
  %289 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %290 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %289, i32 0, i32 4
  store i32 1, i32* %290, align 4
  %291 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %292 = load i32, i32* @WLAN_REASON_DEAUTH_LEAVING, align 4
  %293 = call i32 @wpa_supplicant_deauthenticate(%struct.wpa_supplicant* %291, i32 %292)
  %294 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %295 = call i32 @wpa_supplicant_req_scan(%struct.wpa_supplicant* %294, i32 0, i32 0)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %296

296:                                              ; preds = %284, %283, %265, %249, %189, %154, %114, %64, %44
  %297 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %297)
  %298 = load i32, i32* %3, align 4
  ret i32 %298
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @os_strncmp(i8*, i8*, i32) #2

declare dso_local i32 @hwaddr_aton2(i8*, %struct.wpa_ssid_value*) #2

declare dso_local i32 @os_free(%struct.wpa_ssid_value*) #2

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local %struct.wpa_ssid_value* @os_realloc_array(%struct.wpa_ssid_value*, i64, i32) #2

declare dso_local i32 @os_memcpy(%struct.wpa_ssid_value*, %struct.wpa_ssid_value*, i32) #2

declare dso_local i64 @hexstr2bin(i8*, i32, i32) #2

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32, i32) #2

declare dso_local i8* @os_strchr(i8*, i8 signext) #2

declare dso_local i32 @wpa_hexdump(i32, i8*, %struct.wpa_ssid_value*, i64) #2

declare dso_local i32 @disallowed_bssid(%struct.wpa_supplicant*, i32) #2

declare dso_local i32 @disallowed_ssid(%struct.wpa_supplicant*, i32, i32) #2

declare dso_local i32 @wpa_supplicant_deauthenticate(%struct.wpa_supplicant*, i32) #2

declare dso_local i32 @wpa_supplicant_req_scan(%struct.wpa_supplicant*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
