; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_check_tlinks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_check_tlinks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.torus = type { i32, i32, i32, %struct.t_switch**** }
%struct.t_switch = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.torus*, i32, i32, i32)* @check_tlinks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_tlinks(%struct.torus* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.torus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.t_switch****, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.torus* %0, %struct.torus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.torus*, %struct.torus** %5, align 8
  %14 = getelementptr inbounds %struct.torus, %struct.torus* %13, i32 0, i32 3
  %15 = load %struct.t_switch****, %struct.t_switch***** %14, align 8
  store %struct.t_switch**** %15, %struct.t_switch***** %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 1
  %18 = load %struct.torus*, %struct.torus** %5, align 8
  %19 = getelementptr inbounds %struct.torus, %struct.torus* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @canonicalize(i32 %17, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 1
  %24 = load %struct.torus*, %struct.torus** %5, align 8
  %25 = getelementptr inbounds %struct.torus, %struct.torus* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @canonicalize(i32 %23, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 1
  %30 = load %struct.torus*, %struct.torus** %5, align 8
  %31 = getelementptr inbounds %struct.torus, %struct.torus* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @canonicalize(i32 %29, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load %struct.t_switch****, %struct.t_switch***** %9, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %34, i64 %36
  %38 = load %struct.t_switch***, %struct.t_switch**** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %38, i64 %40
  %42 = load %struct.t_switch**, %struct.t_switch*** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %42, i64 %44
  %46 = load %struct.t_switch*, %struct.t_switch** %45, align 8
  %47 = icmp ne %struct.t_switch* %46, null
  br i1 %47, label %48, label %92

48:                                               ; preds = %4
  %49 = load %struct.t_switch****, %struct.t_switch***** %9, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %49, i64 %51
  %53 = load %struct.t_switch***, %struct.t_switch**** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %53, i64 %55
  %57 = load %struct.t_switch**, %struct.t_switch*** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %57, i64 %59
  %61 = load %struct.t_switch*, %struct.t_switch** %60, align 8
  %62 = icmp ne %struct.t_switch* %61, null
  br i1 %62, label %63, label %92

63:                                               ; preds = %48
  %64 = load %struct.torus*, %struct.torus** %5, align 8
  %65 = load %struct.t_switch****, %struct.t_switch***** %9, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %65, i64 %67
  %69 = load %struct.t_switch***, %struct.t_switch**** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %69, i64 %71
  %73 = load %struct.t_switch**, %struct.t_switch*** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %73, i64 %75
  %77 = load %struct.t_switch*, %struct.t_switch** %76, align 8
  %78 = load %struct.t_switch****, %struct.t_switch***** %9, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %78, i64 %80
  %82 = load %struct.t_switch***, %struct.t_switch**** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %82, i64 %84
  %86 = load %struct.t_switch**, %struct.t_switch*** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %86, i64 %88
  %90 = load %struct.t_switch*, %struct.t_switch** %89, align 8
  %91 = call i32 @link_tswitches(%struct.torus* %64, i32 0, %struct.t_switch* %77, %struct.t_switch* %90)
  br label %92

92:                                               ; preds = %63, %48, %4
  %93 = load %struct.t_switch****, %struct.t_switch***** %9, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %93, i64 %95
  %97 = load %struct.t_switch***, %struct.t_switch**** %96, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %97, i64 %99
  %101 = load %struct.t_switch**, %struct.t_switch*** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %101, i64 %103
  %105 = load %struct.t_switch*, %struct.t_switch** %104, align 8
  %106 = icmp ne %struct.t_switch* %105, null
  br i1 %106, label %107, label %151

107:                                              ; preds = %92
  %108 = load %struct.t_switch****, %struct.t_switch***** %9, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %108, i64 %110
  %112 = load %struct.t_switch***, %struct.t_switch**** %111, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %112, i64 %114
  %116 = load %struct.t_switch**, %struct.t_switch*** %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %116, i64 %118
  %120 = load %struct.t_switch*, %struct.t_switch** %119, align 8
  %121 = icmp ne %struct.t_switch* %120, null
  br i1 %121, label %122, label %151

122:                                              ; preds = %107
  %123 = load %struct.torus*, %struct.torus** %5, align 8
  %124 = load %struct.t_switch****, %struct.t_switch***** %9, align 8
  %125 = load i32, i32* %6, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %124, i64 %126
  %128 = load %struct.t_switch***, %struct.t_switch**** %127, align 8
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %128, i64 %130
  %132 = load %struct.t_switch**, %struct.t_switch*** %131, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %132, i64 %134
  %136 = load %struct.t_switch*, %struct.t_switch** %135, align 8
  %137 = load %struct.t_switch****, %struct.t_switch***** %9, align 8
  %138 = load i32, i32* %10, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %137, i64 %139
  %141 = load %struct.t_switch***, %struct.t_switch**** %140, align 8
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %141, i64 %143
  %145 = load %struct.t_switch**, %struct.t_switch*** %144, align 8
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %145, i64 %147
  %149 = load %struct.t_switch*, %struct.t_switch** %148, align 8
  %150 = call i32 @link_tswitches(%struct.torus* %123, i32 0, %struct.t_switch* %136, %struct.t_switch* %149)
  br label %151

151:                                              ; preds = %122, %107, %92
  %152 = load %struct.t_switch****, %struct.t_switch***** %9, align 8
  %153 = load i32, i32* %6, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %152, i64 %154
  %156 = load %struct.t_switch***, %struct.t_switch**** %155, align 8
  %157 = load i32, i32* %7, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %156, i64 %158
  %160 = load %struct.t_switch**, %struct.t_switch*** %159, align 8
  %161 = load i32, i32* %12, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %160, i64 %162
  %164 = load %struct.t_switch*, %struct.t_switch** %163, align 8
  %165 = icmp ne %struct.t_switch* %164, null
  br i1 %165, label %166, label %210

166:                                              ; preds = %151
  %167 = load %struct.t_switch****, %struct.t_switch***** %9, align 8
  %168 = load i32, i32* %10, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %167, i64 %169
  %171 = load %struct.t_switch***, %struct.t_switch**** %170, align 8
  %172 = load i32, i32* %7, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %171, i64 %173
  %175 = load %struct.t_switch**, %struct.t_switch*** %174, align 8
  %176 = load i32, i32* %12, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %175, i64 %177
  %179 = load %struct.t_switch*, %struct.t_switch** %178, align 8
  %180 = icmp ne %struct.t_switch* %179, null
  br i1 %180, label %181, label %210

181:                                              ; preds = %166
  %182 = load %struct.torus*, %struct.torus** %5, align 8
  %183 = load %struct.t_switch****, %struct.t_switch***** %9, align 8
  %184 = load i32, i32* %6, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %183, i64 %185
  %187 = load %struct.t_switch***, %struct.t_switch**** %186, align 8
  %188 = load i32, i32* %7, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %187, i64 %189
  %191 = load %struct.t_switch**, %struct.t_switch*** %190, align 8
  %192 = load i32, i32* %12, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %191, i64 %193
  %195 = load %struct.t_switch*, %struct.t_switch** %194, align 8
  %196 = load %struct.t_switch****, %struct.t_switch***** %9, align 8
  %197 = load i32, i32* %10, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %196, i64 %198
  %200 = load %struct.t_switch***, %struct.t_switch**** %199, align 8
  %201 = load i32, i32* %7, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %200, i64 %202
  %204 = load %struct.t_switch**, %struct.t_switch*** %203, align 8
  %205 = load i32, i32* %12, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %204, i64 %206
  %208 = load %struct.t_switch*, %struct.t_switch** %207, align 8
  %209 = call i32 @link_tswitches(%struct.torus* %182, i32 0, %struct.t_switch* %195, %struct.t_switch* %208)
  br label %210

210:                                              ; preds = %181, %166, %151
  %211 = load %struct.t_switch****, %struct.t_switch***** %9, align 8
  %212 = load i32, i32* %6, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %211, i64 %213
  %215 = load %struct.t_switch***, %struct.t_switch**** %214, align 8
  %216 = load i32, i32* %11, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %215, i64 %217
  %219 = load %struct.t_switch**, %struct.t_switch*** %218, align 8
  %220 = load i32, i32* %12, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %219, i64 %221
  %223 = load %struct.t_switch*, %struct.t_switch** %222, align 8
  %224 = icmp ne %struct.t_switch* %223, null
  br i1 %224, label %225, label %269

225:                                              ; preds = %210
  %226 = load %struct.t_switch****, %struct.t_switch***** %9, align 8
  %227 = load i32, i32* %10, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %226, i64 %228
  %230 = load %struct.t_switch***, %struct.t_switch**** %229, align 8
  %231 = load i32, i32* %11, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %230, i64 %232
  %234 = load %struct.t_switch**, %struct.t_switch*** %233, align 8
  %235 = load i32, i32* %12, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %234, i64 %236
  %238 = load %struct.t_switch*, %struct.t_switch** %237, align 8
  %239 = icmp ne %struct.t_switch* %238, null
  br i1 %239, label %240, label %269

240:                                              ; preds = %225
  %241 = load %struct.torus*, %struct.torus** %5, align 8
  %242 = load %struct.t_switch****, %struct.t_switch***** %9, align 8
  %243 = load i32, i32* %6, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %242, i64 %244
  %246 = load %struct.t_switch***, %struct.t_switch**** %245, align 8
  %247 = load i32, i32* %11, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %246, i64 %248
  %250 = load %struct.t_switch**, %struct.t_switch*** %249, align 8
  %251 = load i32, i32* %12, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %250, i64 %252
  %254 = load %struct.t_switch*, %struct.t_switch** %253, align 8
  %255 = load %struct.t_switch****, %struct.t_switch***** %9, align 8
  %256 = load i32, i32* %10, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %255, i64 %257
  %259 = load %struct.t_switch***, %struct.t_switch**** %258, align 8
  %260 = load i32, i32* %11, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %259, i64 %261
  %263 = load %struct.t_switch**, %struct.t_switch*** %262, align 8
  %264 = load i32, i32* %12, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %263, i64 %265
  %267 = load %struct.t_switch*, %struct.t_switch** %266, align 8
  %268 = call i32 @link_tswitches(%struct.torus* %241, i32 0, %struct.t_switch* %254, %struct.t_switch* %267)
  br label %269

269:                                              ; preds = %240, %225, %210
  %270 = load %struct.t_switch****, %struct.t_switch***** %9, align 8
  %271 = load i32, i32* %6, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %270, i64 %272
  %274 = load %struct.t_switch***, %struct.t_switch**** %273, align 8
  %275 = load i32, i32* %7, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %274, i64 %276
  %278 = load %struct.t_switch**, %struct.t_switch*** %277, align 8
  %279 = load i32, i32* %8, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %278, i64 %280
  %282 = load %struct.t_switch*, %struct.t_switch** %281, align 8
  %283 = icmp ne %struct.t_switch* %282, null
  br i1 %283, label %284, label %328

284:                                              ; preds = %269
  %285 = load %struct.t_switch****, %struct.t_switch***** %9, align 8
  %286 = load i32, i32* %6, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %285, i64 %287
  %289 = load %struct.t_switch***, %struct.t_switch**** %288, align 8
  %290 = load i32, i32* %11, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %289, i64 %291
  %293 = load %struct.t_switch**, %struct.t_switch*** %292, align 8
  %294 = load i32, i32* %8, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %293, i64 %295
  %297 = load %struct.t_switch*, %struct.t_switch** %296, align 8
  %298 = icmp ne %struct.t_switch* %297, null
  br i1 %298, label %299, label %328

299:                                              ; preds = %284
  %300 = load %struct.torus*, %struct.torus** %5, align 8
  %301 = load %struct.t_switch****, %struct.t_switch***** %9, align 8
  %302 = load i32, i32* %6, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %301, i64 %303
  %305 = load %struct.t_switch***, %struct.t_switch**** %304, align 8
  %306 = load i32, i32* %7, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %305, i64 %307
  %309 = load %struct.t_switch**, %struct.t_switch*** %308, align 8
  %310 = load i32, i32* %8, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %309, i64 %311
  %313 = load %struct.t_switch*, %struct.t_switch** %312, align 8
  %314 = load %struct.t_switch****, %struct.t_switch***** %9, align 8
  %315 = load i32, i32* %6, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %314, i64 %316
  %318 = load %struct.t_switch***, %struct.t_switch**** %317, align 8
  %319 = load i32, i32* %11, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %318, i64 %320
  %322 = load %struct.t_switch**, %struct.t_switch*** %321, align 8
  %323 = load i32, i32* %8, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %322, i64 %324
  %326 = load %struct.t_switch*, %struct.t_switch** %325, align 8
  %327 = call i32 @link_tswitches(%struct.torus* %300, i32 1, %struct.t_switch* %313, %struct.t_switch* %326)
  br label %328

328:                                              ; preds = %299, %284, %269
  %329 = load %struct.t_switch****, %struct.t_switch***** %9, align 8
  %330 = load i32, i32* %10, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %329, i64 %331
  %333 = load %struct.t_switch***, %struct.t_switch**** %332, align 8
  %334 = load i32, i32* %7, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %333, i64 %335
  %337 = load %struct.t_switch**, %struct.t_switch*** %336, align 8
  %338 = load i32, i32* %8, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %337, i64 %339
  %341 = load %struct.t_switch*, %struct.t_switch** %340, align 8
  %342 = icmp ne %struct.t_switch* %341, null
  br i1 %342, label %343, label %387

343:                                              ; preds = %328
  %344 = load %struct.t_switch****, %struct.t_switch***** %9, align 8
  %345 = load i32, i32* %10, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %344, i64 %346
  %348 = load %struct.t_switch***, %struct.t_switch**** %347, align 8
  %349 = load i32, i32* %11, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %348, i64 %350
  %352 = load %struct.t_switch**, %struct.t_switch*** %351, align 8
  %353 = load i32, i32* %8, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %352, i64 %354
  %356 = load %struct.t_switch*, %struct.t_switch** %355, align 8
  %357 = icmp ne %struct.t_switch* %356, null
  br i1 %357, label %358, label %387

358:                                              ; preds = %343
  %359 = load %struct.torus*, %struct.torus** %5, align 8
  %360 = load %struct.t_switch****, %struct.t_switch***** %9, align 8
  %361 = load i32, i32* %10, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %360, i64 %362
  %364 = load %struct.t_switch***, %struct.t_switch**** %363, align 8
  %365 = load i32, i32* %7, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %364, i64 %366
  %368 = load %struct.t_switch**, %struct.t_switch*** %367, align 8
  %369 = load i32, i32* %8, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %368, i64 %370
  %372 = load %struct.t_switch*, %struct.t_switch** %371, align 8
  %373 = load %struct.t_switch****, %struct.t_switch***** %9, align 8
  %374 = load i32, i32* %10, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %373, i64 %375
  %377 = load %struct.t_switch***, %struct.t_switch**** %376, align 8
  %378 = load i32, i32* %11, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %377, i64 %379
  %381 = load %struct.t_switch**, %struct.t_switch*** %380, align 8
  %382 = load i32, i32* %8, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %381, i64 %383
  %385 = load %struct.t_switch*, %struct.t_switch** %384, align 8
  %386 = call i32 @link_tswitches(%struct.torus* %359, i32 1, %struct.t_switch* %372, %struct.t_switch* %385)
  br label %387

387:                                              ; preds = %358, %343, %328
  %388 = load %struct.t_switch****, %struct.t_switch***** %9, align 8
  %389 = load i32, i32* %6, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %388, i64 %390
  %392 = load %struct.t_switch***, %struct.t_switch**** %391, align 8
  %393 = load i32, i32* %7, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %392, i64 %394
  %396 = load %struct.t_switch**, %struct.t_switch*** %395, align 8
  %397 = load i32, i32* %12, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %396, i64 %398
  %400 = load %struct.t_switch*, %struct.t_switch** %399, align 8
  %401 = icmp ne %struct.t_switch* %400, null
  br i1 %401, label %402, label %446

402:                                              ; preds = %387
  %403 = load %struct.t_switch****, %struct.t_switch***** %9, align 8
  %404 = load i32, i32* %6, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %403, i64 %405
  %407 = load %struct.t_switch***, %struct.t_switch**** %406, align 8
  %408 = load i32, i32* %11, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %407, i64 %409
  %411 = load %struct.t_switch**, %struct.t_switch*** %410, align 8
  %412 = load i32, i32* %12, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %411, i64 %413
  %415 = load %struct.t_switch*, %struct.t_switch** %414, align 8
  %416 = icmp ne %struct.t_switch* %415, null
  br i1 %416, label %417, label %446

417:                                              ; preds = %402
  %418 = load %struct.torus*, %struct.torus** %5, align 8
  %419 = load %struct.t_switch****, %struct.t_switch***** %9, align 8
  %420 = load i32, i32* %6, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %419, i64 %421
  %423 = load %struct.t_switch***, %struct.t_switch**** %422, align 8
  %424 = load i32, i32* %7, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %423, i64 %425
  %427 = load %struct.t_switch**, %struct.t_switch*** %426, align 8
  %428 = load i32, i32* %12, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %427, i64 %429
  %431 = load %struct.t_switch*, %struct.t_switch** %430, align 8
  %432 = load %struct.t_switch****, %struct.t_switch***** %9, align 8
  %433 = load i32, i32* %6, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %432, i64 %434
  %436 = load %struct.t_switch***, %struct.t_switch**** %435, align 8
  %437 = load i32, i32* %11, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %436, i64 %438
  %440 = load %struct.t_switch**, %struct.t_switch*** %439, align 8
  %441 = load i32, i32* %12, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %440, i64 %442
  %444 = load %struct.t_switch*, %struct.t_switch** %443, align 8
  %445 = call i32 @link_tswitches(%struct.torus* %418, i32 1, %struct.t_switch* %431, %struct.t_switch* %444)
  br label %446

446:                                              ; preds = %417, %402, %387
  %447 = load %struct.t_switch****, %struct.t_switch***** %9, align 8
  %448 = load i32, i32* %10, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %447, i64 %449
  %451 = load %struct.t_switch***, %struct.t_switch**** %450, align 8
  %452 = load i32, i32* %7, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %451, i64 %453
  %455 = load %struct.t_switch**, %struct.t_switch*** %454, align 8
  %456 = load i32, i32* %12, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %455, i64 %457
  %459 = load %struct.t_switch*, %struct.t_switch** %458, align 8
  %460 = icmp ne %struct.t_switch* %459, null
  br i1 %460, label %461, label %505

461:                                              ; preds = %446
  %462 = load %struct.t_switch****, %struct.t_switch***** %9, align 8
  %463 = load i32, i32* %10, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %462, i64 %464
  %466 = load %struct.t_switch***, %struct.t_switch**** %465, align 8
  %467 = load i32, i32* %11, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %466, i64 %468
  %470 = load %struct.t_switch**, %struct.t_switch*** %469, align 8
  %471 = load i32, i32* %12, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %470, i64 %472
  %474 = load %struct.t_switch*, %struct.t_switch** %473, align 8
  %475 = icmp ne %struct.t_switch* %474, null
  br i1 %475, label %476, label %505

476:                                              ; preds = %461
  %477 = load %struct.torus*, %struct.torus** %5, align 8
  %478 = load %struct.t_switch****, %struct.t_switch***** %9, align 8
  %479 = load i32, i32* %10, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %478, i64 %480
  %482 = load %struct.t_switch***, %struct.t_switch**** %481, align 8
  %483 = load i32, i32* %7, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %482, i64 %484
  %486 = load %struct.t_switch**, %struct.t_switch*** %485, align 8
  %487 = load i32, i32* %12, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %486, i64 %488
  %490 = load %struct.t_switch*, %struct.t_switch** %489, align 8
  %491 = load %struct.t_switch****, %struct.t_switch***** %9, align 8
  %492 = load i32, i32* %10, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %491, i64 %493
  %495 = load %struct.t_switch***, %struct.t_switch**** %494, align 8
  %496 = load i32, i32* %11, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %495, i64 %497
  %499 = load %struct.t_switch**, %struct.t_switch*** %498, align 8
  %500 = load i32, i32* %12, align 4
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %499, i64 %501
  %503 = load %struct.t_switch*, %struct.t_switch** %502, align 8
  %504 = call i32 @link_tswitches(%struct.torus* %477, i32 1, %struct.t_switch* %490, %struct.t_switch* %503)
  br label %505

505:                                              ; preds = %476, %461, %446
  %506 = load %struct.t_switch****, %struct.t_switch***** %9, align 8
  %507 = load i32, i32* %6, align 4
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %506, i64 %508
  %510 = load %struct.t_switch***, %struct.t_switch**** %509, align 8
  %511 = load i32, i32* %7, align 4
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %510, i64 %512
  %514 = load %struct.t_switch**, %struct.t_switch*** %513, align 8
  %515 = load i32, i32* %8, align 4
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %514, i64 %516
  %518 = load %struct.t_switch*, %struct.t_switch** %517, align 8
  %519 = icmp ne %struct.t_switch* %518, null
  br i1 %519, label %520, label %564

520:                                              ; preds = %505
  %521 = load %struct.t_switch****, %struct.t_switch***** %9, align 8
  %522 = load i32, i32* %6, align 4
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %521, i64 %523
  %525 = load %struct.t_switch***, %struct.t_switch**** %524, align 8
  %526 = load i32, i32* %7, align 4
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %525, i64 %527
  %529 = load %struct.t_switch**, %struct.t_switch*** %528, align 8
  %530 = load i32, i32* %12, align 4
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %529, i64 %531
  %533 = load %struct.t_switch*, %struct.t_switch** %532, align 8
  %534 = icmp ne %struct.t_switch* %533, null
  br i1 %534, label %535, label %564

535:                                              ; preds = %520
  %536 = load %struct.torus*, %struct.torus** %5, align 8
  %537 = load %struct.t_switch****, %struct.t_switch***** %9, align 8
  %538 = load i32, i32* %6, align 4
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %537, i64 %539
  %541 = load %struct.t_switch***, %struct.t_switch**** %540, align 8
  %542 = load i32, i32* %7, align 4
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %541, i64 %543
  %545 = load %struct.t_switch**, %struct.t_switch*** %544, align 8
  %546 = load i32, i32* %8, align 4
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %545, i64 %547
  %549 = load %struct.t_switch*, %struct.t_switch** %548, align 8
  %550 = load %struct.t_switch****, %struct.t_switch***** %9, align 8
  %551 = load i32, i32* %6, align 4
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %550, i64 %552
  %554 = load %struct.t_switch***, %struct.t_switch**** %553, align 8
  %555 = load i32, i32* %7, align 4
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %554, i64 %556
  %558 = load %struct.t_switch**, %struct.t_switch*** %557, align 8
  %559 = load i32, i32* %12, align 4
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %558, i64 %560
  %562 = load %struct.t_switch*, %struct.t_switch** %561, align 8
  %563 = call i32 @link_tswitches(%struct.torus* %536, i32 2, %struct.t_switch* %549, %struct.t_switch* %562)
  br label %564

564:                                              ; preds = %535, %520, %505
  %565 = load %struct.t_switch****, %struct.t_switch***** %9, align 8
  %566 = load i32, i32* %10, align 4
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %565, i64 %567
  %569 = load %struct.t_switch***, %struct.t_switch**** %568, align 8
  %570 = load i32, i32* %7, align 4
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %569, i64 %571
  %573 = load %struct.t_switch**, %struct.t_switch*** %572, align 8
  %574 = load i32, i32* %8, align 4
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %573, i64 %575
  %577 = load %struct.t_switch*, %struct.t_switch** %576, align 8
  %578 = icmp ne %struct.t_switch* %577, null
  br i1 %578, label %579, label %623

579:                                              ; preds = %564
  %580 = load %struct.t_switch****, %struct.t_switch***** %9, align 8
  %581 = load i32, i32* %10, align 4
  %582 = sext i32 %581 to i64
  %583 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %580, i64 %582
  %584 = load %struct.t_switch***, %struct.t_switch**** %583, align 8
  %585 = load i32, i32* %7, align 4
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %584, i64 %586
  %588 = load %struct.t_switch**, %struct.t_switch*** %587, align 8
  %589 = load i32, i32* %12, align 4
  %590 = sext i32 %589 to i64
  %591 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %588, i64 %590
  %592 = load %struct.t_switch*, %struct.t_switch** %591, align 8
  %593 = icmp ne %struct.t_switch* %592, null
  br i1 %593, label %594, label %623

594:                                              ; preds = %579
  %595 = load %struct.torus*, %struct.torus** %5, align 8
  %596 = load %struct.t_switch****, %struct.t_switch***** %9, align 8
  %597 = load i32, i32* %10, align 4
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %596, i64 %598
  %600 = load %struct.t_switch***, %struct.t_switch**** %599, align 8
  %601 = load i32, i32* %7, align 4
  %602 = sext i32 %601 to i64
  %603 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %600, i64 %602
  %604 = load %struct.t_switch**, %struct.t_switch*** %603, align 8
  %605 = load i32, i32* %8, align 4
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %604, i64 %606
  %608 = load %struct.t_switch*, %struct.t_switch** %607, align 8
  %609 = load %struct.t_switch****, %struct.t_switch***** %9, align 8
  %610 = load i32, i32* %10, align 4
  %611 = sext i32 %610 to i64
  %612 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %609, i64 %611
  %613 = load %struct.t_switch***, %struct.t_switch**** %612, align 8
  %614 = load i32, i32* %7, align 4
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %613, i64 %615
  %617 = load %struct.t_switch**, %struct.t_switch*** %616, align 8
  %618 = load i32, i32* %12, align 4
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %617, i64 %619
  %621 = load %struct.t_switch*, %struct.t_switch** %620, align 8
  %622 = call i32 @link_tswitches(%struct.torus* %595, i32 2, %struct.t_switch* %608, %struct.t_switch* %621)
  br label %623

623:                                              ; preds = %594, %579, %564
  %624 = load %struct.t_switch****, %struct.t_switch***** %9, align 8
  %625 = load i32, i32* %6, align 4
  %626 = sext i32 %625 to i64
  %627 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %624, i64 %626
  %628 = load %struct.t_switch***, %struct.t_switch**** %627, align 8
  %629 = load i32, i32* %11, align 4
  %630 = sext i32 %629 to i64
  %631 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %628, i64 %630
  %632 = load %struct.t_switch**, %struct.t_switch*** %631, align 8
  %633 = load i32, i32* %8, align 4
  %634 = sext i32 %633 to i64
  %635 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %632, i64 %634
  %636 = load %struct.t_switch*, %struct.t_switch** %635, align 8
  %637 = icmp ne %struct.t_switch* %636, null
  br i1 %637, label %638, label %682

638:                                              ; preds = %623
  %639 = load %struct.t_switch****, %struct.t_switch***** %9, align 8
  %640 = load i32, i32* %6, align 4
  %641 = sext i32 %640 to i64
  %642 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %639, i64 %641
  %643 = load %struct.t_switch***, %struct.t_switch**** %642, align 8
  %644 = load i32, i32* %11, align 4
  %645 = sext i32 %644 to i64
  %646 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %643, i64 %645
  %647 = load %struct.t_switch**, %struct.t_switch*** %646, align 8
  %648 = load i32, i32* %12, align 4
  %649 = sext i32 %648 to i64
  %650 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %647, i64 %649
  %651 = load %struct.t_switch*, %struct.t_switch** %650, align 8
  %652 = icmp ne %struct.t_switch* %651, null
  br i1 %652, label %653, label %682

653:                                              ; preds = %638
  %654 = load %struct.torus*, %struct.torus** %5, align 8
  %655 = load %struct.t_switch****, %struct.t_switch***** %9, align 8
  %656 = load i32, i32* %6, align 4
  %657 = sext i32 %656 to i64
  %658 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %655, i64 %657
  %659 = load %struct.t_switch***, %struct.t_switch**** %658, align 8
  %660 = load i32, i32* %11, align 4
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %659, i64 %661
  %663 = load %struct.t_switch**, %struct.t_switch*** %662, align 8
  %664 = load i32, i32* %8, align 4
  %665 = sext i32 %664 to i64
  %666 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %663, i64 %665
  %667 = load %struct.t_switch*, %struct.t_switch** %666, align 8
  %668 = load %struct.t_switch****, %struct.t_switch***** %9, align 8
  %669 = load i32, i32* %6, align 4
  %670 = sext i32 %669 to i64
  %671 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %668, i64 %670
  %672 = load %struct.t_switch***, %struct.t_switch**** %671, align 8
  %673 = load i32, i32* %11, align 4
  %674 = sext i32 %673 to i64
  %675 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %672, i64 %674
  %676 = load %struct.t_switch**, %struct.t_switch*** %675, align 8
  %677 = load i32, i32* %12, align 4
  %678 = sext i32 %677 to i64
  %679 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %676, i64 %678
  %680 = load %struct.t_switch*, %struct.t_switch** %679, align 8
  %681 = call i32 @link_tswitches(%struct.torus* %654, i32 2, %struct.t_switch* %667, %struct.t_switch* %680)
  br label %682

682:                                              ; preds = %653, %638, %623
  %683 = load %struct.t_switch****, %struct.t_switch***** %9, align 8
  %684 = load i32, i32* %10, align 4
  %685 = sext i32 %684 to i64
  %686 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %683, i64 %685
  %687 = load %struct.t_switch***, %struct.t_switch**** %686, align 8
  %688 = load i32, i32* %11, align 4
  %689 = sext i32 %688 to i64
  %690 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %687, i64 %689
  %691 = load %struct.t_switch**, %struct.t_switch*** %690, align 8
  %692 = load i32, i32* %8, align 4
  %693 = sext i32 %692 to i64
  %694 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %691, i64 %693
  %695 = load %struct.t_switch*, %struct.t_switch** %694, align 8
  %696 = icmp ne %struct.t_switch* %695, null
  br i1 %696, label %697, label %741

697:                                              ; preds = %682
  %698 = load %struct.t_switch****, %struct.t_switch***** %9, align 8
  %699 = load i32, i32* %10, align 4
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %698, i64 %700
  %702 = load %struct.t_switch***, %struct.t_switch**** %701, align 8
  %703 = load i32, i32* %11, align 4
  %704 = sext i32 %703 to i64
  %705 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %702, i64 %704
  %706 = load %struct.t_switch**, %struct.t_switch*** %705, align 8
  %707 = load i32, i32* %12, align 4
  %708 = sext i32 %707 to i64
  %709 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %706, i64 %708
  %710 = load %struct.t_switch*, %struct.t_switch** %709, align 8
  %711 = icmp ne %struct.t_switch* %710, null
  br i1 %711, label %712, label %741

712:                                              ; preds = %697
  %713 = load %struct.torus*, %struct.torus** %5, align 8
  %714 = load %struct.t_switch****, %struct.t_switch***** %9, align 8
  %715 = load i32, i32* %10, align 4
  %716 = sext i32 %715 to i64
  %717 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %714, i64 %716
  %718 = load %struct.t_switch***, %struct.t_switch**** %717, align 8
  %719 = load i32, i32* %11, align 4
  %720 = sext i32 %719 to i64
  %721 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %718, i64 %720
  %722 = load %struct.t_switch**, %struct.t_switch*** %721, align 8
  %723 = load i32, i32* %8, align 4
  %724 = sext i32 %723 to i64
  %725 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %722, i64 %724
  %726 = load %struct.t_switch*, %struct.t_switch** %725, align 8
  %727 = load %struct.t_switch****, %struct.t_switch***** %9, align 8
  %728 = load i32, i32* %10, align 4
  %729 = sext i32 %728 to i64
  %730 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %727, i64 %729
  %731 = load %struct.t_switch***, %struct.t_switch**** %730, align 8
  %732 = load i32, i32* %11, align 4
  %733 = sext i32 %732 to i64
  %734 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %731, i64 %733
  %735 = load %struct.t_switch**, %struct.t_switch*** %734, align 8
  %736 = load i32, i32* %12, align 4
  %737 = sext i32 %736 to i64
  %738 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %735, i64 %737
  %739 = load %struct.t_switch*, %struct.t_switch** %738, align 8
  %740 = call i32 @link_tswitches(%struct.torus* %713, i32 2, %struct.t_switch* %726, %struct.t_switch* %739)
  br label %741

741:                                              ; preds = %712, %697, %682
  ret void
}

declare dso_local i32 @canonicalize(i32, i32) #1

declare dso_local i32 @link_tswitches(%struct.torus*, i32, %struct.t_switch*, %struct.t_switch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
