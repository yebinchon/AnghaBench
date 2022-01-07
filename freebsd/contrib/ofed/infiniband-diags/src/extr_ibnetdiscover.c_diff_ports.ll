; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibnetdiscover.c_diff_ports.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibnetdiscover.c_diff_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__** }
%struct.TYPE_12__ = type { i64, i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.iter_diff_data = type { i32, i32, i32 (%struct.TYPE_12__*, i32, i32)*, i32 }

@DIFF_FLAG_PORT_CONNECTION = common dso_local global i32 0, align 4
@DIFF_FLAG_LID = common dso_local global i32 0, align 4
@DIFF_FLAG_NODE_DESCRIPTION = common dso_local global i32 0, align 4
@IB_SMP_DATA_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_13__*, i32*, %struct.iter_diff_data*)* @diff_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @diff_ports(%struct.TYPE_13__* %0, %struct.TYPE_13__* %1, i32* %2, %struct.iter_diff_data* %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.iter_diff_data*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.iter_diff_data* %3, %struct.iter_diff_data** %8, align 8
  store i32 1, i32* %11, align 4
  br label %14

14:                                               ; preds = %347, %4
  %15 = load i32, i32* %11, align 4
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sle i32 %15, %18
  br i1 %19, label %20, label %350

20:                                               ; preds = %14
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %22, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %23, i64 %25
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %9, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %29, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %30, i64 %32
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  store %struct.TYPE_12__* %34, %struct.TYPE_12__** %10, align 8
  %35 = load %struct.iter_diff_data*, %struct.iter_diff_data** %8, align 8
  %36 = getelementptr inbounds %struct.iter_diff_data, %struct.iter_diff_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @DIFF_FLAG_PORT_CONNECTION, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %135

41:                                               ; preds = %20
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %43 = icmp ne %struct.TYPE_12__* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %46 = icmp ne %struct.TYPE_12__* %45, null
  br i1 %46, label %47, label %63

47:                                               ; preds = %44, %41
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %49 = icmp ne %struct.TYPE_12__* %48, null
  br i1 %49, label %50, label %66

50:                                               ; preds = %47
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %52 = icmp ne %struct.TYPE_12__* %51, null
  br i1 %52, label %53, label %66

53:                                               ; preds = %50
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = icmp ne %struct.TYPE_11__* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = icmp ne %struct.TYPE_11__* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %58, %44
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %12, align 4
  br label %134

66:                                               ; preds = %58, %53, %50, %47
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %68 = icmp ne %struct.TYPE_12__* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %71 = icmp ne %struct.TYPE_12__* %70, null
  br i1 %71, label %88, label %72

72:                                               ; preds = %69, %66
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %74 = icmp ne %struct.TYPE_12__* %73, null
  br i1 %74, label %75, label %91

75:                                               ; preds = %72
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %77 = icmp ne %struct.TYPE_12__* %76, null
  br i1 %77, label %78, label %91

78:                                               ; preds = %75
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = icmp ne %struct.TYPE_11__* %81, null
  br i1 %82, label %91, label %83

83:                                               ; preds = %78
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = icmp ne %struct.TYPE_11__* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %83, %69
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %13, align 4
  br label %133

91:                                               ; preds = %83, %78, %75, %72
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %93 = icmp ne %struct.TYPE_12__* %92, null
  br i1 %93, label %94, label %132

94:                                               ; preds = %91
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %96 = icmp ne %struct.TYPE_12__* %95, null
  br i1 %96, label %97, label %132

97:                                               ; preds = %94
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %100, %103
  br i1 %104, label %127, label %105

105:                                              ; preds = %97
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  %109 = icmp ne %struct.TYPE_11__* %108, null
  br i1 %109, label %110, label %132

110:                                              ; preds = %105
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %112, align 8
  %114 = icmp ne %struct.TYPE_11__* %113, null
  br i1 %114, label %115, label %132

115:                                              ; preds = %110
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %120, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %115, %97
  %128 = load i32, i32* %12, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %13, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %13, align 4
  br label %132

132:                                              ; preds = %127, %115, %110, %105, %94, %91
  br label %133

133:                                              ; preds = %132, %88
  br label %134

134:                                              ; preds = %133, %63
  br label %135

135:                                              ; preds = %134, %20
  %136 = load %struct.iter_diff_data*, %struct.iter_diff_data** %8, align 8
  %137 = getelementptr inbounds %struct.iter_diff_data, %struct.iter_diff_data* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @DIFF_FLAG_LID, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %161

142:                                              ; preds = %135
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %144 = icmp ne %struct.TYPE_12__* %143, null
  br i1 %144, label %145, label %161

145:                                              ; preds = %142
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %147 = icmp ne %struct.TYPE_12__* %146, null
  br i1 %147, label %148, label %161

148:                                              ; preds = %145
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %151, %154
  br i1 %155, label %156, label %161

156:                                              ; preds = %148
  %157 = load i32, i32* %12, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %12, align 4
  %159 = load i32, i32* %13, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %13, align 4
  br label %161

161:                                              ; preds = %156, %148, %145, %142, %135
  %162 = load %struct.iter_diff_data*, %struct.iter_diff_data** %8, align 8
  %163 = getelementptr inbounds %struct.iter_diff_data, %struct.iter_diff_data* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @DIFF_FLAG_PORT_CONNECTION, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %214

168:                                              ; preds = %161
  %169 = load %struct.iter_diff_data*, %struct.iter_diff_data** %8, align 8
  %170 = getelementptr inbounds %struct.iter_diff_data, %struct.iter_diff_data* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @DIFF_FLAG_NODE_DESCRIPTION, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %214

175:                                              ; preds = %168
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %177 = icmp ne %struct.TYPE_12__* %176, null
  br i1 %177, label %178, label %214

178:                                              ; preds = %175
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %180 = icmp ne %struct.TYPE_12__* %179, null
  br i1 %180, label %181, label %214

181:                                              ; preds = %178
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 2
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %183, align 8
  %185 = icmp ne %struct.TYPE_11__* %184, null
  br i1 %185, label %186, label %214

186:                                              ; preds = %181
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 2
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %188, align 8
  %190 = icmp ne %struct.TYPE_11__* %189, null
  br i1 %190, label %191, label %214

191:                                              ; preds = %186
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 2
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 2
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 2
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 2
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @IB_SMP_DATA_SIZE, align 4
  %207 = call i64 @memcmp(i32 %198, i32 %205, i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %191
  %210 = load i32, i32* %12, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %12, align 4
  %212 = load i32, i32* %13, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %13, align 4
  br label %214

214:                                              ; preds = %209, %191, %186, %181, %178, %175, %168, %161
  %215 = load %struct.iter_diff_data*, %struct.iter_diff_data** %8, align 8
  %216 = getelementptr inbounds %struct.iter_diff_data, %struct.iter_diff_data* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @DIFF_FLAG_PORT_CONNECTION, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %267

221:                                              ; preds = %214
  %222 = load %struct.iter_diff_data*, %struct.iter_diff_data** %8, align 8
  %223 = getelementptr inbounds %struct.iter_diff_data, %struct.iter_diff_data* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @DIFF_FLAG_NODE_DESCRIPTION, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %267

228:                                              ; preds = %221
  %229 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %230 = icmp ne %struct.TYPE_12__* %229, null
  br i1 %230, label %231, label %267

231:                                              ; preds = %228
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %233 = icmp ne %struct.TYPE_12__* %232, null
  br i1 %233, label %234, label %267

234:                                              ; preds = %231
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 2
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %236, align 8
  %238 = icmp ne %struct.TYPE_11__* %237, null
  br i1 %238, label %239, label %267

239:                                              ; preds = %234
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 2
  %242 = load %struct.TYPE_11__*, %struct.TYPE_11__** %241, align 8
  %243 = icmp ne %struct.TYPE_11__* %242, null
  br i1 %243, label %244, label %267

244:                                              ; preds = %239
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 2
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 2
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 2
  %254 = load %struct.TYPE_11__*, %struct.TYPE_11__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 2
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* @IB_SMP_DATA_SIZE, align 4
  %260 = call i64 @memcmp(i32 %251, i32 %258, i32 %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %267

262:                                              ; preds = %244
  %263 = load i32, i32* %12, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %12, align 4
  %265 = load i32, i32* %13, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %13, align 4
  br label %267

267:                                              ; preds = %262, %244, %239, %234, %231, %228, %221, %214
  %268 = load %struct.iter_diff_data*, %struct.iter_diff_data** %8, align 8
  %269 = getelementptr inbounds %struct.iter_diff_data, %struct.iter_diff_data* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @DIFF_FLAG_PORT_CONNECTION, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %314

274:                                              ; preds = %267
  %275 = load %struct.iter_diff_data*, %struct.iter_diff_data** %8, align 8
  %276 = getelementptr inbounds %struct.iter_diff_data, %struct.iter_diff_data* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* @DIFF_FLAG_LID, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %314

281:                                              ; preds = %274
  %282 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %283 = icmp ne %struct.TYPE_12__* %282, null
  br i1 %283, label %284, label %314

284:                                              ; preds = %281
  %285 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %286 = icmp ne %struct.TYPE_12__* %285, null
  br i1 %286, label %287, label %314

287:                                              ; preds = %284
  %288 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %289 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %288, i32 0, i32 2
  %290 = load %struct.TYPE_11__*, %struct.TYPE_11__** %289, align 8
  %291 = icmp ne %struct.TYPE_11__* %290, null
  br i1 %291, label %292, label %314

292:                                              ; preds = %287
  %293 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i32 0, i32 2
  %295 = load %struct.TYPE_11__*, %struct.TYPE_11__** %294, align 8
  %296 = icmp ne %struct.TYPE_11__* %295, null
  br i1 %296, label %297, label %314

297:                                              ; preds = %292
  %298 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %299 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %298, i32 0, i32 2
  %300 = load %struct.TYPE_11__*, %struct.TYPE_11__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %300, i32 0, i32 1
  %302 = load i64, i64* %301, align 8
  %303 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %304 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %303, i32 0, i32 2
  %305 = load %struct.TYPE_11__*, %struct.TYPE_11__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %305, i32 0, i32 1
  %307 = load i64, i64* %306, align 8
  %308 = icmp ne i64 %302, %307
  br i1 %308, label %309, label %314

309:                                              ; preds = %297
  %310 = load i32, i32* %12, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %12, align 4
  %312 = load i32, i32* %13, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %13, align 4
  br label %314

314:                                              ; preds = %309, %297, %292, %287, %284, %281, %274, %267
  %315 = load i32, i32* %12, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %330

317:                                              ; preds = %314
  %318 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %319 = load %struct.iter_diff_data*, %struct.iter_diff_data** %8, align 8
  %320 = load i32*, i32** %7, align 8
  %321 = call i32 @diff_iter_out_header(%struct.TYPE_13__* %318, %struct.iter_diff_data* %319, i32* %320)
  %322 = load %struct.iter_diff_data*, %struct.iter_diff_data** %8, align 8
  %323 = getelementptr inbounds %struct.iter_diff_data, %struct.iter_diff_data* %322, i32 0, i32 2
  %324 = load i32 (%struct.TYPE_12__*, i32, i32)*, i32 (%struct.TYPE_12__*, i32, i32)** %323, align 8
  %325 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %326 = load %struct.iter_diff_data*, %struct.iter_diff_data** %8, align 8
  %327 = getelementptr inbounds %struct.iter_diff_data, %struct.iter_diff_data* %326, i32 0, i32 3
  %328 = load i32, i32* %327, align 8
  %329 = call i32 %324(%struct.TYPE_12__* %325, i32 0, i32 %328)
  br label %330

330:                                              ; preds = %317, %314
  %331 = load i32, i32* %13, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %346

333:                                              ; preds = %330
  %334 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %335 = load %struct.iter_diff_data*, %struct.iter_diff_data** %8, align 8
  %336 = load i32*, i32** %7, align 8
  %337 = call i32 @diff_iter_out_header(%struct.TYPE_13__* %334, %struct.iter_diff_data* %335, i32* %336)
  %338 = load %struct.iter_diff_data*, %struct.iter_diff_data** %8, align 8
  %339 = getelementptr inbounds %struct.iter_diff_data, %struct.iter_diff_data* %338, i32 0, i32 2
  %340 = load i32 (%struct.TYPE_12__*, i32, i32)*, i32 (%struct.TYPE_12__*, i32, i32)** %339, align 8
  %341 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %342 = load %struct.iter_diff_data*, %struct.iter_diff_data** %8, align 8
  %343 = getelementptr inbounds %struct.iter_diff_data, %struct.iter_diff_data* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = call i32 %340(%struct.TYPE_12__* %341, i32 0, i32 %344)
  br label %346

346:                                              ; preds = %333, %330
  br label %347

347:                                              ; preds = %346
  %348 = load i32, i32* %11, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %11, align 4
  br label %14

350:                                              ; preds = %14
  ret void
}

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @diff_iter_out_header(%struct.TYPE_13__*, %struct.iter_diff_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
