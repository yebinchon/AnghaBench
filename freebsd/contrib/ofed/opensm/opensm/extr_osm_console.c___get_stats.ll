; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_console.c___get_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_console.c___get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_22__, %struct.TYPE_21__ }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_21__ = type { i64, i64, i32 }

@IB_NODE_TYPE_SWITCH = common dso_local global i64 0, align 8
@IB_LINK_DOWN = common dso_local global i64 0, align 8
@IB_LINK_ACTIVE = common dso_local global i64 0, align 8
@IB_PORT_PHYS_STATE_DISABLED = common dso_local global i64 0, align 8
@IB_PORT_CAP_HAS_EXT_SPEEDS = common dso_local global i32 0, align 4
@FDR10 = common dso_local global i32 0, align 4
@IB_LINK_SPEED_EXT_DISABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @__get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__get_stats(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %21, %struct.TYPE_23__** %5, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = bitcast i32* %22 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %23, %struct.TYPE_20__** %6, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %25 = call i64 @osm_node_get_num_physp(%struct.TYPE_20__* %24)
  store i64 %25, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %2
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %33, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %461

40:                                               ; preds = %30, %2
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 29
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %46 = call i64 @osm_node_get_type(%struct.TYPE_20__* %45)
  %47 = load i64, i64* @IB_NODE_TYPE_SWITCH, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %40
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %51 = call %struct.TYPE_19__* @osm_node_get_physp_ptr(%struct.TYPE_20__* %50, i64 0)
  store %struct.TYPE_19__* %51, %struct.TYPE_19__** %7, align 8
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 1
  store %struct.TYPE_21__* %53, %struct.TYPE_21__** %8, align 8
  br label %55

54:                                               ; preds = %40
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %8, align 8
  br label %55

55:                                               ; preds = %54, %49
  store i64 1, i64* %10, align 8
  br label %56

56:                                               ; preds = %458, %55
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* %9, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %461

60:                                               ; preds = %56
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %62 = load i64, i64* %10, align 8
  %63 = call %struct.TYPE_19__* @osm_node_get_physp_ptr(%struct.TYPE_20__* %61, i64 %62)
  store %struct.TYPE_19__* %63, %struct.TYPE_19__** %11, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %12, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %65 = icmp ne %struct.TYPE_19__* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %60
  br label %458

67:                                               ; preds = %60
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 1
  store %struct.TYPE_21__* %69, %struct.TYPE_21__** %12, align 8
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 0
  store %struct.TYPE_22__* %71, %struct.TYPE_22__** %13, align 8
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %73 = icmp ne %struct.TYPE_21__* %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %67
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  store %struct.TYPE_21__* %75, %struct.TYPE_21__** %8, align 8
  br label %76

76:                                               ; preds = %74, %67
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %78 = call i64 @ib_port_info_get_link_speed_active(%struct.TYPE_21__* %77)
  store i64 %78, i64* %14, align 8
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %80 = call i64 @ib_port_info_get_link_speed_enabled(%struct.TYPE_21__* %79)
  store i64 %80, i64* %15, align 8
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %16, align 8
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %17, align 8
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %88 = call i64 @ib_port_info_get_port_state(%struct.TYPE_21__* %87)
  store i64 %88, i64* %18, align 8
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %90 = call i64 @ib_port_info_get_port_phys_state(%struct.TYPE_21__* %89)
  store i64 %90, i64* %19, align 8
  %91 = load i64, i64* %18, align 8
  %92 = load i64, i64* @IB_LINK_DOWN, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %76
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 28
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  br label %109

99:                                               ; preds = %76
  %100 = load i64, i64* %18, align 8
  %101 = load i64, i64* @IB_LINK_ACTIVE, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 27
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 8
  br label %108

108:                                              ; preds = %103, %99
  br label %109

109:                                              ; preds = %108, %94
  %110 = load i64, i64* %19, align 8
  %111 = load i64, i64* @IB_PORT_PHYS_STATE_DISABLED, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %130

113:                                              ; preds = %109
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 26
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @cl_ntoh64(i32 %119)
  %121 = load i64, i64* %10, align 8
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @__tag_port_report(i32* %115, i32 %120, i64 %121, i32 %124)
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 25
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 8
  br label %130

130:                                              ; preds = %113, %109
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 24
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 4
  %135 = load i64, i64* %18, align 8
  %136 = load i64, i64* @IB_LINK_DOWN, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %130
  br label %458

139:                                              ; preds = %130
  %140 = load i64, i64* %16, align 8
  %141 = load i64, i64* %17, align 8
  %142 = and i64 %140, %141
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %161, label %144

144:                                              ; preds = %139
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 23
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @cl_ntoh64(i32 %150)
  %152 = load i64, i64* %10, align 8
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @__tag_port_report(i32* %146, i32 %151, i64 %152, i32 %155)
  %157 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %157, i32 0, i32 22
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %158, align 4
  br label %185

161:                                              ; preds = %139
  %162 = load i64, i64* %17, align 8
  %163 = load i64, i64* %16, align 8
  %164 = xor i64 %162, %163
  %165 = load i64, i64* %16, align 8
  %166 = icmp sgt i64 %164, %165
  br i1 %166, label %167, label %184

167:                                              ; preds = %161
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %168, i32 0, i32 21
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @cl_ntoh64(i32 %173)
  %175 = load i64, i64* %10, align 8
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @__tag_port_report(i32* %169, i32 %174, i64 %175, i32 %178)
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %180, i32 0, i32 20
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %181, align 4
  br label %184

184:                                              ; preds = %167, %161
  br label %185

185:                                              ; preds = %184, %144
  %186 = load i64, i64* %14, align 8
  %187 = load i64, i64* %15, align 8
  %188 = and i64 %186, %187
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %207, label %190

190:                                              ; preds = %185
  %191 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %191, i32 0, i32 15
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @cl_ntoh64(i32 %196)
  %198 = load i64, i64* %10, align 8
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @__tag_port_report(i32* %192, i32 %197, i64 %198, i32 %201)
  %203 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %203, i32 0, i32 14
  %205 = load i32, i32* %204, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %204, align 4
  br label %231

207:                                              ; preds = %185
  %208 = load i64, i64* %15, align 8
  %209 = load i64, i64* %14, align 8
  %210 = xor i64 %208, %209
  %211 = load i64, i64* %14, align 8
  %212 = icmp sgt i64 %210, %211
  br i1 %212, label %213, label %230

213:                                              ; preds = %207
  %214 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %214, i32 0, i32 13
  %216 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @cl_ntoh64(i32 %219)
  %221 = load i64, i64* %10, align 8
  %222 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @__tag_port_report(i32* %215, i32 %220, i64 %221, i32 %224)
  %226 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %226, i32 0, i32 12
  %228 = load i32, i32* %227, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %227, align 4
  br label %230

230:                                              ; preds = %213, %207
  br label %231

231:                                              ; preds = %230, %190
  %232 = load i64, i64* %14, align 8
  switch i64 %232, label %298 [
    i64 138, label %233
    i64 137, label %238
    i64 139, label %243
    i64 136, label %297
  ]

233:                                              ; preds = %231
  %234 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %234, i32 0, i32 19
  %236 = load i32, i32* %235, align 8
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %235, align 8
  br label %315

238:                                              ; preds = %231
  %239 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %239, i32 0, i32 18
  %241 = load i32, i32* %240, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %240, align 4
  br label %315

243:                                              ; preds = %231
  %244 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @IB_PORT_CAP_HAS_EXT_SPEEDS, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %243
  %251 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %252 = call i64 @ib_port_info_get_link_speed_ext_active(%struct.TYPE_21__* %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %296, label %254

254:                                              ; preds = %250, %243
  %255 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %256 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @FDR10, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %266

261:                                              ; preds = %254
  %262 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %262, i32 0, i32 17
  %264 = load i32, i32* %263, align 8
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %263, align 8
  br label %295

266:                                              ; preds = %254
  %267 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %267, i32 0, i32 16
  %269 = load i32, i32* %268, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %268, align 4
  %271 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %272 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* @FDR10, align 4
  %275 = and i32 %273, %274
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %294

277:                                              ; preds = %266
  %278 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %278, i32 0, i32 13
  %280 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 8
  %284 = call i32 @cl_ntoh64(i32 %283)
  %285 = load i64, i64* %10, align 8
  %286 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = call i32 @__tag_port_report(i32* %279, i32 %284, i64 %285, i32 %288)
  %290 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %290, i32 0, i32 12
  %292 = load i32, i32* %291, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %291, align 4
  br label %294

294:                                              ; preds = %277, %266
  br label %295

295:                                              ; preds = %294, %261
  br label %296

296:                                              ; preds = %295, %250
  br label %315

297:                                              ; preds = %231
  br label %315

298:                                              ; preds = %231
  %299 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %299, i32 0, i32 9
  %301 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %302 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 8
  %305 = call i32 @cl_ntoh64(i32 %304)
  %306 = load i64, i64* %10, align 8
  %307 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %308 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = call i32 @__tag_port_report(i32* %300, i32 %305, i64 %306, i32 %309)
  %311 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %312 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %311, i32 0, i32 8
  %313 = load i32, i32* %312, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %312, align 4
  br label %315

315:                                              ; preds = %298, %297, %296, %238, %233
  %316 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %317 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 8
  %319 = load i32, i32* @IB_PORT_CAP_HAS_EXT_SPEEDS, align 4
  %320 = and i32 %318, %319
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %413

322:                                              ; preds = %315
  %323 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %324 = call i64 @ib_port_info_get_link_speed_ext_sup(%struct.TYPE_21__* %323)
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %413

326:                                              ; preds = %322
  %327 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %328 = call i64 @ib_port_info_get_link_speed_ext_enabled(%struct.TYPE_21__* %327)
  store i64 %328, i64* %15, align 8
  %329 = load i64, i64* @IB_LINK_SPEED_EXT_DISABLE, align 8
  %330 = icmp ne i64 %328, %329
  br i1 %330, label %331, label %413

331:                                              ; preds = %326
  %332 = load i64, i64* %14, align 8
  %333 = icmp eq i64 %332, 139
  br i1 %333, label %334, label %413

334:                                              ; preds = %331
  %335 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %336 = call i64 @ib_port_info_get_link_speed_ext_active(%struct.TYPE_21__* %335)
  store i64 %336, i64* %14, align 8
  %337 = load i64, i64* %14, align 8
  %338 = load i64, i64* %15, align 8
  %339 = and i64 %337, %338
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %358, label %341

341:                                              ; preds = %334
  %342 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %343 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %342, i32 0, i32 15
  %344 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %345 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %344, i32 0, i32 1
  %346 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 8
  %348 = call i32 @cl_ntoh64(i32 %347)
  %349 = load i64, i64* %10, align 8
  %350 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %351 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = call i32 @__tag_port_report(i32* %343, i32 %348, i64 %349, i32 %352)
  %354 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %355 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %354, i32 0, i32 14
  %356 = load i32, i32* %355, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %355, align 4
  br label %382

358:                                              ; preds = %334
  %359 = load i64, i64* %15, align 8
  %360 = load i64, i64* %14, align 8
  %361 = xor i64 %359, %360
  %362 = load i64, i64* %14, align 8
  %363 = icmp sgt i64 %361, %362
  br i1 %363, label %364, label %381

364:                                              ; preds = %358
  %365 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %366 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %365, i32 0, i32 13
  %367 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %368 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %367, i32 0, i32 1
  %369 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 8
  %371 = call i32 @cl_ntoh64(i32 %370)
  %372 = load i64, i64* %10, align 8
  %373 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %374 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = call i32 @__tag_port_report(i32* %366, i32 %371, i64 %372, i32 %375)
  %377 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %378 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %377, i32 0, i32 12
  %379 = load i32, i32* %378, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %378, align 4
  br label %381

381:                                              ; preds = %364, %358
  br label %382

382:                                              ; preds = %381, %341
  %383 = load i64, i64* %14, align 8
  switch i64 %383, label %395 [
    i64 135, label %384
    i64 134, label %389
    i64 133, label %394
  ]

384:                                              ; preds = %382
  %385 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %386 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %385, i32 0, i32 11
  %387 = load i32, i32* %386, align 8
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %386, align 8
  br label %412

389:                                              ; preds = %382
  %390 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %391 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %390, i32 0, i32 10
  %392 = load i32, i32* %391, align 4
  %393 = add nsw i32 %392, 1
  store i32 %393, i32* %391, align 4
  br label %412

394:                                              ; preds = %382
  br label %412

395:                                              ; preds = %382
  %396 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %397 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %396, i32 0, i32 9
  %398 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %399 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %398, i32 0, i32 1
  %400 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %399, i32 0, i32 1
  %401 = load i32, i32* %400, align 8
  %402 = call i32 @cl_ntoh64(i32 %401)
  %403 = load i64, i64* %10, align 8
  %404 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %405 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 8
  %407 = call i32 @__tag_port_report(i32* %397, i32 %402, i64 %403, i32 %406)
  %408 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %409 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %408, i32 0, i32 8
  %410 = load i32, i32* %409, align 4
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* %409, align 4
  br label %412

412:                                              ; preds = %395, %394, %389, %384
  br label %413

413:                                              ; preds = %412, %331, %326, %322, %315
  %414 = load i64, i64* %16, align 8
  switch i64 %414, label %440 [
    i64 131, label %415
    i64 129, label %420
    i64 128, label %425
    i64 132, label %430
    i64 130, label %435
  ]

415:                                              ; preds = %413
  %416 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %417 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %416, i32 0, i32 7
  %418 = load i32, i32* %417, align 8
  %419 = add nsw i32 %418, 1
  store i32 %419, i32* %417, align 8
  br label %457

420:                                              ; preds = %413
  %421 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %422 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %421, i32 0, i32 6
  %423 = load i32, i32* %422, align 4
  %424 = add nsw i32 %423, 1
  store i32 %424, i32* %422, align 4
  br label %457

425:                                              ; preds = %413
  %426 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %427 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %426, i32 0, i32 5
  %428 = load i32, i32* %427, align 8
  %429 = add nsw i32 %428, 1
  store i32 %429, i32* %427, align 8
  br label %457

430:                                              ; preds = %413
  %431 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %432 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %431, i32 0, i32 4
  %433 = load i32, i32* %432, align 4
  %434 = add nsw i32 %433, 1
  store i32 %434, i32* %432, align 4
  br label %457

435:                                              ; preds = %413
  %436 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %437 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %436, i32 0, i32 3
  %438 = load i32, i32* %437, align 8
  %439 = add nsw i32 %438, 1
  store i32 %439, i32* %437, align 8
  br label %457

440:                                              ; preds = %413
  %441 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %442 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %441, i32 0, i32 2
  %443 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %444 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %443, i32 0, i32 1
  %445 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %444, i32 0, i32 1
  %446 = load i32, i32* %445, align 8
  %447 = call i32 @cl_ntoh64(i32 %446)
  %448 = load i64, i64* %10, align 8
  %449 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %450 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %449, i32 0, i32 0
  %451 = load i32, i32* %450, align 8
  %452 = call i32 @__tag_port_report(i32* %442, i32 %447, i64 %448, i32 %451)
  %453 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %454 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %453, i32 0, i32 1
  %455 = load i32, i32* %454, align 8
  %456 = add nsw i32 %455, 1
  store i32 %456, i32* %454, align 8
  br label %457

457:                                              ; preds = %440, %435, %430, %425, %420, %415
  br label %458

458:                                              ; preds = %457, %138, %66
  %459 = load i64, i64* %10, align 8
  %460 = add nsw i64 %459, 1
  store i64 %460, i64* %10, align 8
  br label %56

461:                                              ; preds = %39, %56
  ret void
}

declare dso_local i64 @osm_node_get_num_physp(%struct.TYPE_20__*) #1

declare dso_local i64 @osm_node_get_type(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_19__* @osm_node_get_physp_ptr(%struct.TYPE_20__*, i64) #1

declare dso_local i64 @ib_port_info_get_link_speed_active(%struct.TYPE_21__*) #1

declare dso_local i64 @ib_port_info_get_link_speed_enabled(%struct.TYPE_21__*) #1

declare dso_local i64 @ib_port_info_get_port_state(%struct.TYPE_21__*) #1

declare dso_local i64 @ib_port_info_get_port_phys_state(%struct.TYPE_21__*) #1

declare dso_local i32 @__tag_port_report(i32*, i32, i64, i32) #1

declare dso_local i32 @cl_ntoh64(i32) #1

declare dso_local i64 @ib_port_info_get_link_speed_ext_active(%struct.TYPE_21__*) #1

declare dso_local i64 @ib_port_info_get_link_speed_ext_sup(%struct.TYPE_21__*) #1

declare dso_local i64 @ib_port_info_get_link_speed_ext_enabled(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
