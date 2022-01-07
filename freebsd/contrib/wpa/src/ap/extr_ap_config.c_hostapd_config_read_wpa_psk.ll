; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_config.c_hostapd_config_read_wpa_psk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_config.c_hostapd_config_read_wpa_psk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_ssid = type { %struct.hostapd_wpa_psk*, i32, i32 }
%struct.hostapd_wpa_psk = type { i32, i32, %struct.hostapd_wpa_psk*, i32, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"WPA PSK file '%s' not found.\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"keyid\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"vlanid\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Unrecognized '%s=%s' on line %d in '%s'\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"Invalid MAC address '%s' on line %d in '%s'\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"WPA PSK allocation failed\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"No PSK on line %d in '%s'\00", align 1
@PMK_LEN = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [36 x i8] c"Invalid PSK '%s' on line %d in '%s'\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"PSK keyid too long on line %d in '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.hostapd_ssid*)* @hostapd_config_read_wpa_psk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_config_read_wpa_psk(i8* %0, %struct.hostapd_ssid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hostapd_ssid*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [128 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.hostapd_wpa_psk*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.hostapd_ssid* %1, %struct.hostapd_ssid** %5, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %24 = load i32, i32* @ETH_ALEN, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %19, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %20, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %22, align 4
  br label %251

31:                                               ; preds = %2
  %32 = load i8*, i8** %4, align 8
  %33 = call i32* @fopen(i8* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %33, i32** %6, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @MSG_ERROR, align 4
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 (i32, i8*, ...) @wpa_printf(i32 %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %22, align 4
  br label %251

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %238, %76, %53, %40
  %42 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %43 = load i32*, i32** %6, align 8
  %44 = call i64 @fgets(i8* %42, i32 128, i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %247

46:                                               ; preds = %41
  store i32 0, i32* %23, align 4
  %47 = load i32, i32* %15, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %15, align 4
  %49 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %50 = load i8, i8* %49, align 16
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 35
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %41

54:                                               ; preds = %46
  %55 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  store i8* %55, i8** %8, align 8
  br label %56

56:                                               ; preds = %68, %54
  %57 = load i8*, i8** %8, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %56
  %62 = load i8*, i8** %8, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 10
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i8*, i8** %8, align 8
  store i8 0, i8* %67, align 1
  br label %71

68:                                               ; preds = %61
  %69 = load i8*, i8** %8, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %8, align 8
  br label %56

71:                                               ; preds = %66, %56
  %72 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %73 = load i8, i8* %72, align 16
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %41

77:                                               ; preds = %71
  store i8* null, i8** %10, align 8
  store i8* null, i8** %9, align 8
  br label %78

78:                                               ; preds = %120, %77
  %79 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %80 = call i8* @str_token(i8* %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %10)
  store i8* %80, i8** %12, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %121

82:                                               ; preds = %78
  %83 = load i8*, i8** %12, align 8
  %84 = call i32 @os_strchr(i8* %83, i8 signext 61)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  br label %121

87:                                               ; preds = %82
  store i8* null, i8** %11, align 8
  %88 = load i8*, i8** %12, align 8
  %89 = call i8* @str_token(i8* %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %11)
  store i8* %89, i8** %13, align 8
  %90 = load i8*, i8** %13, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %87
  br label %121

93:                                               ; preds = %87
  %94 = load i8*, i8** %12, align 8
  %95 = call i8* @str_token(i8* %94, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8** %11)
  store i8* %95, i8** %14, align 8
  %96 = load i8*, i8** %14, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %93
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8** %14, align 8
  br label %99

99:                                               ; preds = %98, %93
  %100 = load i8*, i8** %13, align 8
  %101 = call i32 @os_strcmp(i8* %100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %99
  %104 = load i8*, i8** %14, align 8
  store i8* %104, i8** %9, align 8
  br label %120

105:                                              ; preds = %99
  %106 = load i8*, i8** %13, align 8
  %107 = call i32 @os_strcmp(i8* %106, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %105
  %110 = load i8*, i8** %14, align 8
  %111 = call i32 @atoi(i8* %110)
  store i32 %111, i32* %23, align 4
  br label %119

112:                                              ; preds = %105
  %113 = load i32, i32* @MSG_ERROR, align 4
  %114 = load i8*, i8** %13, align 8
  %115 = load i8*, i8** %14, align 8
  %116 = load i32, i32* %15, align 4
  %117 = load i8*, i8** %4, align 8
  %118 = call i32 (i32, i8*, ...) @wpa_printf(i32 %113, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i8* %114, i8* %115, i32 %116, i8* %117)
  store i32 -1, i32* %16, align 4
  br label %121

119:                                              ; preds = %109
  br label %120

120:                                              ; preds = %119, %103
  br label %78

121:                                              ; preds = %112, %92, %86, %78
  %122 = load i32, i32* %16, align 4
  %123 = icmp eq i32 %122, -1
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  br label %247

125:                                              ; preds = %121
  %126 = load i8*, i8** %12, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %125
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8** %12, align 8
  br label %129

129:                                              ; preds = %128, %125
  %130 = load i8*, i8** %12, align 8
  %131 = call i64 @hwaddr_aton(i8* %130, i32* %27)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %129
  %134 = load i32, i32* @MSG_ERROR, align 4
  %135 = load i8*, i8** %12, align 8
  %136 = load i32, i32* %15, align 4
  %137 = load i8*, i8** %4, align 8
  %138 = call i32 (i32, i8*, ...) @wpa_printf(i32 %134, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i8* %135, i32 %136, i8* %137)
  store i32 -1, i32* %16, align 4
  br label %247

139:                                              ; preds = %129
  %140 = call %struct.hostapd_wpa_psk* @os_zalloc(i32 32)
  store %struct.hostapd_wpa_psk* %140, %struct.hostapd_wpa_psk** %21, align 8
  %141 = load %struct.hostapd_wpa_psk*, %struct.hostapd_wpa_psk** %21, align 8
  %142 = icmp eq %struct.hostapd_wpa_psk* %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %139
  %144 = load i32, i32* @MSG_ERROR, align 4
  %145 = call i32 (i32, i8*, ...) @wpa_printf(i32 %144, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %16, align 4
  br label %247

146:                                              ; preds = %139
  %147 = load i32, i32* %23, align 4
  %148 = load %struct.hostapd_wpa_psk*, %struct.hostapd_wpa_psk** %21, align 8
  %149 = getelementptr inbounds %struct.hostapd_wpa_psk, %struct.hostapd_wpa_psk* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  %150 = call i64 @is_zero_ether_addr(i32* %27)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %146
  %153 = load %struct.hostapd_wpa_psk*, %struct.hostapd_wpa_psk** %21, align 8
  %154 = getelementptr inbounds %struct.hostapd_wpa_psk, %struct.hostapd_wpa_psk* %153, i32 0, i32 1
  store i32 1, i32* %154, align 4
  br label %161

155:                                              ; preds = %146
  %156 = load %struct.hostapd_wpa_psk*, %struct.hostapd_wpa_psk** %21, align 8
  %157 = getelementptr inbounds %struct.hostapd_wpa_psk, %struct.hostapd_wpa_psk* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @ETH_ALEN, align 4
  %160 = call i32 @os_memcpy(i32 %158, i32* %27, i32 %159)
  br label %161

161:                                              ; preds = %155, %152
  %162 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %163 = call i8* @str_token(i8* %162, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8** %10)
  store i8* %163, i8** %8, align 8
  %164 = load i8*, i8** %8, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %173, label %166

166:                                              ; preds = %161
  %167 = load i32, i32* @MSG_ERROR, align 4
  %168 = load i32, i32* %15, align 4
  %169 = load i8*, i8** %4, align 8
  %170 = call i32 (i32, i8*, ...) @wpa_printf(i32 %167, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %168, i8* %169)
  %171 = load %struct.hostapd_wpa_psk*, %struct.hostapd_wpa_psk** %21, align 8
  %172 = call i32 @os_free(%struct.hostapd_wpa_psk* %171)
  store i32 -1, i32* %16, align 4
  br label %247

173:                                              ; preds = %161
  store i32 0, i32* %18, align 4
  %174 = load i8*, i8** %8, align 8
  %175 = call i32 @os_strlen(i8* %174)
  store i32 %175, i32* %17, align 4
  %176 = load i32, i32* %17, align 4
  %177 = icmp eq i32 %176, 64
  br i1 %177, label %178, label %187

178:                                              ; preds = %173
  %179 = load i8*, i8** %8, align 8
  %180 = load %struct.hostapd_wpa_psk*, %struct.hostapd_wpa_psk** %21, align 8
  %181 = getelementptr inbounds %struct.hostapd_wpa_psk, %struct.hostapd_wpa_psk* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @PMK_LEN, align 4
  %184 = call i64 @hexstr2bin(i8* %179, i32 %182, i32 %183)
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %178
  store i32 1, i32* %18, align 4
  br label %207

187:                                              ; preds = %178, %173
  %188 = load i32, i32* %17, align 4
  %189 = icmp sge i32 %188, 8
  br i1 %189, label %190, label %206

190:                                              ; preds = %187
  %191 = load i32, i32* %17, align 4
  %192 = icmp slt i32 %191, 64
  br i1 %192, label %193, label %206

193:                                              ; preds = %190
  %194 = load i8*, i8** %8, align 8
  %195 = load %struct.hostapd_ssid*, %struct.hostapd_ssid** %5, align 8
  %196 = getelementptr inbounds %struct.hostapd_ssid, %struct.hostapd_ssid* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.hostapd_ssid*, %struct.hostapd_ssid** %5, align 8
  %199 = getelementptr inbounds %struct.hostapd_ssid, %struct.hostapd_ssid* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.hostapd_wpa_psk*, %struct.hostapd_wpa_psk** %21, align 8
  %202 = getelementptr inbounds %struct.hostapd_wpa_psk, %struct.hostapd_wpa_psk* %201, i32 0, i32 4
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @PMK_LEN, align 4
  %205 = call i32 @pbkdf2_sha1(i8* %194, i32 %197, i32 %200, i32 4096, i32 %203, i32 %204)
  store i32 1, i32* %18, align 4
  br label %206

206:                                              ; preds = %193, %190, %187
  br label %207

207:                                              ; preds = %206, %186
  %208 = load i32, i32* %18, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %218, label %210

210:                                              ; preds = %207
  %211 = load i32, i32* @MSG_ERROR, align 4
  %212 = load i8*, i8** %8, align 8
  %213 = load i32, i32* %15, align 4
  %214 = load i8*, i8** %4, align 8
  %215 = call i32 (i32, i8*, ...) @wpa_printf(i32 %211, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i8* %212, i32 %213, i8* %214)
  %216 = load %struct.hostapd_wpa_psk*, %struct.hostapd_wpa_psk** %21, align 8
  %217 = call i32 @os_free(%struct.hostapd_wpa_psk* %216)
  store i32 -1, i32* %16, align 4
  br label %247

218:                                              ; preds = %207
  %219 = load i8*, i8** %9, align 8
  %220 = icmp ne i8* %219, null
  br i1 %220, label %221, label %238

221:                                              ; preds = %218
  %222 = load %struct.hostapd_wpa_psk*, %struct.hostapd_wpa_psk** %21, align 8
  %223 = getelementptr inbounds %struct.hostapd_wpa_psk, %struct.hostapd_wpa_psk* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 8
  %225 = load i8*, i8** %9, align 8
  %226 = call i32 @os_strlcpy(i32 %224, i8* %225, i32 4)
  store i32 %226, i32* %17, align 4
  %227 = load i32, i32* %17, align 4
  %228 = sext i32 %227 to i64
  %229 = icmp uge i64 %228, 4
  br i1 %229, label %230, label %237

230:                                              ; preds = %221
  %231 = load i32, i32* @MSG_ERROR, align 4
  %232 = load i32, i32* %15, align 4
  %233 = load i8*, i8** %4, align 8
  %234 = call i32 (i32, i8*, ...) @wpa_printf(i32 %231, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), i32 %232, i8* %233)
  %235 = load %struct.hostapd_wpa_psk*, %struct.hostapd_wpa_psk** %21, align 8
  %236 = call i32 @os_free(%struct.hostapd_wpa_psk* %235)
  store i32 -1, i32* %16, align 4
  br label %247

237:                                              ; preds = %221
  br label %238

238:                                              ; preds = %237, %218
  %239 = load %struct.hostapd_ssid*, %struct.hostapd_ssid** %5, align 8
  %240 = getelementptr inbounds %struct.hostapd_ssid, %struct.hostapd_ssid* %239, i32 0, i32 0
  %241 = load %struct.hostapd_wpa_psk*, %struct.hostapd_wpa_psk** %240, align 8
  %242 = load %struct.hostapd_wpa_psk*, %struct.hostapd_wpa_psk** %21, align 8
  %243 = getelementptr inbounds %struct.hostapd_wpa_psk, %struct.hostapd_wpa_psk* %242, i32 0, i32 2
  store %struct.hostapd_wpa_psk* %241, %struct.hostapd_wpa_psk** %243, align 8
  %244 = load %struct.hostapd_wpa_psk*, %struct.hostapd_wpa_psk** %21, align 8
  %245 = load %struct.hostapd_ssid*, %struct.hostapd_ssid** %5, align 8
  %246 = getelementptr inbounds %struct.hostapd_ssid, %struct.hostapd_ssid* %245, i32 0, i32 0
  store %struct.hostapd_wpa_psk* %244, %struct.hostapd_wpa_psk** %246, align 8
  br label %41

247:                                              ; preds = %230, %210, %166, %143, %133, %124, %41
  %248 = load i32*, i32** %6, align 8
  %249 = call i32 @fclose(i32* %248)
  %250 = load i32, i32* %16, align 4
  store i32 %250, i32* %3, align 4
  store i32 1, i32* %22, align 4
  br label %251

251:                                              ; preds = %247, %36, %30
  %252 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %252)
  %253 = load i32, i32* %3, align 4
  ret i32 %253
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i8* @str_token(i8*, i8*, i8**) #2

declare dso_local i32 @os_strchr(i8*, i8 signext) #2

declare dso_local i32 @os_strcmp(i8*, i8*) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i64 @hwaddr_aton(i8*, i32*) #2

declare dso_local %struct.hostapd_wpa_psk* @os_zalloc(i32) #2

declare dso_local i64 @is_zero_ether_addr(i32*) #2

declare dso_local i32 @os_memcpy(i32, i32*, i32) #2

declare dso_local i32 @os_free(%struct.hostapd_wpa_psk*) #2

declare dso_local i32 @os_strlen(i8*) #2

declare dso_local i64 @hexstr2bin(i8*, i32, i32) #2

declare dso_local i32 @pbkdf2_sha1(i8*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @os_strlcpy(i32, i8*, i32) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
