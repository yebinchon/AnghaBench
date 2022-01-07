; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_p2p.c_wpas_dbus_setter_p2p_device_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_p2p.c_wpas_dbus_setter_p2p_device_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_dbus_property_desc = type { i32 }
%struct.wpa_supplicant = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8*, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32**, i32*, i32 }
%struct.TYPE_3__ = type { %struct.wpa_supplicant* }
%struct.wpa_dbus_dict_entry = type { i64, i64, i64, i32, i32, i32, i32, i32, i32** }

@DBUS_TYPE_STRING = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@DBUS_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"invalid message format\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"DeviceName\00", align 1
@WPS_DEV_NAME_MAX_LEN = common dso_local global i64 0, align 8
@CFG_CHANGED_DEVICE_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"PrimaryDeviceType\00", align 1
@DBUS_TYPE_ARRAY = common dso_local global i64 0, align 8
@DBUS_TYPE_BYTE = common dso_local global i64 0, align 8
@WPS_DEV_TYPE_LEN = common dso_local global i64 0, align 8
@CFG_CHANGED_DEVICE_TYPE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"SecondaryDeviceTypes\00", align 1
@WPAS_DBUS_TYPE_BINARRAY = common dso_local global i64 0, align 8
@MAX_SEC_DEVICE_TYPES = common dso_local global i64 0, align 8
@CFG_CHANGED_SEC_DEVICE_TYPE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"VendorExtension\00", align 1
@P2P_MAX_WPS_VENDOR_EXT = common dso_local global i32 0, align 4
@CFG_CHANGED_VENDOR_EXTENSION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"GOIntent\00", align 1
@DBUS_TYPE_UINT32 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [20 x i8] c"PersistentReconnect\00", align 1
@DBUS_TYPE_BOOLEAN = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [15 x i8] c"ListenRegClass\00", align 1
@CFG_CHANGED_P2P_LISTEN_CHANNEL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"ListenChannel\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"OperRegClass\00", align 1
@CFG_CHANGED_P2P_OPER_CHANNEL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"OperChannel\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"SsidPostfix\00", align 1
@CFG_CHANGED_P2P_SSID_POSTFIX = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [9 x i8] c"IntraBss\00", align 1
@CFG_CHANGED_P2P_INTRA_BSS = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [9 x i8] c"IpAddrGo\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"IpAddrMask\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"IpAddrStart\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"IpAddrEnd\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"GroupIdle\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"disassoc_low_ack\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"NoGroupIface\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"p2p_search_delay\00", align 1
@TRUE = common dso_local global i32 0, align 4
@DBUS_ERROR_NO_MEMORY = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [10 x i8] c"no memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_dbus_setter_p2p_device_config(%struct.wpa_dbus_property_desc* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_dbus_property_desc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wpa_supplicant*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.wpa_dbus_dict_entry, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.wpa_dbus_property_desc* %0, %struct.wpa_dbus_property_desc** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.wpa_supplicant*
  store %struct.wpa_supplicant* %18, %struct.wpa_supplicant** %10, align 8
  %19 = bitcast %struct.wpa_dbus_dict_entry* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 56, i1 false)
  %20 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 0
  %21 = load i64, i64* @DBUS_TYPE_STRING, align 8
  store i64 %21, i64* %20, align 8
  %22 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @wpa_dbus_p2p_check_enabled(%struct.wpa_supplicant* %22, i32* null, i32* null, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %5, align 4
  br label %688

28:                                               ; preds = %4
  %29 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %30 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %32, align 8
  store %struct.wpa_supplicant* %33, %struct.wpa_supplicant** %10, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @dbus_message_iter_recurse(i32* %34, i32* %11)
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @wpa_dbus_dict_open_read(i32* %11, i32* %12, i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %28
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %5, align 4
  br label %688

41:                                               ; preds = %28
  br label %42

42:                                               ; preds = %662, %41
  %43 = call i64 @wpa_dbus_dict_has_dict_entry(i32* %12)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %664

45:                                               ; preds = %42
  %46 = call i32 @wpa_dbus_dict_get_entry(i32* %12, %struct.wpa_dbus_dict_entry* %13)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* @DBUS_ERROR_INVALID_ARGS, align 4
  %51 = call i32 @dbus_set_error_const(i32* %49, i32 %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %5, align 4
  br label %688

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @os_strcmp(i32 %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %96

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @DBUS_TYPE_STRING, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %69, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 7
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @os_strlen(i32 %65)
  %67 = load i64, i64* @WPS_DEV_NAME_MAX_LEN, align 8
  %68 = icmp sgt i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63, %58
  br label %676

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 7
  %72 = load i32, i32* %71, align 8
  %73 = call i8* @os_strdup(i32 %72)
  store i8* %73, i8** %15, align 8
  %74 = load i8*, i8** %15, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %682

77:                                               ; preds = %70
  %78 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %79 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @os_free(i8* %82)
  %84 = load i8*, i8** %15, align 8
  %85 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %86 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store i8* %84, i8** %88, align 8
  %89 = load i32, i32* @CFG_CHANGED_DEVICE_NAME, align 4
  %90 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %91 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %89
  store i32 %95, i32* %93, align 8
  br label %662

96:                                               ; preds = %53
  %97 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @os_strcmp(i32 %98, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %135

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @DBUS_TYPE_ARRAY, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %116, label %106

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @DBUS_TYPE_BYTE, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %116, label %111

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @WPS_DEV_TYPE_LEN, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %111, %106, %101
  br label %676

117:                                              ; preds = %111
  %118 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %119 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %118, i32 0, i32 0
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 21
  %122 = load i32, i32* %121, align 8
  %123 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 6
  %124 = load i32, i32* %123, align 4
  %125 = load i64, i64* @WPS_DEV_TYPE_LEN, align 8
  %126 = trunc i64 %125 to i32
  %127 = call i32 @os_memcpy(i32 %122, i32 %124, i32 %126)
  %128 = load i32, i32* @CFG_CHANGED_DEVICE_TYPE, align 4
  %129 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %130 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %129, i32 0, i32 0
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = or i32 %133, %128
  store i32 %134, i32* %132, align 8
  br label %661

135:                                              ; preds = %96
  %136 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = call i64 @os_strcmp(i32 %137, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %223

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @DBUS_TYPE_ARRAY, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %155, label %145

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @WPAS_DBUS_TYPE_BINARRAY, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %155, label %150

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @MAX_SEC_DEVICE_TYPES, align 8
  %154 = icmp sgt i64 %152, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %150, %145, %140
  br label %676

156:                                              ; preds = %150
  store i32 0, i32* %14, align 4
  br label %157

157:                                              ; preds = %175, %156
  %158 = load i32, i32* %14, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = icmp slt i64 %159, %161
  br i1 %162, label %163, label %178

163:                                              ; preds = %157
  %164 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 8
  %165 = load i32**, i32*** %164, align 8
  %166 = load i32, i32* %14, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds i32*, i32** %165, i64 %167
  %169 = load i32*, i32** %168, align 8
  %170 = call i64 @wpabuf_len(i32* %169)
  %171 = load i64, i64* @WPS_DEV_TYPE_LEN, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %163
  br label %682

174:                                              ; preds = %163
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %14, align 4
  %177 = add i32 %176, 1
  store i32 %177, i32* %14, align 4
  br label %157

178:                                              ; preds = %157
  store i32 0, i32* %14, align 4
  br label %179

179:                                              ; preds = %205, %178
  %180 = load i32, i32* %14, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = icmp slt i64 %181, %183
  br i1 %184, label %185, label %208

185:                                              ; preds = %179
  %186 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %187 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %186, i32 0, i32 0
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 20
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %14, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 8
  %196 = load i32**, i32*** %195, align 8
  %197 = load i32, i32* %14, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds i32*, i32** %196, i64 %198
  %200 = load i32*, i32** %199, align 8
  %201 = call i32 @wpabuf_head(i32* %200)
  %202 = load i64, i64* @WPS_DEV_TYPE_LEN, align 8
  %203 = trunc i64 %202 to i32
  %204 = call i32 @os_memcpy(i32 %194, i32 %201, i32 %203)
  br label %205

205:                                              ; preds = %185
  %206 = load i32, i32* %14, align 4
  %207 = add i32 %206, 1
  store i32 %207, i32* %14, align 4
  br label %179

208:                                              ; preds = %179
  %209 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = trunc i64 %210 to i32
  %212 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %213 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %212, i32 0, i32 0
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 2
  store i32 %211, i32* %215, align 4
  %216 = load i32, i32* @CFG_CHANGED_SEC_DEVICE_TYPE, align 4
  %217 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %218 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %217, i32 0, i32 0
  %219 = load %struct.TYPE_4__*, %struct.TYPE_4__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = or i32 %221, %216
  store i32 %222, i32* %220, align 8
  br label %660

223:                                              ; preds = %135
  %224 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 4
  %225 = load i32, i32* %224, align 4
  %226 = call i64 @os_strcmp(i32 %225, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %227 = icmp eq i64 %226, 0
  br i1 %227, label %228, label %307

228:                                              ; preds = %223
  %229 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @DBUS_TYPE_ARRAY, align 8
  %232 = icmp ne i64 %230, %231
  br i1 %232, label %244, label %233

233:                                              ; preds = %228
  %234 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @WPAS_DBUS_TYPE_BINARRAY, align 8
  %237 = icmp ne i64 %235, %236
  br i1 %237, label %244, label %238

238:                                              ; preds = %233
  %239 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 2
  %240 = load i64, i64* %239, align 8
  %241 = load i32, i32* @P2P_MAX_WPS_VENDOR_EXT, align 4
  %242 = zext i32 %241 to i64
  %243 = icmp sgt i64 %240, %242
  br i1 %243, label %244, label %245

244:                                              ; preds = %238, %233, %228
  br label %676

245:                                              ; preds = %238
  %246 = load i32, i32* @CFG_CHANGED_VENDOR_EXTENSION, align 4
  %247 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %248 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %247, i32 0, i32 0
  %249 = load %struct.TYPE_4__*, %struct.TYPE_4__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 8
  %252 = or i32 %251, %246
  store i32 %252, i32* %250, align 8
  store i32 0, i32* %14, align 4
  br label %253

253:                                              ; preds = %303, %245
  %254 = load i32, i32* %14, align 4
  %255 = load i32, i32* @P2P_MAX_WPS_VENDOR_EXT, align 4
  %256 = icmp ult i32 %254, %255
  br i1 %256, label %257, label %306

257:                                              ; preds = %253
  %258 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %259 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %258, i32 0, i32 0
  %260 = load %struct.TYPE_4__*, %struct.TYPE_4__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 19
  %262 = load i32**, i32*** %261, align 8
  %263 = load i32, i32* %14, align 4
  %264 = zext i32 %263 to i64
  %265 = getelementptr inbounds i32*, i32** %262, i64 %264
  %266 = load i32*, i32** %265, align 8
  %267 = call i32 @wpabuf_free(i32* %266)
  %268 = load i32, i32* %14, align 4
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 2
  %271 = load i64, i64* %270, align 8
  %272 = icmp slt i64 %269, %271
  br i1 %272, label %273, label %293

273:                                              ; preds = %257
  %274 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 8
  %275 = load i32**, i32*** %274, align 8
  %276 = load i32, i32* %14, align 4
  %277 = zext i32 %276 to i64
  %278 = getelementptr inbounds i32*, i32** %275, i64 %277
  %279 = load i32*, i32** %278, align 8
  %280 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %281 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %280, i32 0, i32 0
  %282 = load %struct.TYPE_4__*, %struct.TYPE_4__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i32 0, i32 19
  %284 = load i32**, i32*** %283, align 8
  %285 = load i32, i32* %14, align 4
  %286 = zext i32 %285 to i64
  %287 = getelementptr inbounds i32*, i32** %284, i64 %286
  store i32* %279, i32** %287, align 8
  %288 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 8
  %289 = load i32**, i32*** %288, align 8
  %290 = load i32, i32* %14, align 4
  %291 = zext i32 %290 to i64
  %292 = getelementptr inbounds i32*, i32** %289, i64 %291
  store i32* null, i32** %292, align 8
  br label %302

293:                                              ; preds = %257
  %294 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %295 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %294, i32 0, i32 0
  %296 = load %struct.TYPE_4__*, %struct.TYPE_4__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %296, i32 0, i32 19
  %298 = load i32**, i32*** %297, align 8
  %299 = load i32, i32* %14, align 4
  %300 = zext i32 %299 to i64
  %301 = getelementptr inbounds i32*, i32** %298, i64 %300
  store i32* null, i32** %301, align 8
  br label %302

302:                                              ; preds = %293, %273
  br label %303

303:                                              ; preds = %302
  %304 = load i32, i32* %14, align 4
  %305 = add i32 %304, 1
  store i32 %305, i32* %14, align 4
  br label %253

306:                                              ; preds = %253
  br label %659

307:                                              ; preds = %223
  %308 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 4
  %309 = load i32, i32* %308, align 4
  %310 = call i64 @os_strcmp(i32 %309, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %311 = icmp eq i64 %310, 0
  br i1 %311, label %312, label %328

312:                                              ; preds = %307
  %313 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 0
  %314 = load i64, i64* %313, align 8
  %315 = load i64, i64* @DBUS_TYPE_UINT32, align 8
  %316 = icmp eq i64 %314, %315
  br i1 %316, label %317, label %328

317:                                              ; preds = %312
  %318 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 3
  %319 = load i32, i32* %318, align 8
  %320 = icmp sle i32 %319, 15
  br i1 %320, label %321, label %328

321:                                              ; preds = %317
  %322 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 3
  %323 = load i32, i32* %322, align 8
  %324 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %325 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %324, i32 0, i32 0
  %326 = load %struct.TYPE_4__*, %struct.TYPE_4__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %326, i32 0, i32 3
  store i32 %323, i32* %327, align 8
  br label %658

328:                                              ; preds = %317, %312, %307
  %329 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 4
  %330 = load i32, i32* %329, align 4
  %331 = call i64 @os_strcmp(i32 %330, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %332 = icmp eq i64 %331, 0
  br i1 %332, label %333, label %345

333:                                              ; preds = %328
  %334 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = load i64, i64* @DBUS_TYPE_BOOLEAN, align 8
  %337 = icmp eq i64 %335, %336
  br i1 %337, label %338, label %345

338:                                              ; preds = %333
  %339 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 5
  %340 = load i32, i32* %339, align 8
  %341 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %342 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %341, i32 0, i32 0
  %343 = load %struct.TYPE_4__*, %struct.TYPE_4__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %343, i32 0, i32 18
  store i32 %340, i32* %344, align 4
  br label %657

345:                                              ; preds = %333, %328
  %346 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 4
  %347 = load i32, i32* %346, align 4
  %348 = call i64 @os_strcmp(i32 %347, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %349 = icmp eq i64 %348, 0
  br i1 %349, label %350, label %369

350:                                              ; preds = %345
  %351 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 0
  %352 = load i64, i64* %351, align 8
  %353 = load i64, i64* @DBUS_TYPE_UINT32, align 8
  %354 = icmp eq i64 %352, %353
  br i1 %354, label %355, label %369

355:                                              ; preds = %350
  %356 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 3
  %357 = load i32, i32* %356, align 8
  %358 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %359 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %358, i32 0, i32 0
  %360 = load %struct.TYPE_4__*, %struct.TYPE_4__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %360, i32 0, i32 4
  store i32 %357, i32* %361, align 4
  %362 = load i32, i32* @CFG_CHANGED_P2P_LISTEN_CHANNEL, align 4
  %363 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %364 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %363, i32 0, i32 0
  %365 = load %struct.TYPE_4__*, %struct.TYPE_4__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 8
  %368 = or i32 %367, %362
  store i32 %368, i32* %366, align 8
  br label %656

369:                                              ; preds = %350, %345
  %370 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 4
  %371 = load i32, i32* %370, align 4
  %372 = call i64 @os_strcmp(i32 %371, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %373 = icmp eq i64 %372, 0
  br i1 %373, label %374, label %393

374:                                              ; preds = %369
  %375 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 0
  %376 = load i64, i64* %375, align 8
  %377 = load i64, i64* @DBUS_TYPE_UINT32, align 8
  %378 = icmp eq i64 %376, %377
  br i1 %378, label %379, label %393

379:                                              ; preds = %374
  %380 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 3
  %381 = load i32, i32* %380, align 8
  %382 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %383 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %382, i32 0, i32 0
  %384 = load %struct.TYPE_4__*, %struct.TYPE_4__** %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %384, i32 0, i32 5
  store i32 %381, i32* %385, align 8
  %386 = load i32, i32* @CFG_CHANGED_P2P_LISTEN_CHANNEL, align 4
  %387 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %388 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %387, i32 0, i32 0
  %389 = load %struct.TYPE_4__*, %struct.TYPE_4__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %389, i32 0, i32 1
  %391 = load i32, i32* %390, align 8
  %392 = or i32 %391, %386
  store i32 %392, i32* %390, align 8
  br label %655

393:                                              ; preds = %374, %369
  %394 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 4
  %395 = load i32, i32* %394, align 4
  %396 = call i64 @os_strcmp(i32 %395, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %397 = icmp eq i64 %396, 0
  br i1 %397, label %398, label %417

398:                                              ; preds = %393
  %399 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 0
  %400 = load i64, i64* %399, align 8
  %401 = load i64, i64* @DBUS_TYPE_UINT32, align 8
  %402 = icmp eq i64 %400, %401
  br i1 %402, label %403, label %417

403:                                              ; preds = %398
  %404 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 3
  %405 = load i32, i32* %404, align 8
  %406 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %407 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %406, i32 0, i32 0
  %408 = load %struct.TYPE_4__*, %struct.TYPE_4__** %407, align 8
  %409 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %408, i32 0, i32 6
  store i32 %405, i32* %409, align 4
  %410 = load i32, i32* @CFG_CHANGED_P2P_OPER_CHANNEL, align 4
  %411 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %412 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %411, i32 0, i32 0
  %413 = load %struct.TYPE_4__*, %struct.TYPE_4__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %413, i32 0, i32 1
  %415 = load i32, i32* %414, align 8
  %416 = or i32 %415, %410
  store i32 %416, i32* %414, align 8
  br label %654

417:                                              ; preds = %398, %393
  %418 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 4
  %419 = load i32, i32* %418, align 4
  %420 = call i64 @os_strcmp(i32 %419, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %421 = icmp eq i64 %420, 0
  br i1 %421, label %422, label %441

422:                                              ; preds = %417
  %423 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 0
  %424 = load i64, i64* %423, align 8
  %425 = load i64, i64* @DBUS_TYPE_UINT32, align 8
  %426 = icmp eq i64 %424, %425
  br i1 %426, label %427, label %441

427:                                              ; preds = %422
  %428 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 3
  %429 = load i32, i32* %428, align 8
  %430 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %431 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %430, i32 0, i32 0
  %432 = load %struct.TYPE_4__*, %struct.TYPE_4__** %431, align 8
  %433 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %432, i32 0, i32 7
  store i32 %429, i32* %433, align 8
  %434 = load i32, i32* @CFG_CHANGED_P2P_OPER_CHANNEL, align 4
  %435 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %436 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %435, i32 0, i32 0
  %437 = load %struct.TYPE_4__*, %struct.TYPE_4__** %436, align 8
  %438 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %437, i32 0, i32 1
  %439 = load i32, i32* %438, align 8
  %440 = or i32 %439, %434
  store i32 %440, i32* %438, align 8
  br label %653

441:                                              ; preds = %422, %417
  %442 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 4
  %443 = load i32, i32* %442, align 4
  %444 = call i64 @os_strcmp(i32 %443, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %445 = icmp eq i64 %444, 0
  br i1 %445, label %446, label %478

446:                                              ; preds = %441
  %447 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 0
  %448 = load i64, i64* %447, align 8
  %449 = load i64, i64* @DBUS_TYPE_STRING, align 8
  %450 = icmp ne i64 %448, %449
  br i1 %450, label %451, label %452

451:                                              ; preds = %446
  br label %676

452:                                              ; preds = %446
  %453 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 7
  %454 = load i32, i32* %453, align 8
  %455 = call i8* @os_strdup(i32 %454)
  store i8* %455, i8** %16, align 8
  %456 = load i8*, i8** %16, align 8
  %457 = icmp ne i8* %456, null
  br i1 %457, label %459, label %458

458:                                              ; preds = %452
  br label %682

459:                                              ; preds = %452
  %460 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %461 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %460, i32 0, i32 0
  %462 = load %struct.TYPE_4__*, %struct.TYPE_4__** %461, align 8
  %463 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %462, i32 0, i32 8
  %464 = load i8*, i8** %463, align 8
  %465 = call i32 @os_free(i8* %464)
  %466 = load i8*, i8** %16, align 8
  %467 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %468 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %467, i32 0, i32 0
  %469 = load %struct.TYPE_4__*, %struct.TYPE_4__** %468, align 8
  %470 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %469, i32 0, i32 8
  store i8* %466, i8** %470, align 8
  %471 = load i32, i32* @CFG_CHANGED_P2P_SSID_POSTFIX, align 4
  %472 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %473 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %472, i32 0, i32 0
  %474 = load %struct.TYPE_4__*, %struct.TYPE_4__** %473, align 8
  %475 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %474, i32 0, i32 1
  %476 = load i32, i32* %475, align 8
  %477 = or i32 %476, %471
  store i32 %477, i32* %475, align 8
  br label %652

478:                                              ; preds = %441
  %479 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 4
  %480 = load i32, i32* %479, align 4
  %481 = call i64 @os_strcmp(i32 %480, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  %482 = icmp eq i64 %481, 0
  br i1 %482, label %483, label %502

483:                                              ; preds = %478
  %484 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 0
  %485 = load i64, i64* %484, align 8
  %486 = load i64, i64* @DBUS_TYPE_BOOLEAN, align 8
  %487 = icmp eq i64 %485, %486
  br i1 %487, label %488, label %502

488:                                              ; preds = %483
  %489 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 5
  %490 = load i32, i32* %489, align 8
  %491 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %492 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %491, i32 0, i32 0
  %493 = load %struct.TYPE_4__*, %struct.TYPE_4__** %492, align 8
  %494 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %493, i32 0, i32 17
  store i32 %490, i32* %494, align 8
  %495 = load i32, i32* @CFG_CHANGED_P2P_INTRA_BSS, align 4
  %496 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %497 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %496, i32 0, i32 0
  %498 = load %struct.TYPE_4__*, %struct.TYPE_4__** %497, align 8
  %499 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %498, i32 0, i32 1
  %500 = load i32, i32* %499, align 8
  %501 = or i32 %500, %495
  store i32 %501, i32* %499, align 8
  br label %651

502:                                              ; preds = %483, %478
  %503 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 4
  %504 = load i32, i32* %503, align 4
  %505 = call i64 @os_strcmp(i32 %504, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %506 = icmp eq i64 %505, 0
  br i1 %506, label %507, label %520

507:                                              ; preds = %502
  %508 = call i32 @wpas_dbus_validate_dbus_ipaddr(%struct.wpa_dbus_dict_entry* byval(%struct.wpa_dbus_dict_entry) align 8 %13)
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %511, label %510

510:                                              ; preds = %507
  br label %676

511:                                              ; preds = %507
  %512 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %513 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %512, i32 0, i32 0
  %514 = load %struct.TYPE_4__*, %struct.TYPE_4__** %513, align 8
  %515 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %514, i32 0, i32 16
  %516 = load i32, i32* %515, align 4
  %517 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 6
  %518 = load i32, i32* %517, align 4
  %519 = call i32 @os_memcpy(i32 %516, i32 %518, i32 4)
  br label %650

520:                                              ; preds = %502
  %521 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 4
  %522 = load i32, i32* %521, align 4
  %523 = call i64 @os_strcmp(i32 %522, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  %524 = icmp eq i64 %523, 0
  br i1 %524, label %525, label %538

525:                                              ; preds = %520
  %526 = call i32 @wpas_dbus_validate_dbus_ipaddr(%struct.wpa_dbus_dict_entry* byval(%struct.wpa_dbus_dict_entry) align 8 %13)
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %529, label %528

528:                                              ; preds = %525
  br label %676

529:                                              ; preds = %525
  %530 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %531 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %530, i32 0, i32 0
  %532 = load %struct.TYPE_4__*, %struct.TYPE_4__** %531, align 8
  %533 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %532, i32 0, i32 15
  %534 = load i32, i32* %533, align 8
  %535 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 6
  %536 = load i32, i32* %535, align 4
  %537 = call i32 @os_memcpy(i32 %534, i32 %536, i32 4)
  br label %649

538:                                              ; preds = %520
  %539 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 4
  %540 = load i32, i32* %539, align 4
  %541 = call i64 @os_strcmp(i32 %540, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  %542 = icmp eq i64 %541, 0
  br i1 %542, label %543, label %556

543:                                              ; preds = %538
  %544 = call i32 @wpas_dbus_validate_dbus_ipaddr(%struct.wpa_dbus_dict_entry* byval(%struct.wpa_dbus_dict_entry) align 8 %13)
  %545 = icmp ne i32 %544, 0
  br i1 %545, label %547, label %546

546:                                              ; preds = %543
  br label %676

547:                                              ; preds = %543
  %548 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %549 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %548, i32 0, i32 0
  %550 = load %struct.TYPE_4__*, %struct.TYPE_4__** %549, align 8
  %551 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %550, i32 0, i32 14
  %552 = load i32, i32* %551, align 4
  %553 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 6
  %554 = load i32, i32* %553, align 4
  %555 = call i32 @os_memcpy(i32 %552, i32 %554, i32 4)
  br label %648

556:                                              ; preds = %538
  %557 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 4
  %558 = load i32, i32* %557, align 4
  %559 = call i64 @os_strcmp(i32 %558, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0))
  %560 = icmp eq i64 %559, 0
  br i1 %560, label %561, label %574

561:                                              ; preds = %556
  %562 = call i32 @wpas_dbus_validate_dbus_ipaddr(%struct.wpa_dbus_dict_entry* byval(%struct.wpa_dbus_dict_entry) align 8 %13)
  %563 = icmp ne i32 %562, 0
  br i1 %563, label %565, label %564

564:                                              ; preds = %561
  br label %676

565:                                              ; preds = %561
  %566 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %567 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %566, i32 0, i32 0
  %568 = load %struct.TYPE_4__*, %struct.TYPE_4__** %567, align 8
  %569 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %568, i32 0, i32 13
  %570 = load i32, i32* %569, align 8
  %571 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 6
  %572 = load i32, i32* %571, align 4
  %573 = call i32 @os_memcpy(i32 %570, i32 %572, i32 4)
  br label %647

574:                                              ; preds = %556
  %575 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 4
  %576 = load i32, i32* %575, align 4
  %577 = call i64 @os_strcmp(i32 %576, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0))
  %578 = icmp eq i64 %577, 0
  br i1 %578, label %579, label %591

579:                                              ; preds = %574
  %580 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 0
  %581 = load i64, i64* %580, align 8
  %582 = load i64, i64* @DBUS_TYPE_UINT32, align 8
  %583 = icmp eq i64 %581, %582
  br i1 %583, label %584, label %591

584:                                              ; preds = %579
  %585 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 3
  %586 = load i32, i32* %585, align 8
  %587 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %588 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %587, i32 0, i32 0
  %589 = load %struct.TYPE_4__*, %struct.TYPE_4__** %588, align 8
  %590 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %589, i32 0, i32 9
  store i32 %586, i32* %590, align 8
  br label %646

591:                                              ; preds = %579, %574
  %592 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 4
  %593 = load i32, i32* %592, align 4
  %594 = call i64 @os_strcmp(i32 %593, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0))
  %595 = icmp eq i64 %594, 0
  br i1 %595, label %596, label %608

596:                                              ; preds = %591
  %597 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 0
  %598 = load i64, i64* %597, align 8
  %599 = load i64, i64* @DBUS_TYPE_UINT32, align 8
  %600 = icmp eq i64 %598, %599
  br i1 %600, label %601, label %608

601:                                              ; preds = %596
  %602 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 3
  %603 = load i32, i32* %602, align 8
  %604 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %605 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %604, i32 0, i32 0
  %606 = load %struct.TYPE_4__*, %struct.TYPE_4__** %605, align 8
  %607 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %606, i32 0, i32 10
  store i32 %603, i32* %607, align 4
  br label %645

608:                                              ; preds = %596, %591
  %609 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 4
  %610 = load i32, i32* %609, align 4
  %611 = call i64 @os_strcmp(i32 %610, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0))
  %612 = icmp eq i64 %611, 0
  br i1 %612, label %613, label %625

613:                                              ; preds = %608
  %614 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 0
  %615 = load i64, i64* %614, align 8
  %616 = load i64, i64* @DBUS_TYPE_BOOLEAN, align 8
  %617 = icmp eq i64 %615, %616
  br i1 %617, label %618, label %625

618:                                              ; preds = %613
  %619 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 5
  %620 = load i32, i32* %619, align 8
  %621 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %622 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %621, i32 0, i32 0
  %623 = load %struct.TYPE_4__*, %struct.TYPE_4__** %622, align 8
  %624 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %623, i32 0, i32 12
  store i32 %620, i32* %624, align 4
  br label %644

625:                                              ; preds = %613, %608
  %626 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 4
  %627 = load i32, i32* %626, align 4
  %628 = call i64 @os_strcmp(i32 %627, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0))
  %629 = icmp eq i64 %628, 0
  br i1 %629, label %630, label %642

630:                                              ; preds = %625
  %631 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 0
  %632 = load i64, i64* %631, align 8
  %633 = load i64, i64* @DBUS_TYPE_UINT32, align 8
  %634 = icmp eq i64 %632, %633
  br i1 %634, label %635, label %642

635:                                              ; preds = %630
  %636 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %13, i32 0, i32 3
  %637 = load i32, i32* %636, align 8
  %638 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %639 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %638, i32 0, i32 0
  %640 = load %struct.TYPE_4__*, %struct.TYPE_4__** %639, align 8
  %641 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %640, i32 0, i32 11
  store i32 %637, i32* %641, align 8
  br label %643

642:                                              ; preds = %630, %625
  br label %676

643:                                              ; preds = %635
  br label %644

644:                                              ; preds = %643, %618
  br label %645

645:                                              ; preds = %644, %601
  br label %646

646:                                              ; preds = %645, %584
  br label %647

647:                                              ; preds = %646, %565
  br label %648

648:                                              ; preds = %647, %547
  br label %649

649:                                              ; preds = %648, %529
  br label %650

650:                                              ; preds = %649, %511
  br label %651

651:                                              ; preds = %650, %488
  br label %652

652:                                              ; preds = %651, %459
  br label %653

653:                                              ; preds = %652, %427
  br label %654

654:                                              ; preds = %653, %403
  br label %655

655:                                              ; preds = %654, %379
  br label %656

656:                                              ; preds = %655, %355
  br label %657

657:                                              ; preds = %656, %338
  br label %658

658:                                              ; preds = %657, %321
  br label %659

659:                                              ; preds = %658, %306
  br label %660

660:                                              ; preds = %659, %208
  br label %661

661:                                              ; preds = %660, %117
  br label %662

662:                                              ; preds = %661, %77
  %663 = call i32 @wpa_dbus_dict_entry_clear(%struct.wpa_dbus_dict_entry* %13)
  br label %42

664:                                              ; preds = %42
  %665 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %666 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %665, i32 0, i32 0
  %667 = load %struct.TYPE_4__*, %struct.TYPE_4__** %666, align 8
  %668 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %667, i32 0, i32 1
  %669 = load i32, i32* %668, align 8
  %670 = icmp ne i32 %669, 0
  br i1 %670, label %671, label %674

671:                                              ; preds = %664
  %672 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %673 = call i32 @wpa_supplicant_update_config(%struct.wpa_supplicant* %672)
  br label %674

674:                                              ; preds = %671, %664
  %675 = load i32, i32* @TRUE, align 4
  store i32 %675, i32* %5, align 4
  br label %688

676:                                              ; preds = %642, %564, %546, %528, %510, %451, %244, %155, %116, %69
  %677 = load i32*, i32** %8, align 8
  %678 = load i32, i32* @DBUS_ERROR_INVALID_ARGS, align 4
  %679 = call i32 @dbus_set_error_const(i32* %677, i32 %678, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %680 = call i32 @wpa_dbus_dict_entry_clear(%struct.wpa_dbus_dict_entry* %13)
  %681 = load i32, i32* @FALSE, align 4
  store i32 %681, i32* %5, align 4
  br label %688

682:                                              ; preds = %458, %173, %76
  %683 = load i32*, i32** %8, align 8
  %684 = load i32, i32* @DBUS_ERROR_NO_MEMORY, align 4
  %685 = call i32 @dbus_set_error_const(i32* %683, i32 %684, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0))
  %686 = call i32 @wpa_dbus_dict_entry_clear(%struct.wpa_dbus_dict_entry* %13)
  %687 = load i32, i32* @FALSE, align 4
  store i32 %687, i32* %5, align 4
  br label %688

688:                                              ; preds = %682, %676, %674, %48, %39, %26
  %689 = load i32, i32* %5, align 4
  ret i32 %689
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @wpa_dbus_p2p_check_enabled(%struct.wpa_supplicant*, i32*, i32*, i32*) #2

declare dso_local i32 @dbus_message_iter_recurse(i32*, i32*) #2

declare dso_local i32 @wpa_dbus_dict_open_read(i32*, i32*, i32*) #2

declare dso_local i64 @wpa_dbus_dict_has_dict_entry(i32*) #2

declare dso_local i32 @wpa_dbus_dict_get_entry(i32*, %struct.wpa_dbus_dict_entry*) #2

declare dso_local i32 @dbus_set_error_const(i32*, i32, i8*) #2

declare dso_local i64 @os_strcmp(i32, i8*) #2

declare dso_local i64 @os_strlen(i32) #2

declare dso_local i8* @os_strdup(i32) #2

declare dso_local i32 @os_free(i8*) #2

declare dso_local i32 @os_memcpy(i32, i32, i32) #2

declare dso_local i64 @wpabuf_len(i32*) #2

declare dso_local i32 @wpabuf_head(i32*) #2

declare dso_local i32 @wpabuf_free(i32*) #2

declare dso_local i32 @wpas_dbus_validate_dbus_ipaddr(%struct.wpa_dbus_dict_entry* byval(%struct.wpa_dbus_dict_entry) align 8) #2

declare dso_local i32 @wpa_dbus_dict_entry_clear(%struct.wpa_dbus_dict_entry*) #2

declare dso_local i32 @wpa_supplicant_update_config(%struct.wpa_supplicant*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
