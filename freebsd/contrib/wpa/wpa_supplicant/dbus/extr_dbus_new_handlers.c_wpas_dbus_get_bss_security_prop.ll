; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_get_bss_security_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_get_bss_security_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_dbus_property_desc = type { i32 }
%struct.wpa_ie_data = type { i32, i32, i32, i64, i32 }

@DBUS_TYPE_VARIANT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"a{sv}\00", align 1
@WPA_KEY_MGMT_PSK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"wpa-psk\00", align 1
@WPA_KEY_MGMT_FT_PSK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"wpa-ft-psk\00", align 1
@WPA_KEY_MGMT_PSK_SHA256 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"wpa-psk-sha256\00", align 1
@WPA_KEY_MGMT_IEEE8021X = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"wpa-eap\00", align 1
@WPA_KEY_MGMT_FT_IEEE8021X = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"wpa-ft-eap\00", align 1
@WPA_KEY_MGMT_IEEE8021X_SHA256 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"wpa-eap-sha256\00", align 1
@WPA_KEY_MGMT_NONE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"wpa-none\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"KeyMgmt\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"wep40\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"tkip\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"ccmp\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"gcmp\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"wep104\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"ccmp-256\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"gcmp-256\00", align 1
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"Group\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"Pairwise\00", align 1
@WPA_PROTO_RSN = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [10 x i8] c"MgmtGroup\00", align 1
@TRUE = common dso_local global i32 0, align 4
@DBUS_ERROR_NO_MEMORY = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [10 x i8] c"no memory\00", align 1
@FALSE = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FILS_SHA256 = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FILS_SHA384 = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FT_FILS_SHA256 = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FT_FILS_SHA384 = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FT_SAE = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_IEEE8021X_SUITE_B = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_IEEE8021X_SUITE_B_192 = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_SAE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_dbus_property_desc*, i32*, %struct.wpa_ie_data*, i32*)* @wpas_dbus_get_bss_security_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_dbus_get_bss_security_prop(%struct.wpa_dbus_property_desc* %0, i32* %1, %struct.wpa_ie_data* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_dbus_property_desc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.wpa_ie_data*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca [5 x i8*], align 16
  %14 = alloca [15 x i8*], align 16
  %15 = alloca i32, align 4
  store %struct.wpa_dbus_property_desc* %0, %struct.wpa_dbus_property_desc** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.wpa_ie_data* %2, %struct.wpa_ie_data** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* @DBUS_TYPE_VARIANT, align 4
  %18 = call i32 @dbus_message_iter_open_container(i32* %16, i32 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %11)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  br label %220

21:                                               ; preds = %4
  %22 = call i32 @wpa_dbus_dict_open_write(i32* %11, i32* %10)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  br label %220

25:                                               ; preds = %21
  store i32 0, i32* %15, align 4
  %26 = load %struct.wpa_ie_data*, %struct.wpa_ie_data** %8, align 8
  %27 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @WPA_KEY_MGMT_PSK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load i32, i32* %15, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %15, align 4
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds [15 x i8*], [15 x i8*]* %14, i64 0, i64 %35
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %36, align 8
  br label %37

37:                                               ; preds = %32, %25
  %38 = load %struct.wpa_ie_data*, %struct.wpa_ie_data** %8, align 8
  %39 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @WPA_KEY_MGMT_FT_PSK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load i32, i32* %15, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %15, align 4
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds [15 x i8*], [15 x i8*]* %14, i64 0, i64 %47
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %48, align 8
  br label %49

49:                                               ; preds = %44, %37
  %50 = load %struct.wpa_ie_data*, %struct.wpa_ie_data** %8, align 8
  %51 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @WPA_KEY_MGMT_PSK_SHA256, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load i32, i32* %15, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %15, align 4
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds [15 x i8*], [15 x i8*]* %14, i64 0, i64 %59
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8** %60, align 8
  br label %61

61:                                               ; preds = %56, %49
  %62 = load %struct.wpa_ie_data*, %struct.wpa_ie_data** %8, align 8
  %63 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @WPA_KEY_MGMT_IEEE8021X, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = load i32, i32* %15, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %15, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds [15 x i8*], [15 x i8*]* %14, i64 0, i64 %71
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %72, align 8
  br label %73

73:                                               ; preds = %68, %61
  %74 = load %struct.wpa_ie_data*, %struct.wpa_ie_data** %8, align 8
  %75 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @WPA_KEY_MGMT_FT_IEEE8021X, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = load i32, i32* %15, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %15, align 4
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds [15 x i8*], [15 x i8*]* %14, i64 0, i64 %83
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8** %84, align 8
  br label %85

85:                                               ; preds = %80, %73
  %86 = load %struct.wpa_ie_data*, %struct.wpa_ie_data** %8, align 8
  %87 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @WPA_KEY_MGMT_IEEE8021X_SHA256, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %85
  %93 = load i32, i32* %15, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %15, align 4
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds [15 x i8*], [15 x i8*]* %14, i64 0, i64 %95
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8** %96, align 8
  br label %97

97:                                               ; preds = %92, %85
  %98 = load %struct.wpa_ie_data*, %struct.wpa_ie_data** %8, align 8
  %99 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @WPA_KEY_MGMT_NONE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %97
  %105 = load i32, i32* %15, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %15, align 4
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds [15 x i8*], [15 x i8*]* %14, i64 0, i64 %107
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8** %108, align 8
  br label %109

109:                                              ; preds = %104, %97
  %110 = getelementptr inbounds [15 x i8*], [15 x i8*]* %14, i64 0, i64 0
  %111 = load i32, i32* %15, align 4
  %112 = call i32 @wpa_dbus_dict_append_string_array(i32* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %110, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %109
  br label %220

115:                                              ; preds = %109
  %116 = load %struct.wpa_ie_data*, %struct.wpa_ie_data** %8, align 8
  %117 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  switch i32 %118, label %126 [
    i32 128, label %119
    i32 130, label %120
    i32 134, label %121
    i32 132, label %122
    i32 129, label %123
    i32 133, label %124
    i32 131, label %125
  ]

119:                                              ; preds = %115
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8** %12, align 8
  br label %127

120:                                              ; preds = %115
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8** %12, align 8
  br label %127

121:                                              ; preds = %115
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8** %12, align 8
  br label %127

122:                                              ; preds = %115
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8** %12, align 8
  br label %127

123:                                              ; preds = %115
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8** %12, align 8
  br label %127

124:                                              ; preds = %115
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8** %12, align 8
  br label %127

125:                                              ; preds = %115
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i8** %12, align 8
  br label %127

126:                                              ; preds = %115
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0), i8** %12, align 8
  br label %127

127:                                              ; preds = %126, %125, %124, %123, %122, %121, %120, %119
  %128 = load i8*, i8** %12, align 8
  %129 = call i32 @wpa_dbus_dict_append_string(i32* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %127
  br label %220

132:                                              ; preds = %127
  store i32 0, i32* %15, align 4
  %133 = load %struct.wpa_ie_data*, %struct.wpa_ie_data** %8, align 8
  %134 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = and i32 %135, 130
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %132
  %139 = load i32, i32* %15, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %15, align 4
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i64 0, i64 %141
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8** %142, align 8
  br label %143

143:                                              ; preds = %138, %132
  %144 = load %struct.wpa_ie_data*, %struct.wpa_ie_data** %8, align 8
  %145 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = and i32 %146, 134
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %143
  %150 = load i32, i32* %15, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %15, align 4
  %152 = sext i32 %150 to i64
  %153 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i64 0, i64 %152
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8** %153, align 8
  br label %154

154:                                              ; preds = %149, %143
  %155 = load %struct.wpa_ie_data*, %struct.wpa_ie_data** %8, align 8
  %156 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = and i32 %157, 132
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %154
  %161 = load i32, i32* %15, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %15, align 4
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i64 0, i64 %163
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8** %164, align 8
  br label %165

165:                                              ; preds = %160, %154
  %166 = load %struct.wpa_ie_data*, %struct.wpa_ie_data** %8, align 8
  %167 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = and i32 %168, 133
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %165
  %172 = load i32, i32* %15, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %15, align 4
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i64 0, i64 %174
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8** %175, align 8
  br label %176

176:                                              ; preds = %171, %165
  %177 = load %struct.wpa_ie_data*, %struct.wpa_ie_data** %8, align 8
  %178 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = and i32 %179, 131
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %176
  %183 = load i32, i32* %15, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %15, align 4
  %185 = sext i32 %183 to i64
  %186 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i64 0, i64 %185
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i8** %186, align 8
  br label %187

187:                                              ; preds = %182, %176
  %188 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i64 0, i64 0
  %189 = load i32, i32* %15, align 4
  %190 = call i32 @wpa_dbus_dict_append_string_array(i32* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i8** %188, i32 %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %187
  br label %220

193:                                              ; preds = %187
  %194 = load %struct.wpa_ie_data*, %struct.wpa_ie_data** %8, align 8
  %195 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %194, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @WPA_PROTO_RSN, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %210

199:                                              ; preds = %193
  %200 = load %struct.wpa_ie_data*, %struct.wpa_ie_data** %8, align 8
  %201 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 8
  switch i32 %202, label %203 [
  ]

203:                                              ; preds = %199
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0), i8** %12, align 8
  br label %204

204:                                              ; preds = %203
  %205 = load i8*, i8** %12, align 8
  %206 = call i32 @wpa_dbus_dict_append_string(i32* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i8* %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %209, label %208

208:                                              ; preds = %204
  br label %220

209:                                              ; preds = %204
  br label %210

210:                                              ; preds = %209, %193
  %211 = call i32 @wpa_dbus_dict_close_write(i32* %11, i32* %10)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %210
  %214 = load i32*, i32** %7, align 8
  %215 = call i32 @dbus_message_iter_close_container(i32* %214, i32* %11)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %218, label %217

217:                                              ; preds = %213, %210
  br label %220

218:                                              ; preds = %213
  %219 = load i32, i32* @TRUE, align 4
  store i32 %219, i32* %5, align 4
  br label %225

220:                                              ; preds = %217, %208, %192, %131, %114, %24, %20
  %221 = load i32*, i32** %9, align 8
  %222 = load i32, i32* @DBUS_ERROR_NO_MEMORY, align 4
  %223 = call i32 @dbus_set_error_const(i32* %221, i32 %222, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0))
  %224 = load i32, i32* @FALSE, align 4
  store i32 %224, i32* %5, align 4
  br label %225

225:                                              ; preds = %220, %218
  %226 = load i32, i32* %5, align 4
  ret i32 %226
}

declare dso_local i32 @dbus_message_iter_open_container(i32*, i32, i8*, i32*) #1

declare dso_local i32 @wpa_dbus_dict_open_write(i32*, i32*) #1

declare dso_local i32 @wpa_dbus_dict_append_string_array(i32*, i8*, i8**, i32) #1

declare dso_local i32 @wpa_dbus_dict_append_string(i32*, i8*, i8*) #1

declare dso_local i32 @wpa_dbus_dict_close_write(i32*, i32*) #1

declare dso_local i32 @dbus_message_iter_close_container(i32*, i32*) #1

declare dso_local i32 @dbus_set_error_const(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
