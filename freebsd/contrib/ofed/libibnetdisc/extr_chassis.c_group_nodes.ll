; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibnetdisc/extr_chassis.c_group_nodes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibnetdisc/extr_chassis.c_group_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_26__*, %struct.TYPE_24__*, %struct.TYPE_24__* }
%struct.TYPE_26__ = type { i32, i32, %struct.TYPE_26__* }
%struct.TYPE_24__ = type { i32, i32, %struct.TYPE_24__*, %struct.TYPE_23__*, %struct.TYPE_24__* }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_27__ = type { %struct.TYPE_26__*, %struct.TYPE_22__*, i32* }
%struct.TYPE_22__ = type { i32, i32, i32 }

@IB_NODE_VENDORID_F = common dso_local global i32 0, align 4
@VTR_VENDOR_ID = common dso_local global i32 0, align 4
@MLX_VENDOR_ID = common dso_local global i32 0, align 4
@IB_NODE_SYSTEM_GUID_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @group_nodes(%struct.TYPE_25__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca %struct.TYPE_27__, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  store i32 0, i32* %5, align 4
  %11 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %9, i32 0, i32 0
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %9, i32 0, i32 1
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %9, i32 0, i32 2
  store i32* null, i32** %13, align 8
  %14 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  store %struct.TYPE_24__* %16, %struct.TYPE_24__** %4, align 8
  br label %17

17:                                               ; preds = %45, %1
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %19 = icmp ne %struct.TYPE_24__* %18, null
  br i1 %19, label %20, label %49

20:                                               ; preds = %17
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IB_NODE_VENDORID_F, align 4
  %25 = call i32 @mad_get_field(i32 %23, i32 0, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @VTR_VENDOR_ID, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %20
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %31 = call i64 @fill_voltaire_chassis_record(%struct.TYPE_24__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %248

34:                                               ; preds = %29, %20
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @MLX_VENDOR_ID, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %40 = call i64 @fill_mellanox_chassis_record(%struct.TYPE_24__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %248

43:                                               ; preds = %38, %34
  br label %44

44:                                               ; preds = %43
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 4
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %47, align 8
  store %struct.TYPE_24__* %48, %struct.TYPE_24__** %4, align 8
  br label %17

49:                                               ; preds = %17
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %51, align 8
  store %struct.TYPE_24__* %52, %struct.TYPE_24__** %4, align 8
  br label %53

53:                                               ; preds = %104, %49
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %55 = icmp ne %struct.TYPE_24__* %54, null
  br i1 %55, label %56, label %108

56:                                               ; preds = %53
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @IB_NODE_VENDORID_F, align 4
  %61 = call i32 @mad_get_field(i32 %59, i32 0, i32 %60)
  %62 = load i32, i32* @VTR_VENDOR_ID, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %104

65:                                               ; preds = %56
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %65
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %71, i32 0, i32 3
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %72, align 8
  %74 = icmp ne %struct.TYPE_23__* %73, null
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %75, %70
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %84 = call i32 @is_spine(%struct.TYPE_24__* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %82, %75, %65
  br label %104

87:                                               ; preds = %82
  %88 = call i64 @add_chassis(%struct.TYPE_27__* %9)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  br label %248

91:                                               ; preds = %87
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %5, align 4
  %94 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %9, i32 0, i32 1
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 4
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %9, i32 0, i32 1
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %98, align 8
  %100 = call i64 @build_chassis(%struct.TYPE_24__* %97, %struct.TYPE_22__* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %91
  br label %248

103:                                              ; preds = %91
  br label %104

104:                                              ; preds = %103, %86, %64
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 4
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %106, align 8
  store %struct.TYPE_24__* %107, %struct.TYPE_24__** %4, align 8
  br label %53

108:                                              ; preds = %53
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %110, align 8
  store %struct.TYPE_24__* %111, %struct.TYPE_24__** %4, align 8
  br label %112

112:                                              ; preds = %167, %108
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %114 = icmp ne %struct.TYPE_24__* %113, null
  br i1 %114, label %115, label %171

115:                                              ; preds = %112
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @IB_NODE_VENDORID_F, align 4
  %120 = call i32 @mad_get_field(i32 %118, i32 0, i32 %119)
  %121 = load i32, i32* @VTR_VENDOR_ID, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %115
  br label %167

124:                                              ; preds = %115
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @IB_NODE_SYSTEM_GUID_F, align 4
  %129 = call i64 @mad_get_field64(i32 %127, i32 0, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %166

131:                                              ; preds = %124
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %133 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %134 = call %struct.TYPE_26__* @find_chassisguid(%struct.TYPE_25__* %132, %struct.TYPE_24__* %133)
  store %struct.TYPE_26__* %134, %struct.TYPE_26__** %6, align 8
  %135 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %136 = icmp ne %struct.TYPE_26__* %135, null
  br i1 %136, label %137, label %142

137:                                              ; preds = %131
  %138 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 8
  br label %165

142:                                              ; preds = %131
  %143 = call i64 @add_chassis(%struct.TYPE_27__* %9)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %142
  br label %248

146:                                              ; preds = %142
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %148 = call i32 @get_chassisguid(%struct.TYPE_24__* %147)
  %149 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %9, i32 0, i32 1
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 2
  store i32 %148, i32* %151, align 4
  %152 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %9, i32 0, i32 1
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i32 0, i32 1
  store i32 1, i32* %154, align 4
  %155 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_26__*, %struct.TYPE_26__** %156, align 8
  %158 = icmp ne %struct.TYPE_26__* %157, null
  br i1 %158, label %164, label %159

159:                                              ; preds = %146
  %160 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %9, i32 0, i32 0
  %161 = load %struct.TYPE_26__*, %struct.TYPE_26__** %160, align 8
  %162 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %162, i32 0, i32 0
  store %struct.TYPE_26__* %161, %struct.TYPE_26__** %163, align 8
  br label %164

164:                                              ; preds = %159, %146
  br label %165

165:                                              ; preds = %164, %137
  br label %166

166:                                              ; preds = %165, %124
  br label %167

167:                                              ; preds = %166, %123
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i32 0, i32 2
  %170 = load %struct.TYPE_24__*, %struct.TYPE_24__** %169, align 8
  store %struct.TYPE_24__* %170, %struct.TYPE_24__** %4, align 8
  br label %112

171:                                              ; preds = %112
  %172 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_24__*, %struct.TYPE_24__** %173, align 8
  store %struct.TYPE_24__* %174, %struct.TYPE_24__** %4, align 8
  br label %175

175:                                              ; preds = %239, %171
  %176 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %177 = icmp ne %struct.TYPE_24__* %176, null
  br i1 %177, label %178, label %243

178:                                              ; preds = %175
  %179 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @IB_NODE_VENDORID_F, align 4
  %183 = call i32 @mad_get_field(i32 %181, i32 0, i32 %182)
  store i32 %183, i32* %10, align 4
  %184 = load i32, i32* %10, align 4
  %185 = load i32, i32* @VTR_VENDOR_ID, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %178
  br label %239

188:                                              ; preds = %178
  %189 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @IB_NODE_SYSTEM_GUID_F, align 4
  %193 = call i64 @mad_get_field64(i32 %191, i32 0, i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %238

195:                                              ; preds = %188
  %196 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %197 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %198 = call %struct.TYPE_26__* @find_chassisguid(%struct.TYPE_25__* %196, %struct.TYPE_24__* %197)
  store %struct.TYPE_26__* %198, %struct.TYPE_26__** %6, align 8
  %199 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %200 = icmp ne %struct.TYPE_26__* %199, null
  br i1 %200, label %201, label %237

201:                                              ; preds = %195
  %202 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = icmp sgt i32 %204, 1
  br i1 %205, label %206, label %237

206:                                              ; preds = %201
  %207 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %216, label %211

211:                                              ; preds = %206
  %212 = load i32, i32* %5, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %5, align 4
  %214 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %214, i32 0, i32 1
  store i32 %213, i32* %215, align 4
  br label %216

216:                                              ; preds = %211, %206
  %217 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %227, label %221

221:                                              ; preds = %216
  %222 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %222, i32 0, i32 0
  store i32 1, i32* %223, align 8
  %224 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %225 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %226 = call i32 @add_node_to_chassis(%struct.TYPE_26__* %224, %struct.TYPE_24__* %225)
  br label %236

227:                                              ; preds = %216
  %228 = load i32, i32* %10, align 4
  %229 = load i32, i32* @MLX_VENDOR_ID, align 4
  %230 = icmp eq i32 %228, %229
  br i1 %230, label %231, label %235

231:                                              ; preds = %227
  %232 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %233 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %234 = call i32 @insert_mellanox_line_and_spine(%struct.TYPE_24__* %232, %struct.TYPE_26__* %233)
  br label %235

235:                                              ; preds = %231, %227
  br label %236

236:                                              ; preds = %235, %221
  br label %237

237:                                              ; preds = %236, %201, %195
  br label %238

238:                                              ; preds = %237, %188
  br label %239

239:                                              ; preds = %238, %187
  %240 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %240, i32 0, i32 2
  %242 = load %struct.TYPE_24__*, %struct.TYPE_24__** %241, align 8
  store %struct.TYPE_24__* %242, %struct.TYPE_24__** %4, align 8
  br label %175

243:                                              ; preds = %175
  %244 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %9, i32 0, i32 0
  %245 = load %struct.TYPE_26__*, %struct.TYPE_26__** %244, align 8
  %246 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %246, i32 0, i32 0
  store %struct.TYPE_26__* %245, %struct.TYPE_26__** %247, align 8
  store i32 0, i32* %2, align 4
  br label %264

248:                                              ; preds = %145, %102, %90, %42, %33
  %249 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %9, i32 0, i32 0
  %250 = load %struct.TYPE_26__*, %struct.TYPE_26__** %249, align 8
  store %struct.TYPE_26__* %250, %struct.TYPE_26__** %7, align 8
  br label %251

251:                                              ; preds = %254, %248
  %252 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %253 = icmp ne %struct.TYPE_26__* %252, null
  br i1 %253, label %254, label %261

254:                                              ; preds = %251
  %255 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %255, i32 0, i32 2
  %257 = load %struct.TYPE_26__*, %struct.TYPE_26__** %256, align 8
  store %struct.TYPE_26__* %257, %struct.TYPE_26__** %8, align 8
  %258 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %259 = call i32 @free(%struct.TYPE_26__* %258)
  %260 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  store %struct.TYPE_26__* %260, %struct.TYPE_26__** %7, align 8
  br label %251

261:                                              ; preds = %251
  %262 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %262, i32 0, i32 0
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %263, align 8
  store i32 -1, i32* %2, align 4
  br label %264

264:                                              ; preds = %261, %243
  %265 = load i32, i32* %2, align 4
  ret i32 %265
}

declare dso_local i32 @mad_get_field(i32, i32, i32) #1

declare dso_local i64 @fill_voltaire_chassis_record(%struct.TYPE_24__*) #1

declare dso_local i64 @fill_mellanox_chassis_record(%struct.TYPE_24__*) #1

declare dso_local i32 @is_spine(%struct.TYPE_24__*) #1

declare dso_local i64 @add_chassis(%struct.TYPE_27__*) #1

declare dso_local i64 @build_chassis(%struct.TYPE_24__*, %struct.TYPE_22__*) #1

declare dso_local i64 @mad_get_field64(i32, i32, i32) #1

declare dso_local %struct.TYPE_26__* @find_chassisguid(%struct.TYPE_25__*, %struct.TYPE_24__*) #1

declare dso_local i32 @get_chassisguid(%struct.TYPE_24__*) #1

declare dso_local i32 @add_node_to_chassis(%struct.TYPE_26__*, %struct.TYPE_24__*) #1

declare dso_local i32 @insert_mellanox_line_and_spine(%struct.TYPE_24__*, %struct.TYPE_26__*) #1

declare dso_local i32 @free(%struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
