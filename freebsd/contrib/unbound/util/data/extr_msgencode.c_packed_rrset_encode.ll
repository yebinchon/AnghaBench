; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgencode.c_packed_rrset_encode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgencode.c_packed_rrset_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_packed_rrset_key = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32, i64, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.regional = type { i32 }
%struct.compress_tree_node = type { i32 }
%struct.packed_rrset_data = type { i64, i64*, i64**, i32*, i64 }

@RETVAL_OK = common dso_local global i32 0, align 4
@PACKED_RRSET_FIXEDTTL = common dso_local global i32 0, align 4
@RETVAL_TRUNC = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_RRSIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ub_packed_rrset_key*, i32*, i64*, i64, %struct.regional*, i32, i32, %struct.compress_tree_node**, i32, i64, i32, i64)* @packed_rrset_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packed_rrset_encode(%struct.ub_packed_rrset_key* %0, i32* %1, i64* %2, i64 %3, %struct.regional* %4, i32 %5, i32 %6, %struct.compress_tree_node** %7, i32 %8, i64 %9, i32 %10, i64 %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca %struct.ub_packed_rrset_key*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.regional*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.compress_tree_node**, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i64, align 8
  %32 = alloca %struct.packed_rrset_data*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i64, align 8
  store %struct.ub_packed_rrset_key* %0, %struct.ub_packed_rrset_key** %14, align 8
  store i32* %1, i32** %15, align 8
  store i64* %2, i64** %16, align 8
  store i64 %3, i64* %17, align 8
  store %struct.regional* %4, %struct.regional** %18, align 8
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store %struct.compress_tree_node** %7, %struct.compress_tree_node*** %21, align 8
  store i32 %8, i32* %22, align 4
  store i64 %9, i64* %23, align 8
  store i32 %10, i32* %24, align 4
  store i64 %11, i64* %25, align 8
  store i64 0, i64* %31, align 8
  %35 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %36 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %39, %struct.packed_rrset_data** %32, align 8
  %40 = load i32, i32* %22, align 4
  %41 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %42 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @ntohs(i64 %44)
  %46 = load i64, i64* %23, align 8
  %47 = load i32, i32* %24, align 4
  %48 = call i32 @rrset_belongs_in_reply(i32 %40, i32 %45, i64 %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %12
  %51 = load i32, i32* @RETVAL_OK, align 4
  store i32 %51, i32* %13, align 4
  br label %336

52:                                               ; preds = %12
  %53 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %54 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @dname_count_labels(i32 %56)
  store i32 %57, i32* %30, align 4
  %58 = load i32*, i32** %15, align 8
  %59 = call i64 @sldns_buffer_position(i32* %58)
  store i64 %59, i64* %28, align 8
  %60 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %61 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @PACKED_RRSET_FIXEDTTL, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %52
  store i64 0, i64* %17, align 8
  br label %68

68:                                               ; preds = %67, %52
  %69 = load i32, i32* %19, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %190

71:                                               ; preds = %68
  %72 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %73 = call i32* @type_rdata_compressable(%struct.ub_packed_rrset_key* %72)
  store i32* %73, i32** %33, align 8
  store i64 0, i64* %26, align 8
  br label %74

74:                                               ; preds = %186, %71
  %75 = load i64, i64* %26, align 8
  %76 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %32, align 8
  %77 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ult i64 %75, %78
  br i1 %79, label %80, label %189

80:                                               ; preds = %74
  %81 = load i64, i64* %26, align 8
  %82 = load i64, i64* %25, align 8
  %83 = add i64 %81, %82
  %84 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %32, align 8
  %85 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = urem i64 %83, %86
  store i64 %87, i64* %27, align 8
  %88 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %89 = load i32*, i32** %15, align 8
  %90 = load %struct.regional*, %struct.regional** %18, align 8
  %91 = load %struct.compress_tree_node**, %struct.compress_tree_node*** %21, align 8
  %92 = load i64, i64* %28, align 8
  %93 = load i32, i32* %30, align 4
  %94 = call i32 @compress_owner(%struct.ub_packed_rrset_key* %88, i32* %89, %struct.regional* %90, %struct.compress_tree_node** %91, i64 %92, i64* %31, i32 %93)
  store i32 %94, i32* %29, align 4
  %95 = load i32, i32* @RETVAL_OK, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %80
  %98 = load i32, i32* %29, align 4
  store i32 %98, i32* %13, align 4
  br label %336

99:                                               ; preds = %80
  %100 = load i32*, i32** %15, align 8
  %101 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %102 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = call i32 @sldns_buffer_write(i32* %100, i64* %103, i32 2)
  %105 = load i32*, i32** %15, align 8
  %106 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %107 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  %109 = call i32 @sldns_buffer_write(i32* %105, i64* %108, i32 2)
  %110 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %32, align 8
  %111 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %110, i32 0, i32 1
  %112 = load i64*, i64** %111, align 8
  %113 = load i64, i64* %27, align 8
  %114 = getelementptr inbounds i64, i64* %112, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %17, align 8
  %117 = icmp slt i64 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %99
  %119 = load i32*, i32** %15, align 8
  %120 = call i32 @sldns_buffer_write_u32(i32* %119, i64 0)
  br label %132

121:                                              ; preds = %99
  %122 = load i32*, i32** %15, align 8
  %123 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %32, align 8
  %124 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %123, i32 0, i32 1
  %125 = load i64*, i64** %124, align 8
  %126 = load i64, i64* %27, align 8
  %127 = getelementptr inbounds i64, i64* %125, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* %17, align 8
  %130 = sub nsw i64 %128, %129
  %131 = call i32 @sldns_buffer_write_u32(i32* %122, i64 %130)
  br label %132

132:                                              ; preds = %121, %118
  %133 = load i32*, i32** %33, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %135, label %158

135:                                              ; preds = %132
  %136 = load i32*, i32** %15, align 8
  %137 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %32, align 8
  %138 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %137, i32 0, i32 2
  %139 = load i64**, i64*** %138, align 8
  %140 = load i64, i64* %27, align 8
  %141 = getelementptr inbounds i64*, i64** %139, i64 %140
  %142 = load i64*, i64** %141, align 8
  %143 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %32, align 8
  %144 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %143, i32 0, i32 3
  %145 = load i32*, i32** %144, align 8
  %146 = load i64, i64* %27, align 8
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.regional*, %struct.regional** %18, align 8
  %150 = load %struct.compress_tree_node**, %struct.compress_tree_node*** %21, align 8
  %151 = load i32*, i32** %33, align 8
  %152 = call i32 @compress_rdata(i32* %136, i64* %142, i32 %148, %struct.regional* %149, %struct.compress_tree_node** %150, i32* %151)
  store i32 %152, i32* %29, align 4
  %153 = load i32, i32* @RETVAL_OK, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %135
  %156 = load i32, i32* %29, align 4
  store i32 %156, i32* %13, align 4
  br label %336

157:                                              ; preds = %135
  br label %185

158:                                              ; preds = %132
  %159 = load i32*, i32** %15, align 8
  %160 = call i32 @sldns_buffer_remaining(i32* %159)
  %161 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %32, align 8
  %162 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %161, i32 0, i32 3
  %163 = load i32*, i32** %162, align 8
  %164 = load i64, i64* %27, align 8
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = icmp slt i32 %160, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %158
  %169 = load i32, i32* @RETVAL_TRUNC, align 4
  store i32 %169, i32* %13, align 4
  br label %336

170:                                              ; preds = %158
  %171 = load i32*, i32** %15, align 8
  %172 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %32, align 8
  %173 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %172, i32 0, i32 2
  %174 = load i64**, i64*** %173, align 8
  %175 = load i64, i64* %27, align 8
  %176 = getelementptr inbounds i64*, i64** %174, i64 %175
  %177 = load i64*, i64** %176, align 8
  %178 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %32, align 8
  %179 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %178, i32 0, i32 3
  %180 = load i32*, i32** %179, align 8
  %181 = load i64, i64* %27, align 8
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @sldns_buffer_write(i32* %171, i64* %177, i32 %183)
  br label %185

185:                                              ; preds = %170, %157
  br label %186

186:                                              ; preds = %185
  %187 = load i64, i64* %26, align 8
  %188 = add i64 %187, 1
  store i64 %188, i64* %26, align 8
  br label %74

189:                                              ; preds = %74
  br label %190

190:                                              ; preds = %189, %68
  %191 = load i32, i32* %20, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %311

193:                                              ; preds = %190
  %194 = load i32, i32* %24, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %311

196:                                              ; preds = %193
  %197 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %32, align 8
  %198 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %32, align 8
  %201 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %200, i32 0, i32 4
  %202 = load i64, i64* %201, align 8
  %203 = add i64 %199, %202
  store i64 %203, i64* %34, align 8
  %204 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %32, align 8
  %205 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  store i64 %206, i64* %26, align 8
  br label %207

207:                                              ; preds = %307, %196
  %208 = load i64, i64* %26, align 8
  %209 = load i64, i64* %34, align 8
  %210 = icmp ult i64 %208, %209
  br i1 %210, label %211, label %310

211:                                              ; preds = %207
  %212 = load i64, i64* %31, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %233

214:                                              ; preds = %211
  %215 = load i32, i32* %30, align 4
  %216 = icmp ne i32 %215, 1
  br i1 %216, label %217, label %233

217:                                              ; preds = %214
  %218 = load i32*, i32** %15, align 8
  %219 = call i32 @sldns_buffer_remaining(i32* %218)
  %220 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %32, align 8
  %221 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %220, i32 0, i32 3
  %222 = load i32*, i32** %221, align 8
  %223 = load i64, i64* %26, align 8
  %224 = getelementptr inbounds i32, i32* %222, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = add nsw i32 10, %225
  %227 = icmp slt i32 %219, %226
  br i1 %227, label %228, label %230

228:                                              ; preds = %217
  %229 = load i32, i32* @RETVAL_TRUNC, align 4
  store i32 %229, i32* %13, align 4
  br label %336

230:                                              ; preds = %217
  %231 = load i32*, i32** %15, align 8
  %232 = call i32 @sldns_buffer_write(i32* %231, i64* %31, i32 2)
  br label %261

233:                                              ; preds = %214, %211
  %234 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %235 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 8
  %238 = load i32*, i32** %15, align 8
  %239 = load i32, i32* %30, align 4
  %240 = load %struct.regional*, %struct.regional** %18, align 8
  %241 = load %struct.compress_tree_node**, %struct.compress_tree_node*** %21, align 8
  %242 = call i32 @compress_any_dname(i32 %237, i32* %238, i32 %239, %struct.regional* %240, %struct.compress_tree_node** %241)
  store i32 %242, i32* %29, align 4
  %243 = load i32, i32* @RETVAL_OK, align 4
  %244 = icmp ne i32 %242, %243
  br i1 %244, label %245, label %247

245:                                              ; preds = %233
  %246 = load i32, i32* %29, align 4
  store i32 %246, i32* %13, align 4
  br label %336

247:                                              ; preds = %233
  %248 = load i32*, i32** %15, align 8
  %249 = call i32 @sldns_buffer_remaining(i32* %248)
  %250 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %32, align 8
  %251 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %250, i32 0, i32 3
  %252 = load i32*, i32** %251, align 8
  %253 = load i64, i64* %26, align 8
  %254 = getelementptr inbounds i32, i32* %252, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = add nsw i32 8, %255
  %257 = icmp slt i32 %249, %256
  br i1 %257, label %258, label %260

258:                                              ; preds = %247
  %259 = load i32, i32* @RETVAL_TRUNC, align 4
  store i32 %259, i32* %13, align 4
  br label %336

260:                                              ; preds = %247
  br label %261

261:                                              ; preds = %260, %230
  %262 = load i32*, i32** %15, align 8
  %263 = load i32, i32* @LDNS_RR_TYPE_RRSIG, align 4
  %264 = call i32 @sldns_buffer_write_u16(i32* %262, i32 %263)
  %265 = load i32*, i32** %15, align 8
  %266 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, align 8
  %267 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 2
  %269 = call i32 @sldns_buffer_write(i32* %265, i64* %268, i32 2)
  %270 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %32, align 8
  %271 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %270, i32 0, i32 1
  %272 = load i64*, i64** %271, align 8
  %273 = load i64, i64* %26, align 8
  %274 = getelementptr inbounds i64, i64* %272, i64 %273
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* %17, align 8
  %277 = icmp slt i64 %275, %276
  br i1 %277, label %278, label %281

278:                                              ; preds = %261
  %279 = load i32*, i32** %15, align 8
  %280 = call i32 @sldns_buffer_write_u32(i32* %279, i64 0)
  br label %292

281:                                              ; preds = %261
  %282 = load i32*, i32** %15, align 8
  %283 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %32, align 8
  %284 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %283, i32 0, i32 1
  %285 = load i64*, i64** %284, align 8
  %286 = load i64, i64* %26, align 8
  %287 = getelementptr inbounds i64, i64* %285, i64 %286
  %288 = load i64, i64* %287, align 8
  %289 = load i64, i64* %17, align 8
  %290 = sub nsw i64 %288, %289
  %291 = call i32 @sldns_buffer_write_u32(i32* %282, i64 %290)
  br label %292

292:                                              ; preds = %281, %278
  %293 = load i32*, i32** %15, align 8
  %294 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %32, align 8
  %295 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %294, i32 0, i32 2
  %296 = load i64**, i64*** %295, align 8
  %297 = load i64, i64* %26, align 8
  %298 = getelementptr inbounds i64*, i64** %296, i64 %297
  %299 = load i64*, i64** %298, align 8
  %300 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %32, align 8
  %301 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %300, i32 0, i32 3
  %302 = load i32*, i32** %301, align 8
  %303 = load i64, i64* %26, align 8
  %304 = getelementptr inbounds i32, i32* %302, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = call i32 @sldns_buffer_write(i32* %293, i64* %299, i32 %305)
  br label %307

307:                                              ; preds = %292
  %308 = load i64, i64* %26, align 8
  %309 = add i64 %308, 1
  store i64 %309, i64* %26, align 8
  br label %207

310:                                              ; preds = %207
  br label %311

311:                                              ; preds = %310, %193, %190
  %312 = load i32, i32* %19, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %321

314:                                              ; preds = %311
  %315 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %32, align 8
  %316 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = load i64*, i64** %16, align 8
  %319 = load i64, i64* %318, align 8
  %320 = add i64 %319, %317
  store i64 %320, i64* %318, align 8
  br label %321

321:                                              ; preds = %314, %311
  %322 = load i32, i32* %20, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %334

324:                                              ; preds = %321
  %325 = load i32, i32* %24, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %334

327:                                              ; preds = %324
  %328 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %32, align 8
  %329 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %328, i32 0, i32 4
  %330 = load i64, i64* %329, align 8
  %331 = load i64*, i64** %16, align 8
  %332 = load i64, i64* %331, align 8
  %333 = add i64 %332, %330
  store i64 %333, i64* %331, align 8
  br label %334

334:                                              ; preds = %327, %324, %321
  %335 = load i32, i32* @RETVAL_OK, align 4
  store i32 %335, i32* %13, align 4
  br label %336

336:                                              ; preds = %334, %258, %245, %228, %168, %155, %97, %50
  %337 = load i32, i32* %13, align 4
  ret i32 %337
}

declare dso_local i32 @rrset_belongs_in_reply(i32, i32, i64, i32) #1

declare dso_local i32 @ntohs(i64) #1

declare dso_local i32 @dname_count_labels(i32) #1

declare dso_local i64 @sldns_buffer_position(i32*) #1

declare dso_local i32* @type_rdata_compressable(%struct.ub_packed_rrset_key*) #1

declare dso_local i32 @compress_owner(%struct.ub_packed_rrset_key*, i32*, %struct.regional*, %struct.compress_tree_node**, i64, i64*, i32) #1

declare dso_local i32 @sldns_buffer_write(i32*, i64*, i32) #1

declare dso_local i32 @sldns_buffer_write_u32(i32*, i64) #1

declare dso_local i32 @compress_rdata(i32*, i64*, i32, %struct.regional*, %struct.compress_tree_node**, i32*) #1

declare dso_local i32 @sldns_buffer_remaining(i32*) #1

declare dso_local i32 @compress_any_dname(i32, i32*, i32, %struct.regional*, %struct.compress_tree_node**) #1

declare dso_local i32 @sldns_buffer_write_u16(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
