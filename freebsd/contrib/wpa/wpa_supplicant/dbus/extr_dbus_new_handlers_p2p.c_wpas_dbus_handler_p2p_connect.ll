; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_p2p.c_wpas_dbus_handler_p2p_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_p2p.c_wpas_dbus_handler_p2p_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wpa_supplicant*, i32 }
%struct.wpa_dbus_dict_entry = type { i64, i32, i32, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@WPS_NOT_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"peer\00", align 1
@DBUS_TYPE_OBJECT_PATH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"persistent\00", align 1
@DBUS_TYPE_BOOLEAN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"join\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"authorize_only\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"frequency\00", align 1
@DBUS_TYPE_INT32 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"go_intent\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"wps_method\00", align 1
@DBUS_TYPE_STRING = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c"pbc\00", align 1
@WPS_PBC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"pin\00", align 1
@WPS_PIN_DISPLAY = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"keypad\00", align 1
@WPS_PIN_KEYPAD = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"%08d\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"invalid PIN\00", align 1
@DBUS_TYPE_INVALID = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [46 x i8] c"connect failed due to channel unavailability.\00", align 1
@WPAS_DBUS_ERROR_CONNECT_CHANNEL_UNAVAILABLE = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [43 x i8] c"connect failed due to unsupported channel.\00", align 1
@WPAS_DBUS_ERROR_CONNECT_CHANNEL_UNSUPPORTED = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [41 x i8] c"connect failed due to unspecified error.\00", align 1
@WPAS_DBUS_ERROR_CONNECT_UNSPECIFIED_ERROR = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @wpas_dbus_handler_p2p_connect(i32* %0, %struct.wpa_supplicant* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wpa_dbus_dict_entry, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca [9 x i8], align 1
  %26 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.wpa_supplicant* %1, %struct.wpa_supplicant** %5, align 8
  store i32* null, i32** %7, align 8
  store i8* null, i8** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %27 = load i32, i32* @ETH_ALEN, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %16, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %17, align 8
  store i8* null, i8** %18, align 8
  %31 = load i32, i32* @WPS_NOT_READY, align 4
  store i32 %31, i32* %19, align 4
  store i8* null, i8** %21, align 8
  store i8* null, i8** %22, align 8
  %32 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @wpa_dbus_p2p_check_enabled(%struct.wpa_supplicant* %32, i32* %33, i32** %7, i32* null)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %2
  %37 = load i32*, i32** %7, align 8
  store i32* %37, i32** %3, align 8
  store i32 1, i32* %24, align 4
  br label %299

38:                                               ; preds = %2
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @dbus_message_iter_init(i32* %39, i32* %8)
  %41 = call i32 @wpa_dbus_dict_open_read(i32* %8, i32* %6, i32* null)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %296

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %207, %44
  %46 = call i64 @wpa_dbus_dict_has_dict_entry(i32* %6)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %209

48:                                               ; preds = %45
  %49 = call i32 @wpa_dbus_dict_get_entry(i32* %6, %struct.wpa_dbus_dict_entry* %9)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  br label %296

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @os_strcmp(i32 %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @DBUS_TYPE_OBJECT_PATH, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i8* @os_strdup(i32 %64)
  store i8* %65, i8** %10, align 8
  br label %207

66:                                               ; preds = %57, %52
  %67 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @os_strcmp(i32 %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @DBUS_TYPE_BOOLEAN, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %11, align 4
  br label %206

79:                                               ; preds = %71, %66
  %80 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @os_strcmp(i32 %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @DBUS_TYPE_BOOLEAN, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %12, align 4
  br label %205

92:                                               ; preds = %84, %79
  %93 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @os_strcmp(i32 %94, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @DBUS_TYPE_BOOLEAN, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  store i32 %104, i32* %13, align 4
  br label %204

105:                                              ; preds = %97, %92
  %106 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @os_strcmp(i32 %107, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @DBUS_TYPE_INT32, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %15, align 4
  %118 = load i32, i32* %15, align 4
  %119 = icmp sle i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  br label %294

121:                                              ; preds = %115
  br label %203

122:                                              ; preds = %110, %105
  %123 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @os_strcmp(i32 %124, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %142

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @DBUS_TYPE_INT32, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %142

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %14, align 4
  %135 = load i32, i32* %14, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %132
  %138 = load i32, i32* %14, align 4
  %139 = icmp sgt i32 %138, 15
  br i1 %139, label %140, label %141

140:                                              ; preds = %137, %132
  br label %294

141:                                              ; preds = %137
  br label %202

142:                                              ; preds = %127, %122
  %143 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = call i64 @os_strcmp(i32 %144, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %185

147:                                              ; preds = %142
  %148 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @DBUS_TYPE_STRING, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %185

152:                                              ; preds = %147
  %153 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = call i64 @os_strcmp(i32 %154, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %152
  %158 = load i32, i32* @WPS_PBC, align 4
  store i32 %158, i32* %19, align 4
  br label %184

159:                                              ; preds = %152
  %160 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = call i64 @os_strcmp(i32 %161, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %159
  %165 = load i32, i32* @WPS_PIN_DISPLAY, align 4
  store i32 %165, i32* %19, align 4
  br label %183

166:                                              ; preds = %159
  %167 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = call i64 @os_strcmp(i32 %168, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %166
  %172 = load i32, i32* @WPS_PIN_DISPLAY, align 4
  store i32 %172, i32* %19, align 4
  br label %182

173:                                              ; preds = %166
  %174 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = call i64 @os_strcmp(i32 %175, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %173
  %179 = load i32, i32* @WPS_PIN_KEYPAD, align 4
  store i32 %179, i32* %19, align 4
  br label %181

180:                                              ; preds = %173
  br label %294

181:                                              ; preds = %178
  br label %182

182:                                              ; preds = %181, %171
  br label %183

183:                                              ; preds = %182, %164
  br label %184

184:                                              ; preds = %183, %157
  br label %201

185:                                              ; preds = %147, %142
  %186 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 4
  %187 = load i32, i32* %186, align 4
  %188 = call i64 @os_strcmp(i32 %187, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %190, label %199

190:                                              ; preds = %185
  %191 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @DBUS_TYPE_STRING, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %199

195:                                              ; preds = %190
  %196 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 3
  %197 = load i32, i32* %196, align 8
  %198 = call i8* @os_strdup(i32 %197)
  store i8* %198, i8** %18, align 8
  br label %200

199:                                              ; preds = %190, %185
  br label %294

200:                                              ; preds = %195
  br label %201

201:                                              ; preds = %200, %184
  br label %202

202:                                              ; preds = %201, %141
  br label %203

203:                                              ; preds = %202, %121
  br label %204

204:                                              ; preds = %203, %102
  br label %205

205:                                              ; preds = %204, %89
  br label %206

206:                                              ; preds = %205, %76
  br label %207

207:                                              ; preds = %206, %62
  %208 = call i32 @wpa_dbus_dict_entry_clear(%struct.wpa_dbus_dict_entry* %9)
  br label %45

209:                                              ; preds = %45
  %210 = load i32, i32* %19, align 4
  %211 = load i32, i32* @WPS_NOT_READY, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %225, label %213

213:                                              ; preds = %209
  %214 = load i8*, i8** %10, align 8
  %215 = call i64 @parse_peer_object_path(i8* %214, i32* %30)
  %216 = icmp slt i64 %215, 0
  br i1 %216, label %225, label %217

217:                                              ; preds = %213
  %218 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %219 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %218, i32 0, i32 0
  %220 = load %struct.TYPE_2__*, %struct.TYPE_2__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @p2p_peer_known(i32 %222, i32* %30)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %226, label %225

225:                                              ; preds = %217, %213, %209
  br label %296

226:                                              ; preds = %217
  %227 = load i8*, i8** %18, align 8
  %228 = icmp ne i8* %227, null
  br i1 %228, label %229, label %234

229:                                              ; preds = %226
  %230 = load i8*, i8** %18, align 8
  %231 = getelementptr inbounds i8, i8* %230, i64 0
  %232 = load i8, i8* %231, align 1
  %233 = icmp ne i8 %232, 0
  br i1 %233, label %239, label %234

234:                                              ; preds = %229, %226
  %235 = load i32, i32* %19, align 4
  %236 = load i32, i32* @WPS_PIN_KEYPAD, align 4
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %238, label %239

238:                                              ; preds = %234
  br label %296

239:                                              ; preds = %234, %229
  %240 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %241 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %240, i32 0, i32 0
  %242 = load %struct.TYPE_2__*, %struct.TYPE_2__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 0
  %244 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %243, align 8
  store %struct.wpa_supplicant* %244, %struct.wpa_supplicant** %5, align 8
  %245 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %246 = load i8*, i8** %18, align 8
  %247 = load i32, i32* %19, align 4
  %248 = load i32, i32* %11, align 4
  %249 = load i32, i32* %12, align 4
  %250 = load i32, i32* %13, align 4
  %251 = load i32, i32* %14, align 4
  %252 = load i32, i32* %15, align 4
  %253 = call i32 @wpas_p2p_connect(%struct.wpa_supplicant* %245, i32* %30, i8* %246, i32 %247, i32 %248, i32 0, i32 %249, i32 %250, i32 %251, i32 %252, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32* null, i32 0)
  store i32 %253, i32* %20, align 4
  %254 = load i32, i32* %20, align 4
  %255 = icmp sge i32 %254, 0
  br i1 %255, label %256, label %274

256:                                              ; preds = %239
  %257 = getelementptr inbounds [9 x i8], [9 x i8]* %25, i64 0, i64 0
  %258 = load i32, i32* %20, align 4
  %259 = call i32 @os_snprintf(i8* %257, i32 9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %258)
  store i32 %259, i32* %23, align 4
  %260 = load i32, i32* %23, align 4
  %261 = call i64 @os_snprintf_error(i32 9, i32 %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %266

263:                                              ; preds = %256
  %264 = load i32*, i32** %4, align 8
  %265 = call i32* @wpas_dbus_error_unknown_error(i32* %264, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  store i32* %265, i32** %7, align 8
  br label %288

266:                                              ; preds = %256
  %267 = getelementptr inbounds [9 x i8], [9 x i8]* %25, i64 0, i64 0
  store i8* %267, i8** %26, align 8
  %268 = load i32*, i32** %4, align 8
  %269 = call i32* @dbus_message_new_method_return(i32* %268)
  store i32* %269, i32** %7, align 8
  %270 = load i32*, i32** %7, align 8
  %271 = load i64, i64* @DBUS_TYPE_STRING, align 8
  %272 = load i32, i32* @DBUS_TYPE_INVALID, align 4
  %273 = call i32 @dbus_message_append_args(i32* %270, i64 %271, i8** %26, i32 %272)
  br label %287

274:                                              ; preds = %239
  %275 = load i32, i32* %20, align 4
  switch i32 %275, label %280 [
    i32 -2, label %276
    i32 -3, label %278
  ]

276:                                              ; preds = %274
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.13, i64 0, i64 0), i8** %21, align 8
  %277 = load i8*, i8** @WPAS_DBUS_ERROR_CONNECT_CHANNEL_UNAVAILABLE, align 8
  store i8* %277, i8** %22, align 8
  br label %282

278:                                              ; preds = %274
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0), i8** %21, align 8
  %279 = load i8*, i8** @WPAS_DBUS_ERROR_CONNECT_CHANNEL_UNSUPPORTED, align 8
  store i8* %279, i8** %22, align 8
  br label %282

280:                                              ; preds = %274
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i64 0, i64 0), i8** %21, align 8
  %281 = load i8*, i8** @WPAS_DBUS_ERROR_CONNECT_UNSPECIFIED_ERROR, align 8
  store i8* %281, i8** %22, align 8
  br label %282

282:                                              ; preds = %280, %278, %276
  %283 = load i32*, i32** %4, align 8
  %284 = load i8*, i8** %22, align 8
  %285 = load i8*, i8** %21, align 8
  %286 = call i32* @dbus_message_new_error(i32* %283, i8* %284, i8* %285)
  store i32* %286, i32** %7, align 8
  br label %287

287:                                              ; preds = %282, %266
  br label %288

288:                                              ; preds = %296, %287, %263
  %289 = load i8*, i8** %10, align 8
  %290 = call i32 @os_free(i8* %289)
  %291 = load i8*, i8** %18, align 8
  %292 = call i32 @os_free(i8* %291)
  %293 = load i32*, i32** %7, align 8
  store i32* %293, i32** %3, align 8
  store i32 1, i32* %24, align 4
  br label %299

294:                                              ; preds = %199, %180, %140, %120
  %295 = call i32 @wpa_dbus_dict_entry_clear(%struct.wpa_dbus_dict_entry* %9)
  br label %296

296:                                              ; preds = %294, %238, %225, %51, %43
  %297 = load i32*, i32** %4, align 8
  %298 = call i32* @wpas_dbus_error_invalid_args(i32* %297, i32* null)
  store i32* %298, i32** %7, align 8
  br label %288

299:                                              ; preds = %288, %36
  %300 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %300)
  %301 = load i32*, i32** %3, align 8
  ret i32* %301
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_dbus_p2p_check_enabled(%struct.wpa_supplicant*, i32*, i32**, i32*) #2

declare dso_local i32 @dbus_message_iter_init(i32*, i32*) #2

declare dso_local i32 @wpa_dbus_dict_open_read(i32*, i32*, i32*) #2

declare dso_local i64 @wpa_dbus_dict_has_dict_entry(i32*) #2

declare dso_local i32 @wpa_dbus_dict_get_entry(i32*, %struct.wpa_dbus_dict_entry*) #2

declare dso_local i64 @os_strcmp(i32, i8*) #2

declare dso_local i8* @os_strdup(i32) #2

declare dso_local i32 @wpa_dbus_dict_entry_clear(%struct.wpa_dbus_dict_entry*) #2

declare dso_local i64 @parse_peer_object_path(i8*, i32*) #2

declare dso_local i32 @p2p_peer_known(i32, i32*) #2

declare dso_local i32 @wpas_p2p_connect(%struct.wpa_supplicant*, i32*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #2

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i32) #2

declare dso_local i64 @os_snprintf_error(i32, i32) #2

declare dso_local i32* @wpas_dbus_error_unknown_error(i32*, i8*) #2

declare dso_local i32* @dbus_message_new_method_return(i32*) #2

declare dso_local i32 @dbus_message_append_args(i32*, i64, i8**, i32) #2

declare dso_local i32* @dbus_message_new_error(i32*, i8*, i8*) #2

declare dso_local i32 @os_free(i8*) #2

declare dso_local i32* @wpas_dbus_error_invalid_args(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
