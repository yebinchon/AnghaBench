; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hostapd.c_hostapd_das_find_sta.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hostapd.c_hostapd_das_find_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { i32, %struct.sta_info*, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.hostapd_data = type { %struct.sta_info* }
%struct.radius_das_attrs = type { i32, i32, i8*, i64, i8*, i64, i32*, i32*, i64 }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"RADIUS DAS: No Calling-Station-Id match\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"RADIUS DAS: Calling-Station-Id match\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"RADIUS DAS: Acct-Session-Id cannot match\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%016llX\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"RADIUS DAS: No matches remaining after Acct-Session-Id check\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"RADIUS DAS: Acct-Session-Id match\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"RADIUS DAS: Acct-Multi-Session-Id cannot match\00", align 1
@.str.7 = private unnamed_addr constant [67 x i8] c"RADIUS DAS: No matches remaining after Acct-Multi-Session-Id check\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"RADIUS DAS: Acct-Multi-Session-Id match\00", align 1
@.str.9 = private unnamed_addr constant [70 x i8] c"RADIUS DAS: No matches remaining after Chargeable-User-Identity check\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"RADIUS DAS: Chargeable-User-Identity match\00", align 1
@.str.11 = private unnamed_addr constant [55 x i8] c"RADIUS DAS: No matches remaining after User-Name check\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"RADIUS DAS: User-Name match\00", align 1
@.str.13 = private unnamed_addr constant [58 x i8] c"RADIUS DAS: No session identification attributes included\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sta_info* (%struct.hostapd_data*, %struct.radius_das_attrs*, i32*)* @hostapd_das_find_sta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sta_info* @hostapd_das_find_sta(%struct.hostapd_data* %0, %struct.radius_das_attrs* %1, i32* %2) #0 {
  %4 = alloca %struct.sta_info*, align 8
  %5 = alloca %struct.hostapd_data*, align 8
  %6 = alloca %struct.radius_das_attrs*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sta_info*, align 8
  %9 = alloca %struct.sta_info*, align 8
  %10 = alloca [128 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.wpabuf*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %5, align 8
  store %struct.radius_das_attrs* %1, %struct.radius_das_attrs** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %11, align 4
  %16 = load i32*, i32** %7, align 8
  store i32 0, i32* %16, align 4
  %17 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %18 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %17, i32 0, i32 0
  %19 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  store %struct.sta_info* %19, %struct.sta_info** %9, align 8
  br label %20

20:                                               ; preds = %26, %3
  %21 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %22 = icmp ne %struct.sta_info* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %25 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  br label %26

26:                                               ; preds = %23
  %27 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %28 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %27, i32 0, i32 1
  %29 = load %struct.sta_info*, %struct.sta_info** %28, align 8
  store %struct.sta_info* %29, %struct.sta_info** %9, align 8
  br label %20

30:                                               ; preds = %20
  %31 = load %struct.radius_das_attrs*, %struct.radius_das_attrs** %6, align 8
  %32 = getelementptr inbounds %struct.radius_das_attrs, %struct.radius_das_attrs* %31, i32 0, i32 8
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %71

35:                                               ; preds = %30
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %11, align 4
  %38 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %39 = load %struct.radius_das_attrs*, %struct.radius_das_attrs** %6, align 8
  %40 = getelementptr inbounds %struct.radius_das_attrs, %struct.radius_das_attrs* %39, i32 0, i32 8
  %41 = load i64, i64* %40, align 8
  %42 = call %struct.sta_info* @ap_get_sta(%struct.hostapd_data* %38, i64 %41)
  store %struct.sta_info* %42, %struct.sta_info** %9, align 8
  %43 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %44 = icmp ne %struct.sta_info* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %35
  %46 = load i32, i32* @MSG_DEBUG, align 4
  %47 = call i32 @wpa_printf(i32 %46, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store %struct.sta_info* null, %struct.sta_info** %4, align 8
  br label %366

48:                                               ; preds = %35
  %49 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  store %struct.sta_info* %49, %struct.sta_info** %8, align 8
  %50 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %51 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %50, i32 0, i32 0
  %52 = load %struct.sta_info*, %struct.sta_info** %51, align 8
  store %struct.sta_info* %52, %struct.sta_info** %9, align 8
  br label %53

53:                                               ; preds = %64, %48
  %54 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %55 = icmp ne %struct.sta_info* %54, null
  br i1 %55, label %56, label %68

56:                                               ; preds = %53
  %57 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %58 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %59 = icmp ne %struct.sta_info* %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %62 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  br label %63

63:                                               ; preds = %60, %56
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %66 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %65, i32 0, i32 1
  %67 = load %struct.sta_info*, %struct.sta_info** %66, align 8
  store %struct.sta_info* %67, %struct.sta_info** %9, align 8
  br label %53

68:                                               ; preds = %53
  %69 = load i32, i32* @MSG_DEBUG, align 4
  %70 = call i32 @wpa_printf(i32 %69, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %30
  %72 = load %struct.radius_das_attrs*, %struct.radius_das_attrs** %6, align 8
  %73 = getelementptr inbounds %struct.radius_das_attrs, %struct.radius_das_attrs* %72, i32 0, i32 7
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %131

76:                                               ; preds = %71
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %11, align 4
  %79 = load %struct.radius_das_attrs*, %struct.radius_das_attrs** %6, align 8
  %80 = getelementptr inbounds %struct.radius_das_attrs, %struct.radius_das_attrs* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 16
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load i32, i32* @MSG_DEBUG, align 4
  %85 = call i32 @wpa_printf(i32 %84, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  store %struct.sta_info* null, %struct.sta_info** %4, align 8
  br label %366

86:                                               ; preds = %76
  store i32 0, i32* %12, align 4
  %87 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %88 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %87, i32 0, i32 0
  %89 = load %struct.sta_info*, %struct.sta_info** %88, align 8
  store %struct.sta_info* %89, %struct.sta_info** %9, align 8
  br label %90

90:                                               ; preds = %118, %86
  %91 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %92 = icmp ne %struct.sta_info* %91, null
  br i1 %92, label %93, label %122

93:                                               ; preds = %90
  %94 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %95 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %93
  br label %118

99:                                               ; preds = %93
  %100 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %101 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %102 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @os_snprintf(i8* %100, i32 128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 %103)
  %105 = load %struct.radius_das_attrs*, %struct.radius_das_attrs** %6, align 8
  %106 = getelementptr inbounds %struct.radius_das_attrs, %struct.radius_das_attrs* %105, i32 0, i32 7
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %109 = call i64 @os_memcmp(i32* %107, i8* %108, i64 16)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %99
  %112 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %113 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %112, i32 0, i32 0
  store i32 0, i32* %113, align 8
  br label %117

114:                                              ; preds = %99
  %115 = load i32, i32* %12, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %12, align 4
  br label %117

117:                                              ; preds = %114, %111
  br label %118

118:                                              ; preds = %117, %98
  %119 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %120 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %119, i32 0, i32 1
  %121 = load %struct.sta_info*, %struct.sta_info** %120, align 8
  store %struct.sta_info* %121, %struct.sta_info** %9, align 8
  br label %90

122:                                              ; preds = %90
  %123 = load i32, i32* %12, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load i32, i32* @MSG_DEBUG, align 4
  %127 = call i32 @wpa_printf(i32 %126, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0))
  store %struct.sta_info* null, %struct.sta_info** %4, align 8
  br label %366

128:                                              ; preds = %122
  %129 = load i32, i32* @MSG_DEBUG, align 4
  %130 = call i32 @wpa_printf(i32 %129, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %131

131:                                              ; preds = %128, %71
  %132 = load %struct.radius_das_attrs*, %struct.radius_das_attrs** %6, align 8
  %133 = getelementptr inbounds %struct.radius_das_attrs, %struct.radius_das_attrs* %132, i32 0, i32 6
  %134 = load i32*, i32** %133, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %136, label %208

136:                                              ; preds = %131
  %137 = load i32, i32* %11, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %11, align 4
  %139 = load %struct.radius_das_attrs*, %struct.radius_das_attrs** %6, align 8
  %140 = getelementptr inbounds %struct.radius_das_attrs, %struct.radius_das_attrs* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 16
  br i1 %142, label %143, label %146

143:                                              ; preds = %136
  %144 = load i32, i32* @MSG_DEBUG, align 4
  %145 = call i32 @wpa_printf(i32 %144, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0))
  store %struct.sta_info* null, %struct.sta_info** %4, align 8
  br label %366

146:                                              ; preds = %136
  store i32 0, i32* %12, align 4
  %147 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %148 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %147, i32 0, i32 0
  %149 = load %struct.sta_info*, %struct.sta_info** %148, align 8
  store %struct.sta_info* %149, %struct.sta_info** %9, align 8
  br label %150

150:                                              ; preds = %195, %146
  %151 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %152 = icmp ne %struct.sta_info* %151, null
  br i1 %152, label %153, label %199

153:                                              ; preds = %150
  %154 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %155 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %153
  br label %195

159:                                              ; preds = %153
  %160 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %161 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %160, i32 0, i32 2
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %161, align 8
  %163 = icmp ne %struct.TYPE_3__* %162, null
  br i1 %163, label %164, label %171

164:                                              ; preds = %159
  %165 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %166 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %165, i32 0, i32 2
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %164, %159
  %172 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %173 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %172, i32 0, i32 0
  store i32 0, i32* %173, align 8
  br label %195

174:                                              ; preds = %164
  %175 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %176 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %177 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %176, i32 0, i32 2
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = call i32 @os_snprintf(i8* %175, i32 128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 %180)
  %182 = load %struct.radius_das_attrs*, %struct.radius_das_attrs** %6, align 8
  %183 = getelementptr inbounds %struct.radius_das_attrs, %struct.radius_das_attrs* %182, i32 0, i32 6
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %186 = call i64 @os_memcmp(i32* %184, i8* %185, i64 16)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %174
  %189 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %190 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %189, i32 0, i32 0
  store i32 0, i32* %190, align 8
  br label %194

191:                                              ; preds = %174
  %192 = load i32, i32* %12, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %12, align 4
  br label %194

194:                                              ; preds = %191, %188
  br label %195

195:                                              ; preds = %194, %171, %158
  %196 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %197 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %196, i32 0, i32 1
  %198 = load %struct.sta_info*, %struct.sta_info** %197, align 8
  store %struct.sta_info* %198, %struct.sta_info** %9, align 8
  br label %150

199:                                              ; preds = %150
  %200 = load i32, i32* %12, align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %199
  %203 = load i32, i32* @MSG_DEBUG, align 4
  %204 = call i32 @wpa_printf(i32 %203, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.7, i64 0, i64 0))
  store %struct.sta_info* null, %struct.sta_info** %4, align 8
  br label %366

205:                                              ; preds = %199
  %206 = load i32, i32* @MSG_DEBUG, align 4
  %207 = call i32 @wpa_printf(i32 %206, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  br label %208

208:                                              ; preds = %205, %131
  %209 = load %struct.radius_das_attrs*, %struct.radius_das_attrs** %6, align 8
  %210 = getelementptr inbounds %struct.radius_das_attrs, %struct.radius_das_attrs* %209, i32 0, i32 2
  %211 = load i8*, i8** %210, align 8
  %212 = icmp ne i8* %211, null
  br i1 %212, label %213, label %273

213:                                              ; preds = %208
  %214 = load i32, i32* %11, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %216 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %217 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %216, i32 0, i32 0
  %218 = load %struct.sta_info*, %struct.sta_info** %217, align 8
  store %struct.sta_info* %218, %struct.sta_info** %9, align 8
  br label %219

219:                                              ; preds = %260, %213
  %220 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %221 = icmp ne %struct.sta_info* %220, null
  br i1 %221, label %222, label %264

222:                                              ; preds = %219
  %223 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %224 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %228, label %227

227:                                              ; preds = %222
  br label %260

228:                                              ; preds = %222
  %229 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %230 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %229, i32 0, i32 2
  %231 = load %struct.TYPE_3__*, %struct.TYPE_3__** %230, align 8
  %232 = call %struct.wpabuf* @ieee802_1x_get_radius_cui(%struct.TYPE_3__* %231)
  store %struct.wpabuf* %232, %struct.wpabuf** %13, align 8
  %233 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %234 = icmp ne %struct.wpabuf* %233, null
  br i1 %234, label %235, label %253

235:                                              ; preds = %228
  %236 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %237 = call i64 @wpabuf_len(%struct.wpabuf* %236)
  %238 = load %struct.radius_das_attrs*, %struct.radius_das_attrs** %6, align 8
  %239 = getelementptr inbounds %struct.radius_das_attrs, %struct.radius_das_attrs* %238, i32 0, i32 3
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %237, %240
  br i1 %241, label %253, label %242

242:                                              ; preds = %235
  %243 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %244 = call i32* @wpabuf_head(%struct.wpabuf* %243)
  %245 = load %struct.radius_das_attrs*, %struct.radius_das_attrs** %6, align 8
  %246 = getelementptr inbounds %struct.radius_das_attrs, %struct.radius_das_attrs* %245, i32 0, i32 2
  %247 = load i8*, i8** %246, align 8
  %248 = load %struct.radius_das_attrs*, %struct.radius_das_attrs** %6, align 8
  %249 = getelementptr inbounds %struct.radius_das_attrs, %struct.radius_das_attrs* %248, i32 0, i32 3
  %250 = load i64, i64* %249, align 8
  %251 = call i64 @os_memcmp(i32* %244, i8* %247, i64 %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %242, %235, %228
  %254 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %255 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %254, i32 0, i32 0
  store i32 0, i32* %255, align 8
  br label %259

256:                                              ; preds = %242
  %257 = load i32, i32* %12, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %12, align 4
  br label %259

259:                                              ; preds = %256, %253
  br label %260

260:                                              ; preds = %259, %227
  %261 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %262 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %261, i32 0, i32 1
  %263 = load %struct.sta_info*, %struct.sta_info** %262, align 8
  store %struct.sta_info* %263, %struct.sta_info** %9, align 8
  br label %219

264:                                              ; preds = %219
  %265 = load i32, i32* %12, align 4
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %264
  %268 = load i32, i32* @MSG_DEBUG, align 4
  %269 = call i32 @wpa_printf(i32 %268, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.9, i64 0, i64 0))
  store %struct.sta_info* null, %struct.sta_info** %4, align 8
  br label %366

270:                                              ; preds = %264
  %271 = load i32, i32* @MSG_DEBUG, align 4
  %272 = call i32 @wpa_printf(i32 %271, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0))
  br label %273

273:                                              ; preds = %270, %208
  %274 = load %struct.radius_das_attrs*, %struct.radius_das_attrs** %6, align 8
  %275 = getelementptr inbounds %struct.radius_das_attrs, %struct.radius_das_attrs* %274, i32 0, i32 4
  %276 = load i8*, i8** %275, align 8
  %277 = icmp ne i8* %276, null
  br i1 %277, label %278, label %334

278:                                              ; preds = %273
  %279 = load i32, i32* %11, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %281 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %282 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %281, i32 0, i32 0
  %283 = load %struct.sta_info*, %struct.sta_info** %282, align 8
  store %struct.sta_info* %283, %struct.sta_info** %9, align 8
  br label %284

284:                                              ; preds = %321, %278
  %285 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %286 = icmp ne %struct.sta_info* %285, null
  br i1 %286, label %287, label %325

287:                                              ; preds = %284
  %288 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %289 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %293, label %292

292:                                              ; preds = %287
  br label %321

293:                                              ; preds = %287
  %294 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %295 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %294, i32 0, i32 2
  %296 = load %struct.TYPE_3__*, %struct.TYPE_3__** %295, align 8
  %297 = call i32* @ieee802_1x_get_identity(%struct.TYPE_3__* %296, i64* %15)
  store i32* %297, i32** %14, align 8
  %298 = load i32*, i32** %14, align 8
  %299 = icmp ne i32* %298, null
  br i1 %299, label %300, label %314

300:                                              ; preds = %293
  %301 = load i64, i64* %15, align 8
  %302 = load %struct.radius_das_attrs*, %struct.radius_das_attrs** %6, align 8
  %303 = getelementptr inbounds %struct.radius_das_attrs, %struct.radius_das_attrs* %302, i32 0, i32 5
  %304 = load i64, i64* %303, align 8
  %305 = icmp ne i64 %301, %304
  br i1 %305, label %314, label %306

306:                                              ; preds = %300
  %307 = load i32*, i32** %14, align 8
  %308 = load %struct.radius_das_attrs*, %struct.radius_das_attrs** %6, align 8
  %309 = getelementptr inbounds %struct.radius_das_attrs, %struct.radius_das_attrs* %308, i32 0, i32 4
  %310 = load i8*, i8** %309, align 8
  %311 = load i64, i64* %15, align 8
  %312 = call i64 @os_memcmp(i32* %307, i8* %310, i64 %311)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %317

314:                                              ; preds = %306, %300, %293
  %315 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %316 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %315, i32 0, i32 0
  store i32 0, i32* %316, align 8
  br label %320

317:                                              ; preds = %306
  %318 = load i32, i32* %12, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %12, align 4
  br label %320

320:                                              ; preds = %317, %314
  br label %321

321:                                              ; preds = %320, %292
  %322 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %323 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %322, i32 0, i32 1
  %324 = load %struct.sta_info*, %struct.sta_info** %323, align 8
  store %struct.sta_info* %324, %struct.sta_info** %9, align 8
  br label %284

325:                                              ; preds = %284
  %326 = load i32, i32* %12, align 4
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %328, label %331

328:                                              ; preds = %325
  %329 = load i32, i32* @MSG_DEBUG, align 4
  %330 = call i32 @wpa_printf(i32 %329, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.11, i64 0, i64 0))
  store %struct.sta_info* null, %struct.sta_info** %4, align 8
  br label %366

331:                                              ; preds = %325
  %332 = load i32, i32* @MSG_DEBUG, align 4
  %333 = call i32 @wpa_printf(i32 %332, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0))
  br label %334

334:                                              ; preds = %331, %273
  %335 = load i32, i32* %11, align 4
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %340

337:                                              ; preds = %334
  %338 = load i32, i32* @MSG_DEBUG, align 4
  %339 = call i32 @wpa_printf(i32 %338, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.13, i64 0, i64 0))
  store %struct.sta_info* null, %struct.sta_info** %4, align 8
  br label %366

340:                                              ; preds = %334
  store %struct.sta_info* null, %struct.sta_info** %8, align 8
  %341 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %342 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %341, i32 0, i32 0
  %343 = load %struct.sta_info*, %struct.sta_info** %342, align 8
  store %struct.sta_info* %343, %struct.sta_info** %9, align 8
  br label %344

344:                                              ; preds = %360, %340
  %345 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %346 = icmp ne %struct.sta_info* %345, null
  br i1 %346, label %347, label %364

347:                                              ; preds = %344
  %348 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %349 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %359

352:                                              ; preds = %347
  %353 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %354 = icmp ne %struct.sta_info* %353, null
  br i1 %354, label %355, label %357

355:                                              ; preds = %352
  %356 = load i32*, i32** %7, align 8
  store i32 1, i32* %356, align 4
  store %struct.sta_info* null, %struct.sta_info** %4, align 8
  br label %366

357:                                              ; preds = %352
  %358 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  store %struct.sta_info* %358, %struct.sta_info** %8, align 8
  br label %359

359:                                              ; preds = %357, %347
  br label %360

360:                                              ; preds = %359
  %361 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %362 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %361, i32 0, i32 1
  %363 = load %struct.sta_info*, %struct.sta_info** %362, align 8
  store %struct.sta_info* %363, %struct.sta_info** %9, align 8
  br label %344

364:                                              ; preds = %344
  %365 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  store %struct.sta_info* %365, %struct.sta_info** %4, align 8
  br label %366

366:                                              ; preds = %364, %355, %337, %328, %267, %202, %143, %125, %83, %45
  %367 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  ret %struct.sta_info* %367
}

declare dso_local %struct.sta_info* @ap_get_sta(%struct.hostapd_data*, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i64) #1

declare dso_local i64 @os_memcmp(i32*, i8*, i64) #1

declare dso_local %struct.wpabuf* @ieee802_1x_get_radius_cui(%struct.TYPE_3__*) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32* @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32* @ieee802_1x_get_identity(%struct.TYPE_3__*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
