; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wps_supplicant.c_wpas_wps_remove_dup_network.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wps_supplicant.c_wpas_wps_remove_dup_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__*, %struct.wpa_ssid* }
%struct.TYPE_2__ = type { %struct.wpa_ssid* }
%struct.wpa_ssid = type { i64, i64, i64, i64, i32, i64, i32, i32, i32, i64, i64, i64, i64, i64, %struct.wpa_ssid* }

@ETH_ALEN = common dso_local global i32 0, align 4
@WPA_CIPHER_CCMP = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"WPS: M8 Creds with different passphrase - do not merge\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"WPS: M8 Creds with different PSK - do not merge\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"WPS: M8 Creds with different passphrase/PSK type - do not merge\00", align 1
@.str.3 = private unnamed_addr constant [76 x i8] c"WPS: Workaround - merge likely WPA/WPA2-mixed mode creds in same M8 message\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Remove duplicate network %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*, %struct.wpa_ssid*)* @wpas_wps_remove_dup_network to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpas_wps_remove_dup_network(%struct.wpa_supplicant* %0, %struct.wpa_ssid* %1) #0 {
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.wpa_ssid*, align 8
  %5 = alloca %struct.wpa_ssid*, align 8
  %6 = alloca %struct.wpa_ssid*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %4, align 8
  %7 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %8 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  store %struct.wpa_ssid* %11, %struct.wpa_ssid** %5, align 8
  %12 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %13 = icmp ne %struct.wpa_ssid* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %16 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %15, i32 0, i32 14
  %17 = load %struct.wpa_ssid*, %struct.wpa_ssid** %16, align 8
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %14
  %20 = phi %struct.wpa_ssid* [ %17, %14 ], [ null, %18 ]
  store %struct.wpa_ssid* %20, %struct.wpa_ssid** %6, align 8
  br label %21

21:                                               ; preds = %302, %19
  %22 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %23 = icmp ne %struct.wpa_ssid* %22, null
  br i1 %23, label %24, label %304

24:                                               ; preds = %21
  %25 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %26 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %27 = icmp eq %struct.wpa_ssid* %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %293

29:                                               ; preds = %24
  %30 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %31 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %36 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %34, %29
  %40 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %41 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %44 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %293

48:                                               ; preds = %39
  %49 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %50 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %49, i32 0, i32 13
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %53 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %52, i32 0, i32 13
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* @ETH_ALEN, align 4
  %56 = call i64 @os_memcmp(i64 %51, i64 %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  br label %293

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59, %34
  %61 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %62 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %60
  %66 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %67 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %70 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %68, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %65, %60
  br label %293

74:                                               ; preds = %65
  %75 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %76 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %75, i32 0, i32 12
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %99

79:                                               ; preds = %74
  %80 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %81 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %80, i32 0, i32 12
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %79
  %85 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %86 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %85, i32 0, i32 12
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %89 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %88, i32 0, i32 12
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %92 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  %95 = call i64 @os_memcmp(i64 %87, i64 %90, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %84
  br label %293

98:                                               ; preds = %84
  br label %111

99:                                               ; preds = %79, %74
  %100 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %101 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %100, i32 0, i32 12
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %99
  %105 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %106 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %105, i32 0, i32 12
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104, %99
  br label %293

110:                                              ; preds = %104
  br label %111

111:                                              ; preds = %110, %98
  %112 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %113 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %116 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %114, %117
  br i1 %118, label %146, label %119

119:                                              ; preds = %111
  %120 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %121 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %124 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %122, %125
  br i1 %126, label %146, label %127

127:                                              ; preds = %119
  %128 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %129 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %132 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = icmp ne i32 %130, %133
  br i1 %134, label %135, label %147

135:                                              ; preds = %127
  %136 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %137 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %140 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = and i32 %138, %141
  %143 = load i32, i32* @WPA_CIPHER_CCMP, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %135, %119, %111
  br label %293

147:                                              ; preds = %135, %127
  %148 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %149 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %148, i32 0, i32 5
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %250

152:                                              ; preds = %147
  %153 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %154 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %153, i32 0, i32 5
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %157 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %156, i32 0, i32 5
  %158 = load i64, i64* %157, align 8
  %159 = icmp eq i64 %155, %158
  br i1 %159, label %160, label %250

160:                                              ; preds = %152
  %161 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %162 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %161, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = call i64 @wpa_key_mgmt_wpa_psk(i64 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %250

166:                                              ; preds = %160
  %167 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %168 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %167, i32 0, i32 9
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %188

171:                                              ; preds = %166
  %172 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %173 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %172, i32 0, i32 9
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %188

176:                                              ; preds = %171
  %177 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %178 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %177, i32 0, i32 9
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %181 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %180, i32 0, i32 9
  %182 = load i64, i64* %181, align 8
  %183 = call i64 @os_strcmp(i64 %179, i64 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %176
  %186 = load i32, i32* @MSG_DEBUG, align 4
  %187 = call i32 (i32, i8*, ...) @wpa_printf(i32 %186, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %293

188:                                              ; preds = %176, %171, %166
  %189 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %190 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %189, i32 0, i32 11
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %210

193:                                              ; preds = %188
  %194 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %195 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %194, i32 0, i32 11
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %207

198:                                              ; preds = %193
  %199 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %200 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %199, i32 0, i32 10
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %203 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %202, i32 0, i32 10
  %204 = load i64, i64* %203, align 8
  %205 = call i64 @os_memcmp(i64 %201, i64 %204, i32 32)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %198, %193
  %208 = load i32, i32* @MSG_DEBUG, align 4
  %209 = call i32 (i32, i8*, ...) @wpa_printf(i32 %208, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %293

210:                                              ; preds = %198, %188
  %211 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %212 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %211, i32 0, i32 9
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %210
  %216 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %217 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %216, i32 0, i32 9
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %230

220:                                              ; preds = %215, %210
  %221 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %222 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %221, i32 0, i32 9
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %233, label %225

225:                                              ; preds = %220
  %226 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %227 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %226, i32 0, i32 9
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %233

230:                                              ; preds = %225, %215
  %231 = load i32, i32* @MSG_DEBUG, align 4
  %232 = call i32 (i32, i8*, ...) @wpa_printf(i32 %231, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0))
  br label %293

233:                                              ; preds = %225, %220
  %234 = load i32, i32* @MSG_DEBUG, align 4
  %235 = call i32 (i32, i8*, ...) @wpa_printf(i32 %234, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0))
  %236 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %237 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %236, i32 0, i32 8
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %240 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %239, i32 0, i32 8
  %241 = load i32, i32* %240, align 8
  %242 = or i32 %241, %238
  store i32 %242, i32* %240, align 8
  %243 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %244 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %243, i32 0, i32 7
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %247 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %246, i32 0, i32 7
  %248 = load i32, i32* %247, align 4
  %249 = or i32 %248, %245
  store i32 %249, i32* %247, align 4
  br label %268

250:                                              ; preds = %160, %152, %147
  %251 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %252 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %251, i32 0, i32 8
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %255 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %254, i32 0, i32 8
  %256 = load i32, i32* %255, align 8
  %257 = icmp ne i32 %253, %256
  br i1 %257, label %266, label %258

258:                                              ; preds = %250
  %259 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %260 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %259, i32 0, i32 7
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %263 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %262, i32 0, i32 7
  %264 = load i32, i32* %263, align 4
  %265 = icmp ne i32 %261, %264
  br i1 %265, label %266, label %267

266:                                              ; preds = %258, %250
  br label %293

267:                                              ; preds = %258
  br label %268

268:                                              ; preds = %267, %233
  %269 = load i32, i32* @MSG_DEBUG, align 4
  %270 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %271 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %270, i32 0, i32 6
  %272 = load i32, i32* %271, align 8
  %273 = call i32 (i32, i8*, ...) @wpa_printf(i32 %269, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %272)
  %274 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %275 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %276 = call i32 @wpas_notify_network_removed(%struct.wpa_supplicant* %274, %struct.wpa_ssid* %275)
  %277 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %278 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %277, i32 0, i32 1
  %279 = load %struct.wpa_ssid*, %struct.wpa_ssid** %278, align 8
  %280 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %281 = icmp eq %struct.wpa_ssid* %279, %280
  br i1 %281, label %282, label %285

282:                                              ; preds = %268
  %283 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %284 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %283, i32 0, i32 1
  store %struct.wpa_ssid* null, %struct.wpa_ssid** %284, align 8
  br label %285

285:                                              ; preds = %282, %268
  %286 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %287 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %286, i32 0, i32 0
  %288 = load %struct.TYPE_2__*, %struct.TYPE_2__** %287, align 8
  %289 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %290 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %289, i32 0, i32 6
  %291 = load i32, i32* %290, align 8
  %292 = call i32 @wpa_config_remove_network(%struct.TYPE_2__* %288, i32 %291)
  br label %293

293:                                              ; preds = %285, %266, %230, %207, %185, %146, %109, %97, %73, %58, %47, %28
  %294 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  store %struct.wpa_ssid* %294, %struct.wpa_ssid** %5, align 8
  %295 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %296 = icmp ne %struct.wpa_ssid* %295, null
  br i1 %296, label %297, label %301

297:                                              ; preds = %293
  %298 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %299 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %298, i32 0, i32 14
  %300 = load %struct.wpa_ssid*, %struct.wpa_ssid** %299, align 8
  br label %302

301:                                              ; preds = %293
  br label %302

302:                                              ; preds = %301, %297
  %303 = phi %struct.wpa_ssid* [ %300, %297 ], [ null, %301 ]
  store %struct.wpa_ssid* %303, %struct.wpa_ssid** %6, align 8
  br label %21

304:                                              ; preds = %21
  ret void
}

declare dso_local i64 @os_memcmp(i64, i64, i32) #1

declare dso_local i64 @wpa_key_mgmt_wpa_psk(i64) #1

declare dso_local i64 @os_strcmp(i64, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpas_notify_network_removed(%struct.wpa_supplicant*, %struct.wpa_ssid*) #1

declare dso_local i32 @wpa_config_remove_network(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
