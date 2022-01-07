; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_set_network_properties.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_set_network_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i32, %struct.wpa_ssid*, i32 }
%struct.wpa_ssid = type { i64, i64 }
%struct.wpa_dbus_dict_entry = type { i64, i64, i32, i32, i32, i32, i32, i64 }

@DBUS_TYPE_STRING = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@DBUS_TYPE_ARRAY = common dso_local global i64 0, align 8
@DBUS_TYPE_BYTE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"\22%s\22\00", align 1
@DBUS_TYPE_UINT32 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@DBUS_TYPE_INT32 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"bssid\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"priority\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"psk\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"ssid\00", align 1
@TRUE = common dso_local global i32 0, align 4
@DBUS_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"invalid message format\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_network_properties(%struct.wpa_supplicant* %0, %struct.wpa_ssid* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_supplicant*, align 8
  %7 = alloca %struct.wpa_ssid*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.wpa_dbus_dict_entry, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %6, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = bitcast %struct.wpa_dbus_dict_entry* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 48, i1 false)
  %16 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %10, i32 0, i32 0
  %17 = load i64, i64* @DBUS_TYPE_STRING, align 8
  store i64 %17, i64* %16, align 8
  store i8* null, i8** %12, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = call i32 @wpa_dbus_dict_open_read(i32* %18, i32* %11, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %5, align 4
  br label %261

24:                                               ; preds = %4
  br label %25

25:                                               ; preds = %247, %24
  %26 = call i64 @wpa_dbus_dict_has_dict_entry(i32* %11)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %251

28:                                               ; preds = %25
  store i64 50, i64* %13, align 8
  %29 = call i32 @wpa_dbus_dict_get_entry(i32* %11, %struct.wpa_dbus_dict_entry* %10)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  br label %253

32:                                               ; preds = %28
  store i8* null, i8** %12, align 8
  %33 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %10, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DBUS_TYPE_ARRAY, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %71

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %10, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @DBUS_TYPE_BYTE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %71

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %10, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp sle i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %253

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %10, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = mul nsw i32 %49, 2
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %13, align 8
  %53 = load i64, i64* %13, align 8
  %54 = call i8* @os_zalloc(i64 %53)
  store i8* %54, i8** %12, align 8
  %55 = load i8*, i8** %12, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  br label %253

58:                                               ; preds = %47
  %59 = load i8*, i8** %12, align 8
  %60 = load i64, i64* %13, align 8
  %61 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %10, i32 0, i32 7
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to i32*
  %64 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %10, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @wpa_snprintf_hex(i8* %59, i64 %60, i32* %63, i32 %65)
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %14, align 4
  %68 = icmp sle i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  br label %253

70:                                               ; preds = %58
  br label %167

71:                                               ; preds = %37, %32
  %72 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %10, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @DBUS_TYPE_STRING, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %117

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %10, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @should_quote_opt(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %108

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %10, i32 0, i32 6
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @os_strlen(i32 %83)
  store i64 %84, i64* %13, align 8
  %85 = load i64, i64* %13, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %253

88:                                               ; preds = %81
  %89 = load i64, i64* %13, align 8
  %90 = add i64 %89, 3
  store i64 %90, i64* %13, align 8
  %91 = load i64, i64* %13, align 8
  %92 = call i8* @os_zalloc(i64 %91)
  store i8* %92, i8** %12, align 8
  %93 = load i8*, i8** %12, align 8
  %94 = icmp eq i8* %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %253

96:                                               ; preds = %88
  %97 = load i8*, i8** %12, align 8
  %98 = load i64, i64* %13, align 8
  %99 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %10, i32 0, i32 6
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @os_snprintf(i8* %97, i64 %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %100)
  store i32 %101, i32* %14, align 4
  %102 = load i64, i64* %13, align 8
  %103 = load i32, i32* %14, align 4
  %104 = call i64 @os_snprintf_error(i64 %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %96
  br label %253

107:                                              ; preds = %96
  br label %116

108:                                              ; preds = %76
  %109 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %10, i32 0, i32 6
  %110 = load i32, i32* %109, align 8
  %111 = call i8* @os_strdup(i32 %110)
  store i8* %111, i8** %12, align 8
  %112 = load i8*, i8** %12, align 8
  %113 = icmp eq i8* %112, null
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %253

115:                                              ; preds = %108
  br label %116

116:                                              ; preds = %115, %107
  br label %166

117:                                              ; preds = %71
  %118 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %10, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @DBUS_TYPE_UINT32, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %140

122:                                              ; preds = %117
  %123 = load i64, i64* %13, align 8
  %124 = call i8* @os_zalloc(i64 %123)
  store i8* %124, i8** %12, align 8
  %125 = load i8*, i8** %12, align 8
  %126 = icmp eq i8* %125, null
  br i1 %126, label %127, label %128

127:                                              ; preds = %122
  br label %253

128:                                              ; preds = %122
  %129 = load i8*, i8** %12, align 8
  %130 = load i64, i64* %13, align 8
  %131 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %10, i32 0, i32 5
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @os_snprintf(i8* %129, i64 %130, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %132)
  store i32 %133, i32* %14, align 4
  %134 = load i64, i64* %13, align 8
  %135 = load i32, i32* %14, align 4
  %136 = call i64 @os_snprintf_error(i64 %134, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %128
  br label %253

139:                                              ; preds = %128
  br label %165

140:                                              ; preds = %117
  %141 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %10, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @DBUS_TYPE_INT32, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %163

145:                                              ; preds = %140
  %146 = load i64, i64* %13, align 8
  %147 = call i8* @os_zalloc(i64 %146)
  store i8* %147, i8** %12, align 8
  %148 = load i8*, i8** %12, align 8
  %149 = icmp eq i8* %148, null
  br i1 %149, label %150, label %151

150:                                              ; preds = %145
  br label %253

151:                                              ; preds = %145
  %152 = load i8*, i8** %12, align 8
  %153 = load i64, i64* %13, align 8
  %154 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %10, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @os_snprintf(i8* %152, i64 %153, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %155)
  store i32 %156, i32* %14, align 4
  %157 = load i64, i64* %13, align 8
  %158 = load i32, i32* %14, align 4
  %159 = call i64 @os_snprintf_error(i64 %157, i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %151
  br label %253

162:                                              ; preds = %151
  br label %164

163:                                              ; preds = %140
  br label %253

164:                                              ; preds = %162
  br label %165

165:                                              ; preds = %164, %139
  br label %166

166:                                              ; preds = %165, %116
  br label %167

167:                                              ; preds = %166, %70
  %168 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %169 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %10, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = load i8*, i8** %12, align 8
  %172 = call i64 @wpa_config_set(%struct.wpa_ssid* %168, i32 %170, i8* %171, i32 0)
  %173 = icmp slt i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %167
  br label %253

175:                                              ; preds = %167
  %176 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %10, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = call i64 @os_strcmp(i32 %177, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %191

180:                                              ; preds = %175
  %181 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %10, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = call i64 @os_strcmp(i32 %182, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %180
  %186 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %187 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %190 = call i32 @wpa_sm_pmksa_cache_flush(i32 %188, %struct.wpa_ssid* %189)
  br label %191

191:                                              ; preds = %185, %180, %175
  %192 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %193 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %192, i32 0, i32 2
  %194 = load %struct.wpa_ssid*, %struct.wpa_ssid** %193, align 8
  %195 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %196 = icmp eq %struct.wpa_ssid* %194, %195
  br i1 %196, label %202, label %197

197:                                              ; preds = %191
  %198 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %199 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %198, i32 0, i32 2
  %200 = load %struct.wpa_ssid*, %struct.wpa_ssid** %199, align 8
  %201 = icmp eq %struct.wpa_ssid* %200, null
  br i1 %201, label %202, label %207

202:                                              ; preds = %197, %191
  %203 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %204 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @eapol_sm_invalidate_cached_session(i32 %205)
  br label %207

207:                                              ; preds = %202, %197
  %208 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %10, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = call i64 @os_strcmp(i32 %209, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %212, label %223

212:                                              ; preds = %207
  %213 = load i8*, i8** %12, align 8
  %214 = getelementptr inbounds i8, i8* %213, i64 0
  %215 = load i8, i8* %214, align 1
  %216 = sext i8 %215 to i32
  %217 = icmp eq i32 %216, 34
  br i1 %217, label %218, label %223

218:                                              ; preds = %212
  %219 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %220 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %233, label %223

223:                                              ; preds = %218, %212, %207
  %224 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %10, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = call i64 @os_strcmp(i32 %225, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %227 = icmp eq i64 %226, 0
  br i1 %227, label %228, label %236

228:                                              ; preds = %223
  %229 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %230 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %228, %218
  %234 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %235 = call i32 @wpa_config_update_psk(%struct.wpa_ssid* %234)
  br label %247

236:                                              ; preds = %228, %223
  %237 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %10, i32 0, i32 3
  %238 = load i32, i32* %237, align 4
  %239 = call i64 @os_strcmp(i32 %238, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %240 = icmp eq i64 %239, 0
  br i1 %240, label %241, label %246

241:                                              ; preds = %236
  %242 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %243 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @wpa_config_update_prio_list(i32 %244)
  br label %246

246:                                              ; preds = %241, %236
  br label %247

247:                                              ; preds = %246, %233
  %248 = load i8*, i8** %12, align 8
  %249 = call i32 @os_free(i8* %248)
  store i8* null, i8** %12, align 8
  %250 = call i32 @wpa_dbus_dict_entry_clear(%struct.wpa_dbus_dict_entry* %10)
  br label %25

251:                                              ; preds = %25
  %252 = load i32, i32* @TRUE, align 4
  store i32 %252, i32* %5, align 4
  br label %261

253:                                              ; preds = %174, %163, %161, %150, %138, %127, %114, %106, %95, %87, %69, %57, %46, %31
  %254 = load i8*, i8** %12, align 8
  %255 = call i32 @os_free(i8* %254)
  %256 = call i32 @wpa_dbus_dict_entry_clear(%struct.wpa_dbus_dict_entry* %10)
  %257 = load i32*, i32** %9, align 8
  %258 = load i32, i32* @DBUS_ERROR_INVALID_ARGS, align 4
  %259 = call i32 @dbus_set_error_const(i32* %257, i32 %258, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %260 = load i32, i32* @FALSE, align 4
  store i32 %260, i32* %5, align 4
  br label %261

261:                                              ; preds = %253, %251, %22
  %262 = load i32, i32* %5, align 4
  ret i32 %262
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @wpa_dbus_dict_open_read(i32*, i32*, i32*) #2

declare dso_local i64 @wpa_dbus_dict_has_dict_entry(i32*) #2

declare dso_local i32 @wpa_dbus_dict_get_entry(i32*, %struct.wpa_dbus_dict_entry*) #2

declare dso_local i8* @os_zalloc(i64) #2

declare dso_local i32 @wpa_snprintf_hex(i8*, i64, i32*, i32) #2

declare dso_local i64 @should_quote_opt(i32) #2

declare dso_local i64 @os_strlen(i32) #2

declare dso_local i32 @os_snprintf(i8*, i64, i8*, i32) #2

declare dso_local i64 @os_snprintf_error(i64, i32) #2

declare dso_local i8* @os_strdup(i32) #2

declare dso_local i64 @wpa_config_set(%struct.wpa_ssid*, i32, i8*, i32) #2

declare dso_local i64 @os_strcmp(i32, i8*) #2

declare dso_local i32 @wpa_sm_pmksa_cache_flush(i32, %struct.wpa_ssid*) #2

declare dso_local i32 @eapol_sm_invalidate_cached_session(i32) #2

declare dso_local i32 @wpa_config_update_psk(%struct.wpa_ssid*) #2

declare dso_local i32 @wpa_config_update_prio_list(i32) #2

declare dso_local i32 @os_free(i8*) #2

declare dso_local i32 @wpa_dbus_dict_entry_clear(%struct.wpa_dbus_dict_entry*) #2

declare dso_local i32 @dbus_set_error_const(i32*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
