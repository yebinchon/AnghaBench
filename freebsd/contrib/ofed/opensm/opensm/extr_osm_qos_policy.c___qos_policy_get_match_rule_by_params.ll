; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_qos_policy.c___qos_policy_get_match_rule_by_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_qos_policy.c___qos_policy_get_match_rule_by_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i64, i32, i64, i32, i64, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@IB_PR_COMPMASK_QOS_CLASS = common dso_local global i32 0, align 4
@IB_PR_COMPMASK_SERVICEID_MSB = common dso_local global i32 0, align 4
@IB_PR_COMPMASK_SERVICEID_LSB = common dso_local global i32 0, align 4
@IB_PR_COMPMASK_PKEY = common dso_local global i32 0, align 4
@OSM_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"request matched rule (%s) by:%s%s%s%s%s%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"no description\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c" SGUID\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [7 x i8] c" DGUID\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"SorDGUID\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c" QoS_Class\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c" ServiceID\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" PKey\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"request not matched any rule\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (%struct.TYPE_10__*, i32, i32, i32, i32*, i32*, i32)* @__qos_policy_get_match_rule_by_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @__qos_policy_get_match_rule_by_params(%struct.TYPE_10__* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %16, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  store i32* %30, i32** %18, align 8
  %31 = load i64, i64* @FALSE, align 8
  store i64 %31, i64* %19, align 8
  %32 = load i64, i64* @FALSE, align 8
  store i64 %32, i64* %20, align 8
  %33 = load i64, i64* @FALSE, align 8
  store i64 %33, i64* %21, align 8
  %34 = load i64, i64* @FALSE, align 8
  store i64 %34, i64* %22, align 8
  %35 = load i64, i64* @FALSE, align 8
  store i64 %35, i64* %23, align 8
  %36 = load i64, i64* @FALSE, align 8
  store i64 %36, i64* %24, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = call i64 @cl_list_count(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %7
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %8, align 8
  br label %285

42:                                               ; preds = %7
  %43 = load i32*, i32** %18, align 8
  %44 = call i32 @OSM_LOG_ENTER(i32* %43)
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = call i64 @cl_list_head(i32* %46)
  store i64 %47, i64* %17, align 8
  br label %48

48:                                               ; preds = %222, %208, %193, %180, %160, %147, %133, %102, %80, %60, %42
  %49 = load i64, i64* %17, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = call i64 @cl_list_end(i32* %51)
  %53 = icmp ne i64 %49, %52
  br i1 %53, label %54, label %228

54:                                               ; preds = %48
  %55 = load i64, i64* %17, align 8
  %56 = call i64 @cl_list_obj(i64 %55)
  %57 = inttoptr i64 %56 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %57, %struct.TYPE_11__** %16, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %59 = icmp ne %struct.TYPE_11__* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = load i64, i64* %17, align 8
  %62 = call i64 @cl_list_next(i64 %61)
  store i64 %62, i64* %17, align 8
  br label %48

63:                                               ; preds = %54
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 8
  %66 = call i64 @cl_list_count(i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %63
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 7
  %71 = call i64 @cl_list_count(i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %85, label %73

73:                                               ; preds = %68
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %75 = load i32*, i32** %13, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 8
  %78 = call i64 @__qos_policy_is_port_in_group_list(%struct.TYPE_10__* %74, i32* %75, i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %73
  %81 = load i64, i64* %17, align 8
  %82 = call i64 @cl_list_next(i64 %81)
  store i64 %82, i64* %17, align 8
  br label %48

83:                                               ; preds = %73
  %84 = load i64, i64* @TRUE, align 8
  store i64 %84, i64* %19, align 8
  br label %85

85:                                               ; preds = %83, %68, %63
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 7
  %88 = call i64 @cl_list_count(i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %107

90:                                               ; preds = %85
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 8
  %93 = call i64 @cl_list_count(i32* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %107, label %95

95:                                               ; preds = %90
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %97 = load i32*, i32** %14, align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 7
  %100 = call i64 @__qos_policy_is_port_in_group_list(%struct.TYPE_10__* %96, i32* %97, i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %95
  %103 = load i64, i64* %17, align 8
  %104 = call i64 @cl_list_next(i64 %103)
  store i64 %104, i64* %17, align 8
  br label %48

105:                                              ; preds = %95
  %106 = load i64, i64* @TRUE, align 8
  store i64 %106, i64* %20, align 8
  br label %107

107:                                              ; preds = %105, %90, %85
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 8
  %110 = call i64 @cl_list_count(i32* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %137

112:                                              ; preds = %107
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 7
  %115 = call i64 @cl_list_count(i32* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %137

117:                                              ; preds = %112
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %119 = load i32*, i32** %13, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 8
  %122 = call i64 @__qos_policy_is_port_in_group_list(%struct.TYPE_10__* %118, i32* %119, i32* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %117
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %126 = load i32*, i32** %14, align 8
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 7
  %129 = call i64 @__qos_policy_is_port_in_group_list(%struct.TYPE_10__* %125, i32* %126, i32* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %124
  %132 = load i64, i64* @TRUE, align 8
  store i64 %132, i64* %21, align 8
  br label %136

133:                                              ; preds = %124, %117
  %134 = load i64, i64* %17, align 8
  %135 = call i64 @cl_list_next(i64 %134)
  store i64 %135, i64* %17, align 8
  br label %48

136:                                              ; preds = %131
  br label %137

137:                                              ; preds = %136, %112, %107
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 5
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %165

142:                                              ; preds = %137
  %143 = load i32, i32* %15, align 4
  %144 = load i32, i32* @IB_PR_COMPMASK_QOS_CLASS, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %142
  %148 = load i64, i64* %17, align 8
  %149 = call i64 @cl_list_next(i64 %148)
  store i64 %149, i64* %17, align 8
  br label %48

150:                                              ; preds = %142
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 6
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 5
  %156 = load i64, i64* %155, align 8
  %157 = load i32, i32* %11, align 4
  %158 = call i32 @__is_num_in_range_arr(i32 %153, i64 %156, i32 %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %150
  %161 = load i64, i64* %17, align 8
  %162 = call i64 @cl_list_next(i64 %161)
  store i64 %162, i64* %17, align 8
  br label %48

163:                                              ; preds = %150
  %164 = load i64, i64* @TRUE, align 8
  store i64 %164, i64* %22, align 8
  br label %165

165:                                              ; preds = %163, %137
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %198

170:                                              ; preds = %165
  %171 = load i32, i32* %15, align 4
  %172 = load i32, i32* @IB_PR_COMPMASK_SERVICEID_MSB, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %170
  %176 = load i32, i32* %15, align 4
  %177 = load i32, i32* @IB_PR_COMPMASK_SERVICEID_LSB, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %175, %170
  %181 = load i64, i64* %17, align 8
  %182 = call i64 @cl_list_next(i64 %181)
  store i64 %182, i64* %17, align 8
  br label %48

183:                                              ; preds = %175
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  %190 = load i32, i32* %10, align 4
  %191 = call i32 @__is_num_in_range_arr(i32 %186, i64 %189, i32 %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %196, label %193

193:                                              ; preds = %183
  %194 = load i64, i64* %17, align 8
  %195 = call i64 @cl_list_next(i64 %194)
  store i64 %195, i64* %17, align 8
  br label %48

196:                                              ; preds = %183
  %197 = load i64, i64* @TRUE, align 8
  store i64 %197, i64* %23, align 8
  br label %198

198:                                              ; preds = %196, %165
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %227

203:                                              ; preds = %198
  %204 = load i32, i32* %15, align 4
  %205 = load i32, i32* @IB_PR_COMPMASK_PKEY, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %211, label %208

208:                                              ; preds = %203
  %209 = load i64, i64* %17, align 8
  %210 = call i64 @cl_list_next(i64 %209)
  store i64 %210, i64* %17, align 8
  br label %48

211:                                              ; preds = %203
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = load i32, i32* %12, align 4
  %219 = and i32 %218, 32767
  %220 = call i32 @__is_num_in_range_arr(i32 %214, i64 %217, i32 %219)
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %225, label %222

222:                                              ; preds = %211
  %223 = load i64, i64* %17, align 8
  %224 = call i64 @cl_list_next(i64 %223)
  store i64 %224, i64* %17, align 8
  br label %48

225:                                              ; preds = %211
  %226 = load i64, i64* @TRUE, align 8
  store i64 %226, i64* %24, align 8
  br label %227

227:                                              ; preds = %225, %198
  br label %228

228:                                              ; preds = %227, %48
  %229 = load i64, i64* %17, align 8
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 0
  %232 = call i64 @cl_list_end(i32* %231)
  %233 = icmp eq i64 %229, %232
  br i1 %233, label %234, label %235

234:                                              ; preds = %228
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %16, align 8
  br label %235

235:                                              ; preds = %234, %228
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %237 = icmp ne %struct.TYPE_11__* %236, null
  br i1 %237, label %238, label %277

238:                                              ; preds = %235
  %239 = load i32*, i32** %18, align 8
  %240 = load i32, i32* @OSM_LOG_DEBUG, align 4
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 0
  %243 = load i8*, i8** %242, align 8
  %244 = icmp ne i8* %243, null
  br i1 %244, label %245, label %249

245:                                              ; preds = %238
  %246 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 0
  %248 = load i8*, i8** %247, align 8
  br label %250

249:                                              ; preds = %238
  br label %250

250:                                              ; preds = %249, %245
  %251 = phi i8* [ %248, %245 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), %249 ]
  %252 = load i64, i64* %19, align 8
  %253 = icmp ne i64 %252, 0
  %254 = zext i1 %253 to i64
  %255 = select i1 %253, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %256 = load i64, i64* %20, align 8
  %257 = icmp ne i64 %256, 0
  %258 = zext i1 %257 to i64
  %259 = select i1 %257, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %260 = load i64, i64* %21, align 8
  %261 = icmp ne i64 %260, 0
  %262 = zext i1 %261 to i64
  %263 = select i1 %261, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %264 = load i64, i64* %22, align 8
  %265 = icmp ne i64 %264, 0
  %266 = zext i1 %265 to i64
  %267 = select i1 %265, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %268 = load i64, i64* %23, align 8
  %269 = icmp ne i64 %268, 0
  %270 = zext i1 %269 to i64
  %271 = select i1 %269, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %272 = load i64, i64* %24, align 8
  %273 = icmp ne i64 %272, 0
  %274 = zext i1 %273 to i64
  %275 = select i1 %273, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %276 = call i32 (i32*, i32, i8*, ...) @OSM_LOG(i32* %239, i32 %240, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %251, i8* %255, i8* %259, i8* %263, i8* %267, i8* %271, i8* %275)
  br label %281

277:                                              ; preds = %235
  %278 = load i32*, i32** %18, align 8
  %279 = load i32, i32* @OSM_LOG_DEBUG, align 4
  %280 = call i32 (i32*, i32, i8*, ...) @OSM_LOG(i32* %278, i32 %279, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  br label %281

281:                                              ; preds = %277, %250
  %282 = load i32*, i32** %18, align 8
  %283 = call i32 @OSM_LOG_EXIT(i32* %282)
  %284 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  store %struct.TYPE_11__* %284, %struct.TYPE_11__** %8, align 8
  br label %285

285:                                              ; preds = %281, %41
  %286 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  ret %struct.TYPE_11__* %286
}

declare dso_local i64 @cl_list_count(i32*) #1

declare dso_local i32 @OSM_LOG_ENTER(i32*) #1

declare dso_local i64 @cl_list_head(i32*) #1

declare dso_local i64 @cl_list_end(i32*) #1

declare dso_local i64 @cl_list_obj(i64) #1

declare dso_local i64 @cl_list_next(i64) #1

declare dso_local i64 @__qos_policy_is_port_in_group_list(%struct.TYPE_10__*, i32*, i32*) #1

declare dso_local i32 @__is_num_in_range_arr(i32, i64, i32) #1

declare dso_local i32 @OSM_LOG(i32*, i32, i8*, ...) #1

declare dso_local i32 @OSM_LOG_EXIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
