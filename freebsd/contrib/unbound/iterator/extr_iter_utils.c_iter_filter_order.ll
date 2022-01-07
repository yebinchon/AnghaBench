; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_iter_filter_order.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_iter_filter_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iter_env = type { i32 }
%struct.module_env = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.delegpt = type { %struct.delegpt_addr* }
%struct.delegpt_addr = type { i32, i32, %struct.delegpt_addr*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.sock_list = type { i32 }

@RTT_BAND = common dso_local global i32 0, align 4
@USEFUL_SERVER_TOP_TIMEOUT = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Bad choices, trying to get more choice\00", align 1
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iter_env*, %struct.module_env*, i32*, i64, i32, i64, %struct.delegpt*, i32*, i32, %struct.sock_list*, i64)* @iter_filter_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iter_filter_order(%struct.iter_env* %0, %struct.module_env* %1, i32* %2, i64 %3, i32 %4, i64 %5, %struct.delegpt* %6, i32* %7, i32 %8, %struct.sock_list* %9, i64 %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.iter_env*, align 8
  %14 = alloca %struct.module_env*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.delegpt*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.sock_list*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca %struct.delegpt_addr*, align 8
  %31 = alloca %struct.delegpt_addr*, align 8
  %32 = alloca %struct.delegpt_addr*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  store %struct.iter_env* %0, %struct.iter_env** %13, align 8
  store %struct.module_env* %1, %struct.module_env** %14, align 8
  store i32* %2, i32** %15, align 8
  store i64 %3, i64* %16, align 8
  store i32 %4, i32* %17, align 4
  store i64 %5, i64* %18, align 8
  store %struct.delegpt* %6, %struct.delegpt** %19, align 8
  store i32* %7, i32** %20, align 8
  store i32 %8, i32* %21, align 4
  store %struct.sock_list* %9, %struct.sock_list** %22, align 8
  store i64 %10, i64* %23, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %39 = load i32, i32* @RTT_BAND, align 4
  store i32 %39, i32* %27, align 4
  store %struct.delegpt_addr* null, %struct.delegpt_addr** %32, align 8
  %40 = load %struct.iter_env*, %struct.iter_env** %13, align 8
  %41 = load %struct.module_env*, %struct.module_env** %14, align 8
  %42 = load i32*, i32** %15, align 8
  %43 = load i64, i64* %16, align 8
  %44 = load i32, i32* %17, align 4
  %45 = load i64, i64* %18, align 8
  %46 = load %struct.delegpt*, %struct.delegpt** %19, align 8
  %47 = load %struct.sock_list*, %struct.sock_list** %22, align 8
  %48 = call i32 @iter_fill_rtt(%struct.iter_env* %40, %struct.module_env* %41, i32* %42, i64 %43, i32 %44, i64 %45, %struct.delegpt* %46, i32* %25, %struct.sock_list* %47, i64* %29)
  store i32 %48, i32* %24, align 4
  %49 = load i32, i32* %24, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %11
  store i32 0, i32* %12, align 4
  br label %352

52:                                               ; preds = %11
  %53 = load i32, i32* %25, align 4
  %54 = load i32, i32* @USEFUL_SERVER_TOP_TIMEOUT, align 4
  %55 = icmp sge i32 %53, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %52
  %57 = load %struct.delegpt*, %struct.delegpt** %19, align 8
  %58 = call i64 @delegpt_count_missing_targets(%struct.delegpt* %57)
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %21, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60, %56
  %64 = load i32, i32* @VERB_ALGO, align 4
  %65 = call i32 @verbose(i32 %64, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %352

66:                                               ; preds = %60, %52
  %67 = load %struct.module_env*, %struct.module_env** %14, align 8
  %68 = getelementptr inbounds %struct.module_env, %struct.module_env* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %119

73:                                               ; preds = %66
  %74 = load i64, i64* %23, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %119

76:                                               ; preds = %73
  %77 = load i64, i64* %29, align 8
  %78 = load %struct.module_env*, %struct.module_env** %14, align 8
  %79 = getelementptr inbounds %struct.module_env, %struct.module_env* %78, i32 0, i32 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ugt i64 %77, %82
  br i1 %83, label %84, label %119

84:                                               ; preds = %76
  %85 = load %struct.module_env*, %struct.module_env** %14, align 8
  %86 = getelementptr inbounds %struct.module_env, %struct.module_env* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @ub_random_max(i32 %87, i32 1000)
  %89 = load %struct.module_env*, %struct.module_env** %14, align 8
  %90 = getelementptr inbounds %struct.module_env, %struct.module_env* %89, i32 0, i32 0
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp slt i64 %88, %93
  br i1 %94, label %95, label %119

95:                                               ; preds = %84
  %96 = load %struct.delegpt*, %struct.delegpt** %19, align 8
  %97 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %96, i32 0, i32 0
  %98 = load %struct.delegpt_addr*, %struct.delegpt_addr** %97, align 8
  %99 = load i64, i64* %29, align 8
  %100 = load %struct.module_env*, %struct.module_env** %14, align 8
  %101 = getelementptr inbounds %struct.module_env, %struct.module_env* %100, i32 0, i32 0
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @nth_rtt(%struct.delegpt_addr* %98, i64 %99, i64 %104)
  store i32 %105, i32* %28, align 4
  %106 = load i32, i32* %28, align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %95
  %109 = load i32, i32* %28, align 4
  %110 = load i32, i32* %25, align 4
  %111 = sub nsw i32 %109, %110
  store i32 %111, i32* %27, align 4
  %112 = load i32, i32* %27, align 4
  %113 = load i32, i32* @RTT_BAND, align 4
  %114 = icmp sgt i32 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %108
  %116 = load i32, i32* @RTT_BAND, align 4
  store i32 %116, i32* %27, align 4
  br label %117

117:                                              ; preds = %115, %108
  br label %118

118:                                              ; preds = %117, %95
  br label %119

119:                                              ; preds = %118, %84, %76, %73, %66
  store i32 0, i32* %24, align 4
  %120 = load %struct.delegpt*, %struct.delegpt** %19, align 8
  %121 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %120, i32 0, i32 0
  %122 = load %struct.delegpt_addr*, %struct.delegpt_addr** %121, align 8
  store %struct.delegpt_addr* %122, %struct.delegpt_addr** %30, align 8
  br label %123

123:                                              ; preds = %198, %131, %119
  %124 = load %struct.delegpt_addr*, %struct.delegpt_addr** %30, align 8
  %125 = icmp ne %struct.delegpt_addr* %124, null
  br i1 %125, label %126, label %199

126:                                              ; preds = %123
  %127 = load %struct.delegpt_addr*, %struct.delegpt_addr** %30, align 8
  %128 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp eq i32 %129, -1
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = load %struct.delegpt_addr*, %struct.delegpt_addr** %30, align 8
  store %struct.delegpt_addr* %132, %struct.delegpt_addr** %32, align 8
  %133 = load %struct.delegpt_addr*, %struct.delegpt_addr** %30, align 8
  %134 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %133, i32 0, i32 2
  %135 = load %struct.delegpt_addr*, %struct.delegpt_addr** %134, align 8
  store %struct.delegpt_addr* %135, %struct.delegpt_addr** %30, align 8
  br label %123

136:                                              ; preds = %126
  store i32 0, i32* %26, align 4
  %137 = load %struct.delegpt_addr*, %struct.delegpt_addr** %30, align 8
  %138 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %25, align 4
  %141 = icmp sge i32 %139, %140
  br i1 %141, label %142, label %153

142:                                              ; preds = %136
  %143 = load %struct.delegpt_addr*, %struct.delegpt_addr** %30, align 8
  %144 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %25, align 4
  %147 = sub nsw i32 %145, %146
  %148 = load i32, i32* %27, align 4
  %149 = icmp sle i32 %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %142
  %151 = load i32, i32* %24, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %24, align 4
  store i32 1, i32* %26, align 4
  br label %171

153:                                              ; preds = %142, %136
  %154 = load %struct.delegpt_addr*, %struct.delegpt_addr** %30, align 8
  %155 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* %25, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %170

159:                                              ; preds = %153
  %160 = load i32, i32* %25, align 4
  %161 = load %struct.delegpt_addr*, %struct.delegpt_addr** %30, align 8
  %162 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = sub nsw i32 %160, %163
  %165 = load i32, i32* %27, align 4
  %166 = icmp sle i32 %164, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %159
  %168 = load i32, i32* %24, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %24, align 4
  store i32 1, i32* %26, align 4
  br label %170

170:                                              ; preds = %167, %159, %153
  br label %171

171:                                              ; preds = %170, %150
  %172 = load i32, i32* %26, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %193

174:                                              ; preds = %171
  %175 = load %struct.delegpt_addr*, %struct.delegpt_addr** %32, align 8
  %176 = icmp ne %struct.delegpt_addr* %175, null
  br i1 %176, label %177, label %193

177:                                              ; preds = %174
  %178 = load %struct.delegpt_addr*, %struct.delegpt_addr** %30, align 8
  %179 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %178, i32 0, i32 2
  %180 = load %struct.delegpt_addr*, %struct.delegpt_addr** %179, align 8
  store %struct.delegpt_addr* %180, %struct.delegpt_addr** %31, align 8
  %181 = load %struct.delegpt_addr*, %struct.delegpt_addr** %31, align 8
  %182 = load %struct.delegpt_addr*, %struct.delegpt_addr** %32, align 8
  %183 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %182, i32 0, i32 2
  store %struct.delegpt_addr* %181, %struct.delegpt_addr** %183, align 8
  %184 = load %struct.delegpt*, %struct.delegpt** %19, align 8
  %185 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %184, i32 0, i32 0
  %186 = load %struct.delegpt_addr*, %struct.delegpt_addr** %185, align 8
  %187 = load %struct.delegpt_addr*, %struct.delegpt_addr** %30, align 8
  %188 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %187, i32 0, i32 2
  store %struct.delegpt_addr* %186, %struct.delegpt_addr** %188, align 8
  %189 = load %struct.delegpt_addr*, %struct.delegpt_addr** %30, align 8
  %190 = load %struct.delegpt*, %struct.delegpt** %19, align 8
  %191 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %190, i32 0, i32 0
  store %struct.delegpt_addr* %189, %struct.delegpt_addr** %191, align 8
  %192 = load %struct.delegpt_addr*, %struct.delegpt_addr** %31, align 8
  store %struct.delegpt_addr* %192, %struct.delegpt_addr** %30, align 8
  br label %198

193:                                              ; preds = %174, %171
  %194 = load %struct.delegpt_addr*, %struct.delegpt_addr** %30, align 8
  store %struct.delegpt_addr* %194, %struct.delegpt_addr** %32, align 8
  %195 = load %struct.delegpt_addr*, %struct.delegpt_addr** %30, align 8
  %196 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %195, i32 0, i32 2
  %197 = load %struct.delegpt_addr*, %struct.delegpt_addr** %196, align 8
  store %struct.delegpt_addr* %197, %struct.delegpt_addr** %30, align 8
  br label %198

198:                                              ; preds = %193, %177
  br label %123

199:                                              ; preds = %123
  %200 = load i32, i32* %25, align 4
  %201 = load i32*, i32** %20, align 8
  store i32 %200, i32* %201, align 4
  %202 = load %struct.module_env*, %struct.module_env** %14, align 8
  %203 = getelementptr inbounds %struct.module_env, %struct.module_env* %202, i32 0, i32 0
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %350

208:                                              ; preds = %199
  store i32 0, i32* %33, align 4
  store i32 0, i32* %34, align 4
  store i32 -1, i32* %36, align 4
  store i32 0, i32* %37, align 4
  store i32 0, i32* %38, align 4
  store %struct.delegpt_addr* null, %struct.delegpt_addr** %32, align 8
  %209 = load %struct.delegpt*, %struct.delegpt** %19, align 8
  %210 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %209, i32 0, i32 0
  %211 = load %struct.delegpt_addr*, %struct.delegpt_addr** %210, align 8
  store %struct.delegpt_addr* %211, %struct.delegpt_addr** %30, align 8
  store i32 0, i32* %35, align 4
  br label %212

212:                                              ; preds = %331, %208
  %213 = load i32, i32* %35, align 4
  %214 = load i32, i32* %24, align 4
  %215 = icmp slt i32 %213, %214
  br i1 %215, label %216, label %334

216:                                              ; preds = %212
  store i32 0, i32* %26, align 4
  %217 = load %struct.delegpt_addr*, %struct.delegpt_addr** %30, align 8
  %218 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %217, i32 0, i32 3
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @AF_INET6, align 8
  %222 = icmp ne i64 %220, %221
  br i1 %222, label %223, label %235

223:                                              ; preds = %216
  %224 = load i32, i32* %36, align 4
  %225 = icmp eq i32 %224, -1
  br i1 %225, label %226, label %235

226:                                              ; preds = %223
  %227 = load %struct.delegpt_addr*, %struct.delegpt_addr** %30, align 8
  %228 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  store i32 %229, i32* %36, align 4
  %230 = load i32, i32* %37, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %37, align 4
  %232 = load %struct.delegpt_addr*, %struct.delegpt_addr** %30, align 8
  %233 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  store i32 %234, i32* %38, align 4
  br label %265

235:                                              ; preds = %223, %216
  %236 = load %struct.delegpt_addr*, %struct.delegpt_addr** %30, align 8
  %237 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %236, i32 0, i32 3
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @AF_INET6, align 8
  %241 = icmp ne i64 %239, %240
  br i1 %241, label %242, label %264

242:                                              ; preds = %235
  %243 = load i32, i32* %36, align 4
  %244 = load %struct.delegpt_addr*, %struct.delegpt_addr** %30, align 8
  %245 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = icmp eq i32 %243, %246
  br i1 %247, label %248, label %264

248:                                              ; preds = %242
  %249 = load i32, i32* %37, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %37, align 4
  %251 = load i32, i32* %38, align 4
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %259, label %253

253:                                              ; preds = %248
  %254 = load %struct.delegpt_addr*, %struct.delegpt_addr** %30, align 8
  %255 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* %38, align 4
  %258 = icmp slt i32 %256, %257
  br i1 %258, label %259, label %263

259:                                              ; preds = %253, %248
  %260 = load %struct.delegpt_addr*, %struct.delegpt_addr** %30, align 8
  %261 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  store i32 %262, i32* %38, align 4
  br label %263

263:                                              ; preds = %259, %253
  br label %264

264:                                              ; preds = %263, %242, %235
  br label %265

265:                                              ; preds = %264, %226
  %266 = load %struct.delegpt_addr*, %struct.delegpt_addr** %30, align 8
  %267 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %266, i32 0, i32 3
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* @AF_INET6, align 8
  %271 = icmp eq i64 %269, %270
  br i1 %271, label %272, label %303

272:                                              ; preds = %265
  %273 = load i32, i32* %36, align 4
  %274 = icmp eq i32 %273, -1
  br i1 %274, label %275, label %279

275:                                              ; preds = %272
  %276 = load %struct.delegpt_addr*, %struct.delegpt_addr** %30, align 8
  %277 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  store i32 %278, i32* %36, align 4
  br label %287

279:                                              ; preds = %272
  %280 = load %struct.delegpt_addr*, %struct.delegpt_addr** %30, align 8
  %281 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* %36, align 4
  %284 = icmp sgt i32 %282, %283
  br i1 %284, label %285, label %286

285:                                              ; preds = %279
  br label %334

286:                                              ; preds = %279
  br label %287

287:                                              ; preds = %286, %275
  %288 = load i32, i32* %33, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %33, align 4
  store i32 1, i32* %26, align 4
  %290 = load i32, i32* %34, align 4
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %298, label %292

292:                                              ; preds = %287
  %293 = load %struct.delegpt_addr*, %struct.delegpt_addr** %30, align 8
  %294 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* %34, align 4
  %297 = icmp slt i32 %295, %296
  br i1 %297, label %298, label %302

298:                                              ; preds = %292, %287
  %299 = load %struct.delegpt_addr*, %struct.delegpt_addr** %30, align 8
  %300 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  store i32 %301, i32* %34, align 4
  br label %302

302:                                              ; preds = %298, %292
  br label %303

303:                                              ; preds = %302, %265
  %304 = load i32, i32* %26, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %325

306:                                              ; preds = %303
  %307 = load %struct.delegpt_addr*, %struct.delegpt_addr** %32, align 8
  %308 = icmp ne %struct.delegpt_addr* %307, null
  br i1 %308, label %309, label %325

309:                                              ; preds = %306
  %310 = load %struct.delegpt_addr*, %struct.delegpt_addr** %30, align 8
  %311 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %310, i32 0, i32 2
  %312 = load %struct.delegpt_addr*, %struct.delegpt_addr** %311, align 8
  store %struct.delegpt_addr* %312, %struct.delegpt_addr** %31, align 8
  %313 = load %struct.delegpt_addr*, %struct.delegpt_addr** %31, align 8
  %314 = load %struct.delegpt_addr*, %struct.delegpt_addr** %32, align 8
  %315 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %314, i32 0, i32 2
  store %struct.delegpt_addr* %313, %struct.delegpt_addr** %315, align 8
  %316 = load %struct.delegpt*, %struct.delegpt** %19, align 8
  %317 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %316, i32 0, i32 0
  %318 = load %struct.delegpt_addr*, %struct.delegpt_addr** %317, align 8
  %319 = load %struct.delegpt_addr*, %struct.delegpt_addr** %30, align 8
  %320 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %319, i32 0, i32 2
  store %struct.delegpt_addr* %318, %struct.delegpt_addr** %320, align 8
  %321 = load %struct.delegpt_addr*, %struct.delegpt_addr** %30, align 8
  %322 = load %struct.delegpt*, %struct.delegpt** %19, align 8
  %323 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %322, i32 0, i32 0
  store %struct.delegpt_addr* %321, %struct.delegpt_addr** %323, align 8
  %324 = load %struct.delegpt_addr*, %struct.delegpt_addr** %31, align 8
  store %struct.delegpt_addr* %324, %struct.delegpt_addr** %30, align 8
  br label %330

325:                                              ; preds = %306, %303
  %326 = load %struct.delegpt_addr*, %struct.delegpt_addr** %30, align 8
  store %struct.delegpt_addr* %326, %struct.delegpt_addr** %32, align 8
  %327 = load %struct.delegpt_addr*, %struct.delegpt_addr** %30, align 8
  %328 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %327, i32 0, i32 2
  %329 = load %struct.delegpt_addr*, %struct.delegpt_addr** %328, align 8
  store %struct.delegpt_addr* %329, %struct.delegpt_addr** %30, align 8
  br label %330

330:                                              ; preds = %325, %309
  br label %331

331:                                              ; preds = %330
  %332 = load i32, i32* %35, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %35, align 4
  br label %212

334:                                              ; preds = %285, %212
  %335 = load i32, i32* %33, align 4
  %336 = icmp sgt i32 %335, 0
  br i1 %336, label %337, label %341

337:                                              ; preds = %334
  %338 = load i32, i32* %33, align 4
  store i32 %338, i32* %24, align 4
  %339 = load i32, i32* %34, align 4
  %340 = load i32*, i32** %20, align 8
  store i32 %339, i32* %340, align 4
  br label %349

341:                                              ; preds = %334
  %342 = load i32, i32* %37, align 4
  %343 = icmp sgt i32 %342, 0
  br i1 %343, label %344, label %348

344:                                              ; preds = %341
  %345 = load i32, i32* %37, align 4
  store i32 %345, i32* %24, align 4
  %346 = load i32, i32* %38, align 4
  %347 = load i32*, i32** %20, align 8
  store i32 %346, i32* %347, align 4
  br label %348

348:                                              ; preds = %344, %341
  br label %349

349:                                              ; preds = %348, %337
  br label %350

350:                                              ; preds = %349, %199
  %351 = load i32, i32* %24, align 4
  store i32 %351, i32* %12, align 4
  br label %352

352:                                              ; preds = %350, %63, %51
  %353 = load i32, i32* %12, align 4
  ret i32 %353
}

declare dso_local i32 @iter_fill_rtt(%struct.iter_env*, %struct.module_env*, i32*, i64, i32, i64, %struct.delegpt*, i32*, %struct.sock_list*, i64*) #1

declare dso_local i64 @delegpt_count_missing_targets(%struct.delegpt*) #1

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i64 @ub_random_max(i32, i32) #1

declare dso_local i32 @nth_rtt(%struct.delegpt_addr*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
