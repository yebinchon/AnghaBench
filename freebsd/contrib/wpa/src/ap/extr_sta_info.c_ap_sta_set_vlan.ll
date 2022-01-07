; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_sta_info.c_ap_sta_set_vlan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_sta_info.c_ap_sta_set_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.hostapd_vlan*, %struct.TYPE_3__ }
%struct.hostapd_vlan = type { i32, i64, %struct.vlan_description, i32, %struct.hostapd_vlan* }
%struct.vlan_description = type { i32, i64*, i64 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.sta_info = type { i32, %struct.vlan_description*, i32 }

@DYNAMIC_VLAN_DISABLED = common dso_local global i64 0, align 8
@VLAN_ID_WILDCARD = common dso_local global i32 0, align 4
@HOSTAPD_MODULE_IEEE80211 = common dso_local global i32 0, align 4
@HOSTAPD_LEVEL_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"per_sta_vif missing wildcard\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"missing vlan and wildcard for vlan=%d%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"could not add dynamic VLAN interface for vlan=%d%s\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"added new dynamic VLAN interface '%s'\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"updated existing dynamic VLAN interface '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ap_sta_set_vlan(%struct.hostapd_data* %0, %struct.sta_info* %1, %struct.vlan_description* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hostapd_data*, align 8
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca %struct.vlan_description*, align 8
  %8 = alloca %struct.hostapd_vlan*, align 8
  %9 = alloca %struct.hostapd_vlan*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %5, align 8
  store %struct.sta_info* %1, %struct.sta_info** %6, align 8
  store %struct.vlan_description* %2, %struct.vlan_description** %7, align 8
  store %struct.hostapd_vlan* null, %struct.hostapd_vlan** %8, align 8
  store %struct.hostapd_vlan* null, %struct.hostapd_vlan** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %14 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %22 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %59

26:                                               ; preds = %20, %3
  %27 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %28 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DYNAMIC_VLAN_DISABLED, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %26
  %36 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %37 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %35
  %44 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %45 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %58

49:                                               ; preds = %43, %35, %26
  %50 = load %struct.vlan_description*, %struct.vlan_description** %7, align 8
  %51 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %52 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %51, i32 0, i32 1
  %53 = load %struct.vlan_description*, %struct.vlan_description** %52, align 8
  %54 = call i32 @vlan_compare(%struct.vlan_description* %50, %struct.vlan_description* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %298

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57, %48
  br label %59

59:                                               ; preds = %58, %25
  %60 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %61 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %102

67:                                               ; preds = %59
  %68 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %69 = call i32 @ap_sta_get_free_vlan_id(%struct.hostapd_data* %68)
  store i32 %69, i32* %11, align 4
  %70 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %71 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %73, align 8
  store %struct.hostapd_vlan* %74, %struct.hostapd_vlan** %8, align 8
  br label %75

75:                                               ; preds = %86, %67
  %76 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %8, align 8
  %77 = icmp ne %struct.hostapd_vlan* %76, null
  br i1 %77, label %78, label %90

78:                                               ; preds = %75
  %79 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %8, align 8
  %80 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @VLAN_ID_WILDCARD, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %90

85:                                               ; preds = %78
  br label %86

86:                                               ; preds = %85
  %87 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %8, align 8
  %88 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %87, i32 0, i32 4
  %89 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %88, align 8
  store %struct.hostapd_vlan* %89, %struct.hostapd_vlan** %8, align 8
  br label %75

90:                                               ; preds = %84, %75
  %91 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %8, align 8
  %92 = icmp ne %struct.hostapd_vlan* %91, null
  br i1 %92, label %101, label %93

93:                                               ; preds = %90
  %94 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %95 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %96 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @HOSTAPD_MODULE_IEEE80211, align 4
  %99 = load i32, i32* @HOSTAPD_LEVEL_DEBUG, align 4
  %100 = call i32 (%struct.hostapd_data*, i32, i32, i32, i8*, ...) @hostapd_logger(%struct.hostapd_data* %94, i32 %97, i32 %98, i32 %99, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  br label %269

101:                                              ; preds = %90
  br label %186

102:                                              ; preds = %59
  %103 = load %struct.vlan_description*, %struct.vlan_description** %7, align 8
  %104 = icmp ne %struct.vlan_description* %103, null
  br i1 %104, label %105, label %185

105:                                              ; preds = %102
  %106 = load %struct.vlan_description*, %struct.vlan_description** %7, align 8
  %107 = getelementptr inbounds %struct.vlan_description, %struct.vlan_description* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %185

110:                                              ; preds = %105
  %111 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %112 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %111, i32 0, i32 0
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %114, align 8
  store %struct.hostapd_vlan* %115, %struct.hostapd_vlan** %8, align 8
  br label %116

116:                                              ; preds = %135, %110
  %117 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %8, align 8
  %118 = icmp ne %struct.hostapd_vlan* %117, null
  br i1 %118, label %119, label %139

119:                                              ; preds = %116
  %120 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %8, align 8
  %121 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %120, i32 0, i32 2
  %122 = load %struct.vlan_description*, %struct.vlan_description** %7, align 8
  %123 = call i32 @vlan_compare(%struct.vlan_description* %121, %struct.vlan_description* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %119
  br label %139

126:                                              ; preds = %119
  %127 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %8, align 8
  %128 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @VLAN_ID_WILDCARD, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %126
  %133 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %8, align 8
  store %struct.hostapd_vlan* %133, %struct.hostapd_vlan** %9, align 8
  br label %134

134:                                              ; preds = %132, %126
  br label %135

135:                                              ; preds = %134
  %136 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %8, align 8
  %137 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %136, i32 0, i32 4
  %138 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %137, align 8
  store %struct.hostapd_vlan* %138, %struct.hostapd_vlan** %8, align 8
  br label %116

139:                                              ; preds = %125, %116
  %140 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %8, align 8
  %141 = icmp ne %struct.hostapd_vlan* %140, null
  br i1 %141, label %142, label %146

142:                                              ; preds = %139
  %143 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %8, align 8
  %144 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  store i32 %145, i32* %11, align 4
  br label %184

146:                                              ; preds = %139
  %147 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %9, align 8
  %148 = icmp ne %struct.hostapd_vlan* %147, null
  br i1 %148, label %149, label %164

149:                                              ; preds = %146
  %150 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %9, align 8
  store %struct.hostapd_vlan* %150, %struct.hostapd_vlan** %8, align 8
  %151 = load %struct.vlan_description*, %struct.vlan_description** %7, align 8
  %152 = getelementptr inbounds %struct.vlan_description, %struct.vlan_description* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  store i32 %153, i32* %11, align 4
  %154 = load %struct.vlan_description*, %struct.vlan_description** %7, align 8
  %155 = getelementptr inbounds %struct.vlan_description, %struct.vlan_description* %154, i32 0, i32 1
  %156 = load i64*, i64** %155, align 8
  %157 = getelementptr inbounds i64, i64* %156, i64 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %149
  %161 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %162 = call i32 @ap_sta_get_free_vlan_id(%struct.hostapd_data* %161)
  store i32 %162, i32* %11, align 4
  br label %163

163:                                              ; preds = %160, %149
  br label %183

164:                                              ; preds = %146
  %165 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %166 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %167 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @HOSTAPD_MODULE_IEEE80211, align 4
  %170 = load i32, i32* @HOSTAPD_LEVEL_DEBUG, align 4
  %171 = load %struct.vlan_description*, %struct.vlan_description** %7, align 8
  %172 = getelementptr inbounds %struct.vlan_description, %struct.vlan_description* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.vlan_description*, %struct.vlan_description** %7, align 8
  %175 = getelementptr inbounds %struct.vlan_description, %struct.vlan_description* %174, i32 0, i32 1
  %176 = load i64*, i64** %175, align 8
  %177 = getelementptr inbounds i64, i64* %176, i64 0
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  %180 = zext i1 %179 to i64
  %181 = select i1 %179, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %182 = call i32 (%struct.hostapd_data*, i32, i32, i32, i8*, ...) @hostapd_logger(%struct.hostapd_data* %165, i32 %168, i32 %169, i32 %170, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %173, i8* %181)
  store i32 0, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  br label %269

183:                                              ; preds = %163
  br label %184

184:                                              ; preds = %183, %142
  br label %185

185:                                              ; preds = %184, %105, %102
  br label %186

186:                                              ; preds = %185, %101
  %187 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %8, align 8
  %188 = icmp ne %struct.hostapd_vlan* %187, null
  br i1 %188, label %189, label %244

189:                                              ; preds = %186
  %190 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %8, align 8
  %191 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @VLAN_ID_WILDCARD, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %244

195:                                              ; preds = %189
  %196 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %197 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %8, align 8
  %198 = load i32, i32* %11, align 4
  %199 = load %struct.vlan_description*, %struct.vlan_description** %7, align 8
  %200 = call %struct.hostapd_vlan* @vlan_add_dynamic(%struct.hostapd_data* %196, %struct.hostapd_vlan* %197, i32 %198, %struct.vlan_description* %199)
  store %struct.hostapd_vlan* %200, %struct.hostapd_vlan** %8, align 8
  %201 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %8, align 8
  %202 = icmp eq %struct.hostapd_vlan* %201, null
  br i1 %202, label %203, label %233

203:                                              ; preds = %195
  %204 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %205 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %206 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @HOSTAPD_MODULE_IEEE80211, align 4
  %209 = load i32, i32* @HOSTAPD_LEVEL_DEBUG, align 4
  %210 = load %struct.vlan_description*, %struct.vlan_description** %7, align 8
  %211 = icmp ne %struct.vlan_description* %210, null
  br i1 %211, label %212, label %216

212:                                              ; preds = %203
  %213 = load %struct.vlan_description*, %struct.vlan_description** %7, align 8
  %214 = getelementptr inbounds %struct.vlan_description, %struct.vlan_description* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  br label %217

216:                                              ; preds = %203
  br label %217

217:                                              ; preds = %216, %212
  %218 = phi i32 [ %215, %212 ], [ -1, %216 ]
  %219 = load %struct.vlan_description*, %struct.vlan_description** %7, align 8
  %220 = icmp ne %struct.vlan_description* %219, null
  br i1 %220, label %221, label %228

221:                                              ; preds = %217
  %222 = load %struct.vlan_description*, %struct.vlan_description** %7, align 8
  %223 = getelementptr inbounds %struct.vlan_description, %struct.vlan_description* %222, i32 0, i32 1
  %224 = load i64*, i64** %223, align 8
  %225 = getelementptr inbounds i64, i64* %224, i64 0
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br label %228

228:                                              ; preds = %221, %217
  %229 = phi i1 [ false, %217 ], [ %227, %221 ]
  %230 = zext i1 %229 to i64
  %231 = select i1 %229, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %232 = call i32 (%struct.hostapd_data*, i32, i32, i32, i8*, ...) @hostapd_logger(%struct.hostapd_data* %204, i32 %207, i32 %208, i32 %209, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %218, i8* %231)
  store i32 0, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  br label %269

233:                                              ; preds = %195
  %234 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %235 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %236 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @HOSTAPD_MODULE_IEEE80211, align 4
  %239 = load i32, i32* @HOSTAPD_LEVEL_DEBUG, align 4
  %240 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %8, align 8
  %241 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 8
  %243 = call i32 (%struct.hostapd_data*, i32, i32, i32, i8*, ...) @hostapd_logger(%struct.hostapd_data* %234, i32 %237, i32 %238, i32 %239, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %242)
  br label %268

244:                                              ; preds = %189, %186
  %245 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %8, align 8
  %246 = icmp ne %struct.hostapd_vlan* %245, null
  br i1 %246, label %247, label %267

247:                                              ; preds = %244
  %248 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %8, align 8
  %249 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = icmp sgt i64 %250, 0
  br i1 %251, label %252, label %267

252:                                              ; preds = %247
  %253 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %8, align 8
  %254 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = add nsw i64 %255, 1
  store i64 %256, i64* %254, align 8
  %257 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %258 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %259 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* @HOSTAPD_MODULE_IEEE80211, align 4
  %262 = load i32, i32* @HOSTAPD_LEVEL_DEBUG, align 4
  %263 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %8, align 8
  %264 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 8
  %266 = call i32 (%struct.hostapd_data*, i32, i32, i32, i8*, ...) @hostapd_logger(%struct.hostapd_data* %257, i32 %260, i32 %261, i32 %262, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %265)
  br label %267

267:                                              ; preds = %252, %247, %244
  br label %268

268:                                              ; preds = %267, %233
  br label %269

269:                                              ; preds = %268, %228, %164, %93
  %270 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %271 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  store i32 %272, i32* %10, align 4
  %273 = load i32, i32* %11, align 4
  %274 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %275 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %274, i32 0, i32 0
  store i32 %273, i32* %275, align 8
  %276 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %8, align 8
  %277 = icmp ne %struct.hostapd_vlan* %276, null
  br i1 %277, label %278, label %281

278:                                              ; preds = %269
  %279 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %8, align 8
  %280 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %279, i32 0, i32 2
  br label %282

281:                                              ; preds = %269
  br label %282

282:                                              ; preds = %281, %278
  %283 = phi %struct.vlan_description* [ %280, %278 ], [ null, %281 ]
  %284 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %285 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %284, i32 0, i32 1
  store %struct.vlan_description* %283, %struct.vlan_description** %285, align 8
  %286 = load i32, i32* %11, align 4
  %287 = load i32, i32* %10, align 4
  %288 = icmp ne i32 %286, %287
  br i1 %288, label %289, label %296

289:                                              ; preds = %282
  %290 = load i32, i32* %10, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %296

292:                                              ; preds = %289
  %293 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %294 = load i32, i32* %10, align 4
  %295 = call i32 @vlan_remove_dynamic(%struct.hostapd_data* %293, i32 %294)
  br label %296

296:                                              ; preds = %292, %289, %282
  %297 = load i32, i32* %12, align 4
  store i32 %297, i32* %4, align 4
  br label %298

298:                                              ; preds = %296, %56
  %299 = load i32, i32* %4, align 4
  ret i32 %299
}

declare dso_local i32 @vlan_compare(%struct.vlan_description*, %struct.vlan_description*) #1

declare dso_local i32 @ap_sta_get_free_vlan_id(%struct.hostapd_data*) #1

declare dso_local i32 @hostapd_logger(%struct.hostapd_data*, i32, i32, i32, i8*, ...) #1

declare dso_local %struct.hostapd_vlan* @vlan_add_dynamic(%struct.hostapd_data*, %struct.hostapd_vlan*, i32, %struct.vlan_description*) #1

declare dso_local i32 @vlan_remove_dynamic(%struct.hostapd_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
