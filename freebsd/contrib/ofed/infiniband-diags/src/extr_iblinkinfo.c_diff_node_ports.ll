; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_iblinkinfo.c_diff_node_ports.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_iblinkinfo.c_diff_node_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__** }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i64, i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.iter_diff_data = type { i32, i32, i32 }

@DIFF_FLAG_PORT_CONNECTION = common dso_local global i32 0, align 4
@DIFF_FLAG_PORT_STATE = common dso_local global i32 0, align 4
@IB_PORT_STATE_F = common dso_local global i32 0, align 4
@DIFF_FLAG_LID = common dso_local global i32 0, align 4
@DIFF_FLAG_NODE_DESCRIPTION = common dso_local global i32 0, align 4
@IB_SMP_DATA_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @diff_node_ports(%struct.TYPE_13__* %0, %struct.TYPE_13__* %1, i32* %2, %struct.iter_diff_data* %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.iter_diff_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.iter_diff_data* %3, %struct.iter_diff_data** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 1, i32* %9, align 4
  br label %15

15:                                               ; preds = %267, %4
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sle i32 %16, %19
  br i1 %20, label %21, label %270

21:                                               ; preds = %15
  store i32 0, i32* %12, align 4
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %24, i64 %26
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  store %struct.TYPE_12__* %28, %struct.TYPE_12__** %10, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %31, i64 %33
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %34, align 8
  store %struct.TYPE_12__* %35, %struct.TYPE_12__** %11, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %37 = icmp ne %struct.TYPE_12__* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %21
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %40 = icmp ne %struct.TYPE_12__* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  br label %267

42:                                               ; preds = %38, %21
  %43 = load %struct.iter_diff_data*, %struct.iter_diff_data** %8, align 8
  %44 = getelementptr inbounds %struct.iter_diff_data, %struct.iter_diff_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @DIFF_FLAG_PORT_CONNECTION, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %107

49:                                               ; preds = %42
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %51 = icmp ne %struct.TYPE_12__* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %54 = icmp ne %struct.TYPE_12__* %53, null
  br i1 %54, label %55, label %103

55:                                               ; preds = %52, %49
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %57 = icmp ne %struct.TYPE_12__* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %60 = icmp ne %struct.TYPE_12__* %59, null
  br i1 %60, label %103, label %61

61:                                               ; preds = %58, %55
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = icmp ne %struct.TYPE_11__* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = icmp ne %struct.TYPE_11__* %69, null
  br i1 %70, label %71, label %103

71:                                               ; preds = %66, %61
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = icmp ne %struct.TYPE_11__* %74, null
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = icmp ne %struct.TYPE_11__* %79, null
  br i1 %80, label %103, label %81

81:                                               ; preds = %76, %71
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  %85 = icmp ne %struct.TYPE_11__* %84, null
  br i1 %85, label %86, label %106

86:                                               ; preds = %81
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = icmp ne %struct.TYPE_11__* %89, null
  br i1 %90, label %91, label %106

91:                                               ; preds = %86
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %96, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %91, %76, %66, %58, %52
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %12, align 4
  br label %106

106:                                              ; preds = %103, %91, %86, %81
  br label %107

107:                                              ; preds = %106, %42
  %108 = load %struct.iter_diff_data*, %struct.iter_diff_data** %8, align 8
  %109 = getelementptr inbounds %struct.iter_diff_data, %struct.iter_diff_data* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @DIFF_FLAG_PORT_STATE, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %138

114:                                              ; preds = %107
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %116 = icmp ne %struct.TYPE_12__* %115, null
  br i1 %116, label %117, label %138

117:                                              ; preds = %114
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %119 = icmp ne %struct.TYPE_12__* %118, null
  br i1 %119, label %120, label %138

120:                                              ; preds = %117
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @IB_PORT_STATE_F, align 4
  %125 = call i32 @mad_get_field(i32 %123, i32 0, i32 %124)
  store i32 %125, i32* %13, align 4
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @IB_PORT_STATE_F, align 4
  %130 = call i32 @mad_get_field(i32 %128, i32 0, i32 %129)
  store i32 %130, i32* %14, align 4
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* %14, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %120
  %135 = load i32, i32* %12, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %12, align 4
  br label %137

137:                                              ; preds = %134, %120
  br label %138

138:                                              ; preds = %137, %117, %114, %107
  %139 = load %struct.iter_diff_data*, %struct.iter_diff_data** %8, align 8
  %140 = getelementptr inbounds %struct.iter_diff_data, %struct.iter_diff_data* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @DIFF_FLAG_PORT_CONNECTION, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %183

145:                                              ; preds = %138
  %146 = load %struct.iter_diff_data*, %struct.iter_diff_data** %8, align 8
  %147 = getelementptr inbounds %struct.iter_diff_data, %struct.iter_diff_data* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @DIFF_FLAG_LID, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %183

152:                                              ; preds = %145
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %154 = icmp ne %struct.TYPE_12__* %153, null
  br i1 %154, label %155, label %183

155:                                              ; preds = %152
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %157 = icmp ne %struct.TYPE_12__* %156, null
  br i1 %157, label %158, label %183

158:                                              ; preds = %155
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %160, align 8
  %162 = icmp ne %struct.TYPE_11__* %161, null
  br i1 %162, label %163, label %183

163:                                              ; preds = %158
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %165, align 8
  %167 = icmp ne %struct.TYPE_11__* %166, null
  br i1 %167, label %168, label %183

168:                                              ; preds = %163
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %173, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %168
  %181 = load i32, i32* %12, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %12, align 4
  br label %183

183:                                              ; preds = %180, %168, %163, %158, %155, %152, %145, %138
  %184 = load %struct.iter_diff_data*, %struct.iter_diff_data** %8, align 8
  %185 = getelementptr inbounds %struct.iter_diff_data, %struct.iter_diff_data* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @DIFF_FLAG_PORT_CONNECTION, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %234

190:                                              ; preds = %183
  %191 = load %struct.iter_diff_data*, %struct.iter_diff_data** %8, align 8
  %192 = getelementptr inbounds %struct.iter_diff_data, %struct.iter_diff_data* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @DIFF_FLAG_NODE_DESCRIPTION, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %234

197:                                              ; preds = %190
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %199 = icmp ne %struct.TYPE_12__* %198, null
  br i1 %199, label %200, label %234

200:                                              ; preds = %197
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %202 = icmp ne %struct.TYPE_12__* %201, null
  br i1 %202, label %203, label %234

203:                                              ; preds = %200
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %205, align 8
  %207 = icmp ne %struct.TYPE_11__* %206, null
  br i1 %207, label %208, label %234

208:                                              ; preds = %203
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 0
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %210, align 8
  %212 = icmp ne %struct.TYPE_11__* %211, null
  br i1 %212, label %213, label %234

213:                                              ; preds = %208
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 2
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 0
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 2
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @IB_SMP_DATA_SIZE, align 4
  %229 = call i64 @memcmp(i32 %220, i32 %227, i32 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %213
  %232 = load i32, i32* %12, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %12, align 4
  br label %234

234:                                              ; preds = %231, %213, %208, %203, %200, %197, %190, %183
  %235 = load i32, i32* %12, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %250

237:                                              ; preds = %234
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %239 = icmp ne %struct.TYPE_12__* %238, null
  br i1 %239, label %240, label %250

240:                                              ; preds = %237
  %241 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %242 = load i32*, i32** %7, align 8
  %243 = call i32 @print_node_header(%struct.TYPE_13__* %241, i32* %242, i32* null)
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %246 = load %struct.iter_diff_data*, %struct.iter_diff_data** %8, align 8
  %247 = getelementptr inbounds %struct.iter_diff_data, %struct.iter_diff_data* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @print_port(%struct.TYPE_13__* %244, %struct.TYPE_12__* %245, i32 %248)
  br label %250

250:                                              ; preds = %240, %237, %234
  %251 = load i32, i32* %12, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %266

253:                                              ; preds = %250
  %254 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %255 = icmp ne %struct.TYPE_12__* %254, null
  br i1 %255, label %256, label %266

256:                                              ; preds = %253
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %258 = load i32*, i32** %7, align 8
  %259 = call i32 @print_node_header(%struct.TYPE_13__* %257, i32* %258, i32* null)
  %260 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %261 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %262 = load %struct.iter_diff_data*, %struct.iter_diff_data** %8, align 8
  %263 = getelementptr inbounds %struct.iter_diff_data, %struct.iter_diff_data* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @print_port(%struct.TYPE_13__* %260, %struct.TYPE_12__* %261, i32 %264)
  br label %266

266:                                              ; preds = %256, %253, %250
  br label %267

267:                                              ; preds = %266, %41
  %268 = load i32, i32* %9, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %9, align 4
  br label %15

270:                                              ; preds = %15
  ret void
}

declare dso_local i32 @mad_get_field(i32, i32, i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @print_node_header(%struct.TYPE_13__*, i32*, i32*) #1

declare dso_local i32 @print_port(%struct.TYPE_13__*, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
