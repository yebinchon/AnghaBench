; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_p2p.c_wpas_dbus_setter_p2p_group_vendor_ext.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_p2p.c_wpas_dbus_setter_p2p_group_vendor_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_dbus_property_desc = type { i32 }
%struct.wpa_supplicant = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.hostapd_data** }
%struct.hostapd_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.wpabuf** }
%struct.wpabuf = type { i32 }
%struct.wpa_dbus_dict_entry = type { i64, i64, i32, %struct.wpabuf**, i32 }

@DBUS_TYPE_STRING = common dso_local global i64 0, align 8
@WPAS_P2P_ROLE_GO = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@DBUS_TYPE_ARRAY = common dso_local global i64 0, align 8
@MAX_WPS_VENDOR_EXTENSIONS = common dso_local global i32 0, align 4
@DBUS_TYPE_BYTE = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"dbus: Not an array of array of bytes\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"dbus: Too many WPSVendorExtensions values\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"dbus: WPSVendorExtentions[]\00", align 1
@TRUE = common dso_local global i32 0, align 4
@DBUS_TYPE_DICT_ENTRY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [79 x i8] c"dbus: Try to use backwards compatibility version of WPSVendorExtensions setter\00", align 1
@DBUS_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"invalid message format\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"WPSVendorExtensions\00", align 1
@WPAS_DBUS_TYPE_BINARRAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_dbus_setter_p2p_group_vendor_ext(%struct.wpa_dbus_property_desc* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_dbus_property_desc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wpa_supplicant*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.wpa_dbus_dict_entry, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.hostapd_data*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  store %struct.wpa_dbus_property_desc* %0, %struct.wpa_dbus_property_desc** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = bitcast i8* %23 to %struct.wpa_supplicant*
  store %struct.wpa_supplicant* %24, %struct.wpa_supplicant** %10, align 8
  %25 = bitcast %struct.wpa_dbus_dict_entry* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 40, i1 false)
  %26 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %15, i32 0, i32 0
  %27 = load i64, i64* @DBUS_TYPE_STRING, align 8
  store i64 %27, i64* %26, align 8
  store %struct.hostapd_data* null, %struct.hostapd_data** %17, align 8
  %28 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %29 = call i64 @wpas_get_p2p_role(%struct.wpa_supplicant* %28)
  %30 = load i64, i64* @WPAS_P2P_ROLE_GO, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %4
  %33 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %34 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = icmp ne %struct.TYPE_3__* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %39 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load %struct.hostapd_data**, %struct.hostapd_data*** %41, align 8
  %43 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %42, i64 0
  %44 = load %struct.hostapd_data*, %struct.hostapd_data** %43, align 8
  store %struct.hostapd_data* %44, %struct.hostapd_data** %17, align 8
  br label %47

45:                                               ; preds = %32, %4
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %5, align 4
  br label %289

47:                                               ; preds = %37
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @dbus_message_iter_recurse(i32* %48, i32* %11)
  %50 = call i64 @dbus_message_iter_get_arg_type(i32* %11)
  %51 = load i64, i64* @DBUS_TYPE_ARRAY, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @FALSE, align 4
  store i32 %54, i32* %5, align 4
  br label %289

55:                                               ; preds = %47
  %56 = call i64 @dbus_message_iter_get_element_type(i32* %11)
  %57 = load i64, i64* @DBUS_TYPE_ARRAY, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %175

59:                                               ; preds = %55
  %60 = load i32, i32* @MAX_WPS_VENDOR_EXTENSIONS, align 4
  %61 = zext i32 %60 to i64
  %62 = call i8* @llvm.stacksave()
  store i8* %62, i8** %18, align 8
  %63 = alloca %struct.wpabuf*, i64 %61, align 16
  store i64 %61, i64* %19, align 8
  %64 = call i32 @dbus_message_iter_recurse(i32* %11, i32* %13)
  %65 = call i64 @dbus_message_iter_get_arg_type(i32* %13)
  %66 = load i64, i64* @DBUS_TYPE_ARRAY, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %59
  %69 = call i64 @dbus_message_iter_get_element_type(i32* %13)
  %70 = load i64, i64* @DBUS_TYPE_BYTE, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %68, %59
  %73 = load i32, i32* @MSG_DEBUG, align 4
  %74 = call i32 @wpa_printf(i32 %73, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* @FALSE, align 4
  store i32 %75, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %173

76:                                               ; preds = %68
  store i32 0, i32* %16, align 4
  %77 = mul nuw i64 8, %61
  %78 = trunc i64 %77 to i32
  %79 = call i32 @os_memset(%struct.wpabuf** %63, i32 0, i32 %78)
  br label %80

80:                                               ; preds = %114, %76
  %81 = call i64 @dbus_message_iter_get_arg_type(i32* %13)
  %82 = load i64, i64* @DBUS_TYPE_ARRAY, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %118

84:                                               ; preds = %80
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* @MAX_WPS_VENDOR_EXTENSIONS, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load i32, i32* @MSG_DEBUG, align 4
  %90 = call i32 @wpa_printf(i32 %89, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %91 = load i32, i32* @MAX_WPS_VENDOR_EXTENSIONS, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %16, align 4
  br label %118

93:                                               ; preds = %84
  %94 = call i32 @dbus_message_iter_recurse(i32* %13, i32* %14)
  %95 = call i32 @dbus_message_iter_get_fixed_array(i32* %14, i8** %21, i32* %22)
  %96 = load i32, i32* @MSG_DEBUG, align 4
  %97 = load i8*, i8** %21, align 8
  %98 = load i32, i32* %22, align 4
  %99 = call i32 @wpa_hexdump(i32 %96, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %97, i32 %98)
  %100 = load i8*, i8** %21, align 8
  %101 = load i32, i32* %22, align 4
  %102 = call %struct.wpabuf* @wpabuf_alloc_copy(i8* %100, i32 %101)
  %103 = load i32, i32* %16, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.wpabuf*, %struct.wpabuf** %63, i64 %104
  store %struct.wpabuf* %102, %struct.wpabuf** %105, align 8
  %106 = load i32, i32* %16, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.wpabuf*, %struct.wpabuf** %63, i64 %107
  %109 = load %struct.wpabuf*, %struct.wpabuf** %108, align 8
  %110 = icmp eq %struct.wpabuf* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %93
  %112 = load i32, i32* @MAX_WPS_VENDOR_EXTENSIONS, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %16, align 4
  br label %118

114:                                              ; preds = %93
  %115 = load i32, i32* %16, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %16, align 4
  %117 = call i32 @dbus_message_iter_next(i32* %13)
  br label %80

118:                                              ; preds = %111, %88, %80
  %119 = load i32, i32* %16, align 4
  %120 = load i32, i32* @MAX_WPS_VENDOR_EXTENSIONS, align 4
  %121 = icmp ugt i32 %119, %120
  br i1 %121, label %122, label %138

122:                                              ; preds = %118
  store i32 0, i32* %16, align 4
  br label %123

123:                                              ; preds = %133, %122
  %124 = load i32, i32* %16, align 4
  %125 = load i32, i32* @MAX_WPS_VENDOR_EXTENSIONS, align 4
  %126 = icmp ult i32 %124, %125
  br i1 %126, label %127, label %136

127:                                              ; preds = %123
  %128 = load i32, i32* %16, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.wpabuf*, %struct.wpabuf** %63, i64 %129
  %131 = load %struct.wpabuf*, %struct.wpabuf** %130, align 8
  %132 = call i32 @wpabuf_free(%struct.wpabuf* %131)
  br label %133

133:                                              ; preds = %127
  %134 = load i32, i32* %16, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* %16, align 4
  br label %123

136:                                              ; preds = %123
  %137 = load i32, i32* @FALSE, align 4
  store i32 %137, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %173

138:                                              ; preds = %118
  store i32 0, i32* %16, align 4
  br label %139

139:                                              ; preds = %166, %138
  %140 = load i32, i32* %16, align 4
  %141 = load i32, i32* @MAX_WPS_VENDOR_EXTENSIONS, align 4
  %142 = icmp ult i32 %140, %141
  br i1 %142, label %143, label %169

143:                                              ; preds = %139
  %144 = load %struct.hostapd_data*, %struct.hostapd_data** %17, align 8
  %145 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %144, i32 0, i32 0
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load %struct.wpabuf**, %struct.wpabuf*** %147, align 8
  %149 = load i32, i32* %16, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds %struct.wpabuf*, %struct.wpabuf** %148, i64 %150
  %152 = load %struct.wpabuf*, %struct.wpabuf** %151, align 8
  %153 = call i32 @wpabuf_free(%struct.wpabuf* %152)
  %154 = load i32, i32* %16, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds %struct.wpabuf*, %struct.wpabuf** %63, i64 %155
  %157 = load %struct.wpabuf*, %struct.wpabuf** %156, align 8
  %158 = load %struct.hostapd_data*, %struct.hostapd_data** %17, align 8
  %159 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %158, i32 0, i32 0
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = load %struct.wpabuf**, %struct.wpabuf*** %161, align 8
  %163 = load i32, i32* %16, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds %struct.wpabuf*, %struct.wpabuf** %162, i64 %164
  store %struct.wpabuf* %157, %struct.wpabuf** %165, align 8
  br label %166

166:                                              ; preds = %143
  %167 = load i32, i32* %16, align 4
  %168 = add i32 %167, 1
  store i32 %168, i32* %16, align 4
  br label %139

169:                                              ; preds = %139
  %170 = load %struct.hostapd_data*, %struct.hostapd_data** %17, align 8
  %171 = call i32 @hostapd_update_wps(%struct.hostapd_data* %170)
  %172 = load i32, i32* @TRUE, align 4
  store i32 %172, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %173

173:                                              ; preds = %169, %136, %72
  %174 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %174)
  br label %289

175:                                              ; preds = %55
  %176 = call i64 @dbus_message_iter_get_element_type(i32* %11)
  %177 = load i64, i64* @DBUS_TYPE_DICT_ENTRY, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %179, label %181

179:                                              ; preds = %175
  %180 = load i32, i32* @FALSE, align 4
  store i32 %180, i32* %5, align 4
  br label %289

181:                                              ; preds = %175
  %182 = load i32, i32* @MSG_DEBUG, align 4
  %183 = call i32 @wpa_printf(i32 %182, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0))
  %184 = load i32*, i32** %8, align 8
  %185 = call i32 @wpa_dbus_dict_open_read(i32* %11, i32* %12, i32* %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %189, label %187

187:                                              ; preds = %181
  %188 = load i32, i32* @FALSE, align 4
  store i32 %188, i32* %5, align 4
  br label %289

189:                                              ; preds = %181
  br label %190

190:                                              ; preds = %279, %189
  %191 = call i64 @wpa_dbus_dict_has_dict_entry(i32* %12)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %281

193:                                              ; preds = %190
  %194 = call i32 @wpa_dbus_dict_get_entry(i32* %12, %struct.wpa_dbus_dict_entry* %15)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %201, label %196

196:                                              ; preds = %193
  %197 = load i32*, i32** %8, align 8
  %198 = load i32, i32* @DBUS_ERROR_INVALID_ARGS, align 4
  %199 = call i32 @dbus_set_error_const(i32* %197, i32 %198, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %200 = load i32, i32* @FALSE, align 4
  store i32 %200, i32* %5, align 4
  br label %289

201:                                              ; preds = %193
  %202 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %15, i32 0, i32 4
  %203 = load i32, i32* %202, align 8
  %204 = call i64 @os_strcmp(i32 %203, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %206, label %278

206:                                              ; preds = %201
  %207 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %15, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @DBUS_TYPE_ARRAY, align 8
  %210 = icmp ne i64 %208, %209
  br i1 %210, label %221, label %211

211:                                              ; preds = %206
  %212 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %15, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @WPAS_DBUS_TYPE_BINARRAY, align 8
  %215 = icmp ne i64 %213, %214
  br i1 %215, label %221, label %216

216:                                              ; preds = %211
  %217 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %15, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @MAX_WPS_VENDOR_EXTENSIONS, align 4
  %220 = icmp sgt i32 %218, %219
  br i1 %220, label %221, label %222

221:                                              ; preds = %216, %211, %206
  br label %283

222:                                              ; preds = %216
  store i32 0, i32* %16, align 4
  br label %223

223:                                              ; preds = %272, %222
  %224 = load i32, i32* %16, align 4
  %225 = load i32, i32* @MAX_WPS_VENDOR_EXTENSIONS, align 4
  %226 = icmp ult i32 %224, %225
  br i1 %226, label %227, label %275

227:                                              ; preds = %223
  %228 = load %struct.hostapd_data*, %struct.hostapd_data** %17, align 8
  %229 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %228, i32 0, i32 0
  %230 = load %struct.TYPE_4__*, %struct.TYPE_4__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 0
  %232 = load %struct.wpabuf**, %struct.wpabuf*** %231, align 8
  %233 = load i32, i32* %16, align 4
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds %struct.wpabuf*, %struct.wpabuf** %232, i64 %234
  %236 = load %struct.wpabuf*, %struct.wpabuf** %235, align 8
  %237 = call i32 @wpabuf_free(%struct.wpabuf* %236)
  %238 = load i32, i32* %16, align 4
  %239 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %15, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = icmp ult i32 %238, %240
  br i1 %241, label %242, label %262

242:                                              ; preds = %227
  %243 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %15, i32 0, i32 3
  %244 = load %struct.wpabuf**, %struct.wpabuf*** %243, align 8
  %245 = load i32, i32* %16, align 4
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds %struct.wpabuf*, %struct.wpabuf** %244, i64 %246
  %248 = load %struct.wpabuf*, %struct.wpabuf** %247, align 8
  %249 = load %struct.hostapd_data*, %struct.hostapd_data** %17, align 8
  %250 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %249, i32 0, i32 0
  %251 = load %struct.TYPE_4__*, %struct.TYPE_4__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 0
  %253 = load %struct.wpabuf**, %struct.wpabuf*** %252, align 8
  %254 = load i32, i32* %16, align 4
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds %struct.wpabuf*, %struct.wpabuf** %253, i64 %255
  store %struct.wpabuf* %248, %struct.wpabuf** %256, align 8
  %257 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %15, i32 0, i32 3
  %258 = load %struct.wpabuf**, %struct.wpabuf*** %257, align 8
  %259 = load i32, i32* %16, align 4
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds %struct.wpabuf*, %struct.wpabuf** %258, i64 %260
  store %struct.wpabuf* null, %struct.wpabuf** %261, align 8
  br label %271

262:                                              ; preds = %227
  %263 = load %struct.hostapd_data*, %struct.hostapd_data** %17, align 8
  %264 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %263, i32 0, i32 0
  %265 = load %struct.TYPE_4__*, %struct.TYPE_4__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 0
  %267 = load %struct.wpabuf**, %struct.wpabuf*** %266, align 8
  %268 = load i32, i32* %16, align 4
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds %struct.wpabuf*, %struct.wpabuf** %267, i64 %269
  store %struct.wpabuf* null, %struct.wpabuf** %270, align 8
  br label %271

271:                                              ; preds = %262, %242
  br label %272

272:                                              ; preds = %271
  %273 = load i32, i32* %16, align 4
  %274 = add i32 %273, 1
  store i32 %274, i32* %16, align 4
  br label %223

275:                                              ; preds = %223
  %276 = load %struct.hostapd_data*, %struct.hostapd_data** %17, align 8
  %277 = call i32 @hostapd_update_wps(%struct.hostapd_data* %276)
  br label %279

278:                                              ; preds = %201
  br label %283

279:                                              ; preds = %275
  %280 = call i32 @wpa_dbus_dict_entry_clear(%struct.wpa_dbus_dict_entry* %15)
  br label %190

281:                                              ; preds = %190
  %282 = load i32, i32* @TRUE, align 4
  store i32 %282, i32* %5, align 4
  br label %289

283:                                              ; preds = %278, %221
  %284 = call i32 @wpa_dbus_dict_entry_clear(%struct.wpa_dbus_dict_entry* %15)
  %285 = load i32*, i32** %8, align 8
  %286 = load i32, i32* @DBUS_ERROR_INVALID_ARGS, align 4
  %287 = call i32 @dbus_set_error_const(i32* %285, i32 %286, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %288 = load i32, i32* @FALSE, align 4
  store i32 %288, i32* %5, align 4
  br label %289

289:                                              ; preds = %283, %281, %196, %187, %179, %173, %53, %45
  %290 = load i32, i32* %5, align 4
  ret i32 %290
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @wpas_get_p2p_role(%struct.wpa_supplicant*) #2

declare dso_local i32 @dbus_message_iter_recurse(i32*, i32*) #2

declare dso_local i64 @dbus_message_iter_get_arg_type(i32*) #2

declare dso_local i64 @dbus_message_iter_get_element_type(i32*) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @wpa_printf(i32, i8*) #2

declare dso_local i32 @os_memset(%struct.wpabuf**, i32, i32) #2

declare dso_local i32 @dbus_message_iter_get_fixed_array(i32*, i8**, i32*) #2

declare dso_local i32 @wpa_hexdump(i32, i8*, i8*, i32) #2

declare dso_local %struct.wpabuf* @wpabuf_alloc_copy(i8*, i32) #2

declare dso_local i32 @dbus_message_iter_next(i32*) #2

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #2

declare dso_local i32 @hostapd_update_wps(%struct.hostapd_data*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local i32 @wpa_dbus_dict_open_read(i32*, i32*, i32*) #2

declare dso_local i64 @wpa_dbus_dict_has_dict_entry(i32*) #2

declare dso_local i32 @wpa_dbus_dict_get_entry(i32*, %struct.wpa_dbus_dict_entry*) #2

declare dso_local i32 @dbus_set_error_const(i32*, i32, i8*) #2

declare dso_local i64 @os_strcmp(i32, i8*) #2

declare dso_local i32 @wpa_dbus_dict_entry_clear(%struct.wpa_dbus_dict_entry*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
