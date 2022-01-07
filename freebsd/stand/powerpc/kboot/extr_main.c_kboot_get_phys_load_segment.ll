; ModuleID = '/home/carl/AnghaBench/freebsd/stand/powerpc/kboot/extr_main.c_kboot_get_phys_load_segment.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/powerpc/kboot/extr_main.c_kboot_get_phys_load_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.region_desc = type { i64, i64 }

@kboot_get_phys_load_segment.load_segment = internal global i64 -1, align 8
@.str = private unnamed_addr constant [34 x i8] c"/proc/device-tree/reserved-ranges\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"/proc/device-tree/chosen/linux,kernel-end\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"/proc/device-tree/memory@0/reg\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"/proc/device-tree/memory/reg\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @kboot_get_phys_load_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kboot_get_phys_load_segment() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [2 x i64], align 16
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca [32 x %struct.region_desc], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.region_desc, align 8
  %13 = alloca i64, align 8
  store i32 0, i32* %6, align 4
  %14 = load i64, i64* @kboot_get_phys_load_segment.load_segment, align 8
  %15 = icmp eq i64 %14, -1
  br i1 %15, label %16, label %371

16:                                               ; preds = %0
  store i64 0, i64* @kboot_get_phys_load_segment.load_segment, align 8
  %17 = load i32, i32* @O_RDONLY, align 4
  %18 = call i32 @host_open(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %17, i32 0)
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* %1, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %57

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %28, %21
  %23 = load i32, i32* %1, align 4
  %24 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 0
  %25 = call i32 (i32, ...) @host_read(i32 %23, i64* %24, i64 16)
  %26 = sext i32 %25 to i64
  %27 = icmp eq i64 %26, 16
  br i1 %27, label %28, label %54

28:                                               ; preds = %22
  %29 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 0
  %30 = load i64, i64* %29, align 16
  %31 = call i8* @be64toh(i64 %30)
  %32 = ptrtoint i8* %31 to i64
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [32 x %struct.region_desc], [32 x %struct.region_desc]* %5, i64 0, i64 %34
  %36 = getelementptr inbounds %struct.region_desc, %struct.region_desc* %35, i32 0, i32 0
  store i64 %32, i64* %36, align 16
  %37 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 1
  %38 = load i64, i64* %37, align 8
  %39 = call i8* @be64toh(i64 %38)
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [32 x %struct.region_desc], [32 x %struct.region_desc]* %5, i64 0, i64 %41
  %43 = getelementptr inbounds %struct.region_desc, %struct.region_desc* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 16
  %45 = getelementptr i8, i8* %39, i64 %44
  %46 = getelementptr i8, i8* %45, i64 -1
  %47 = ptrtoint i8* %46 to i64
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [32 x %struct.region_desc], [32 x %struct.region_desc]* %5, i64 0, i64 %49
  %51 = getelementptr inbounds %struct.region_desc, %struct.region_desc* %50, i32 0, i32 1
  store i64 %47, i64* %51, align 8
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %22

54:                                               ; preds = %22
  %55 = load i32, i32* %1, align 4
  %56 = call i32 @host_close(i32 %55)
  br label %57

57:                                               ; preds = %54, %16
  %58 = load i32, i32* @O_RDONLY, align 4
  %59 = call i32 @host_open(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 0)
  store i32 %59, i32* %1, align 4
  %60 = load i32, i32* %1, align 4
  %61 = icmp sge i32 %60, 0
  br i1 %61, label %62, label %99

62:                                               ; preds = %57
  %63 = load i32, i32* %1, align 4
  %64 = call i32 (i32, ...) @host_read(i32 %63, i64* %3, i64 8)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = icmp eq i64 %66, 8
  br i1 %67, label %68, label %81

68:                                               ; preds = %62
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [32 x %struct.region_desc], [32 x %struct.region_desc]* %5, i64 0, i64 %70
  %72 = getelementptr inbounds %struct.region_desc, %struct.region_desc* %71, i32 0, i32 0
  store i64 0, i64* %72, align 16
  %73 = load i64, i64* %3, align 8
  %74 = call i8* @be64toh(i64 %73)
  %75 = getelementptr i8, i8* %74, i64 -1
  %76 = ptrtoint i8* %75 to i64
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [32 x %struct.region_desc], [32 x %struct.region_desc]* %5, i64 0, i64 %78
  %80 = getelementptr inbounds %struct.region_desc, %struct.region_desc* %79, i32 0, i32 1
  store i64 %76, i64* %80, align 8
  br label %94

81:                                               ; preds = %62
  %82 = call i32 @memcpy(i32* %4, i64* %3, i32 4)
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [32 x %struct.region_desc], [32 x %struct.region_desc]* %5, i64 0, i64 %84
  %86 = getelementptr inbounds %struct.region_desc, %struct.region_desc* %85, i32 0, i32 0
  store i64 0, i64* %86, align 16
  %87 = load i32, i32* %4, align 4
  %88 = call i64 @be32toh(i32 %87)
  %89 = sub i64 %88, 1
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [32 x %struct.region_desc], [32 x %struct.region_desc]* %5, i64 0, i64 %91
  %93 = getelementptr inbounds %struct.region_desc, %struct.region_desc* %92, i32 0, i32 1
  store i64 %89, i64* %93, align 8
  br label %94

94:                                               ; preds = %81, %68
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %1, align 4
  %98 = call i32 @host_close(i32 %97)
  br label %99

99:                                               ; preds = %94, %57
  %100 = load i32, i32* @O_RDONLY, align 4
  %101 = call i32 @host_open(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %100, i32 0)
  store i32 %101, i32* %1, align 4
  %102 = load i32, i32* %1, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load i32, i32* @O_RDONLY, align 4
  %106 = call i32 @host_open(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %105, i32 0)
  store i32 %106, i32* %1, align 4
  br label %107

107:                                              ; preds = %104, %99
  %108 = load i32, i32* %1, align 4
  %109 = icmp sge i32 %108, 0
  br i1 %109, label %110, label %163

110:                                              ; preds = %107
  %111 = load i32, i32* %1, align 4
  %112 = call i32 (i32, ...) @host_read(i32 %111, [2 x i64]* %2, i64 16)
  store i32 %112, i32* %7, align 4
  %113 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 0
  %114 = load i64, i64* %113, align 16
  %115 = call i8* @be64toh(i64 %114)
  %116 = ptrtoint i8* %115 to i64
  %117 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 0
  store i64 %116, i64* %117, align 16
  %118 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 1
  %119 = load i64, i64* %118, align 8
  %120 = call i8* @be64toh(i64 %119)
  %121 = ptrtoint i8* %120 to i64
  %122 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 1
  store i64 %121, i64* %122, align 8
  %123 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 0
  %124 = load i64, i64* %123, align 16
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %140

126:                                              ; preds = %110
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [32 x %struct.region_desc], [32 x %struct.region_desc]* %5, i64 0, i64 %128
  %130 = getelementptr inbounds %struct.region_desc, %struct.region_desc* %129, i32 0, i32 0
  store i64 0, i64* %130, align 16
  %131 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 0
  %132 = load i64, i64* %131, align 16
  %133 = sub i64 %132, 1
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [32 x %struct.region_desc], [32 x %struct.region_desc]* %5, i64 0, i64 %135
  %137 = getelementptr inbounds %struct.region_desc, %struct.region_desc* %136, i32 0, i32 1
  store i64 %133, i64* %137, align 8
  %138 = load i32, i32* %6, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %6, align 4
  br label %140

140:                                              ; preds = %126, %110
  %141 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, -1
  br i1 %143, label %144, label %160

144:                                              ; preds = %140
  %145 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 0
  %146 = load i64, i64* %145, align 16
  %147 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 1
  %148 = load i64, i64* %147, align 8
  %149 = add i64 %146, %148
  %150 = load i32, i32* %6, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [32 x %struct.region_desc], [32 x %struct.region_desc]* %5, i64 0, i64 %151
  %153 = getelementptr inbounds %struct.region_desc, %struct.region_desc* %152, i32 0, i32 0
  store i64 %149, i64* %153, align 16
  %154 = load i32, i32* %6, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [32 x %struct.region_desc], [32 x %struct.region_desc]* %5, i64 0, i64 %155
  %157 = getelementptr inbounds %struct.region_desc, %struct.region_desc* %156, i32 0, i32 1
  store i64 -1, i64* %157, align 8
  %158 = load i32, i32* %6, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %6, align 4
  br label %160

160:                                              ; preds = %144, %140
  %161 = load i32, i32* %1, align 4
  %162 = call i32 @host_close(i32 %161)
  br label %163

163:                                              ; preds = %160, %107
  %164 = load i32, i32* %6, align 4
  %165 = sub nsw i32 %164, 1
  store i32 %165, i32* %8, align 4
  br label %166

166:                                              ; preds = %213, %163
  %167 = load i32, i32* %8, align 4
  %168 = icmp sgt i32 %167, 0
  br i1 %168, label %169, label %216

169:                                              ; preds = %166
  store i32 0, i32* %9, align 4
  br label %170

170:                                              ; preds = %209, %169
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* %8, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %212

174:                                              ; preds = %170
  %175 = load i32, i32* %9, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [32 x %struct.region_desc], [32 x %struct.region_desc]* %5, i64 0, i64 %176
  %178 = getelementptr inbounds %struct.region_desc, %struct.region_desc* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 16
  %180 = load i32, i32* %9, align 4
  %181 = add nsw i32 %180, 1
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [32 x %struct.region_desc], [32 x %struct.region_desc]* %5, i64 0, i64 %182
  %184 = getelementptr inbounds %struct.region_desc, %struct.region_desc* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 16
  %186 = icmp ugt i64 %179, %185
  br i1 %186, label %187, label %208

187:                                              ; preds = %174
  %188 = load i32, i32* %9, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [32 x %struct.region_desc], [32 x %struct.region_desc]* %5, i64 0, i64 %189
  %191 = bitcast %struct.region_desc* %12 to i8*
  %192 = bitcast %struct.region_desc* %190 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %191, i8* align 16 %192, i64 16, i1 false)
  %193 = load i32, i32* %9, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [32 x %struct.region_desc], [32 x %struct.region_desc]* %5, i64 0, i64 %194
  %196 = load i32, i32* %9, align 4
  %197 = add nsw i32 %196, 1
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [32 x %struct.region_desc], [32 x %struct.region_desc]* %5, i64 0, i64 %198
  %200 = bitcast %struct.region_desc* %195 to i8*
  %201 = bitcast %struct.region_desc* %199 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %200, i8* align 16 %201, i64 16, i1 false)
  %202 = load i32, i32* %9, align 4
  %203 = add nsw i32 %202, 1
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [32 x %struct.region_desc], [32 x %struct.region_desc]* %5, i64 0, i64 %204
  %206 = bitcast %struct.region_desc* %205 to i8*
  %207 = bitcast %struct.region_desc* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %206, i8* align 8 %207, i64 16, i1 false)
  br label %208

208:                                              ; preds = %187, %174
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %9, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %9, align 4
  br label %170

212:                                              ; preds = %170
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %8, align 4
  %215 = add nsw i32 %214, -1
  store i32 %215, i32* %8, align 4
  br label %166

216:                                              ; preds = %166
  store i32 0, i32* %8, align 4
  br label %217

217:                                              ; preds = %296, %216
  %218 = load i32, i32* %8, align 4
  %219 = load i32, i32* %6, align 4
  %220 = sub nsw i32 %219, 1
  %221 = icmp slt i32 %218, %220
  br i1 %221, label %222, label %297

222:                                              ; preds = %217
  %223 = load i32, i32* %8, align 4
  %224 = add nsw i32 %223, 1
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [32 x %struct.region_desc], [32 x %struct.region_desc]* %5, i64 0, i64 %225
  %227 = getelementptr inbounds %struct.region_desc, %struct.region_desc* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 16
  %229 = load i32, i32* %8, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [32 x %struct.region_desc], [32 x %struct.region_desc]* %5, i64 0, i64 %230
  %232 = getelementptr inbounds %struct.region_desc, %struct.region_desc* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 16
  %234 = icmp uge i64 %228, %233
  br i1 %234, label %235, label %293

235:                                              ; preds = %222
  %236 = load i32, i32* %8, align 4
  %237 = add nsw i32 %236, 1
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [32 x %struct.region_desc], [32 x %struct.region_desc]* %5, i64 0, i64 %238
  %240 = getelementptr inbounds %struct.region_desc, %struct.region_desc* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 16
  %242 = sub i64 %241, 1
  %243 = load i32, i32* %8, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [32 x %struct.region_desc], [32 x %struct.region_desc]* %5, i64 0, i64 %244
  %246 = getelementptr inbounds %struct.region_desc, %struct.region_desc* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = icmp ule i64 %242, %247
  br i1 %248, label %249, label %293

249:                                              ; preds = %235
  %250 = load i32, i32* %8, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [32 x %struct.region_desc], [32 x %struct.region_desc]* %5, i64 0, i64 %251
  %253 = getelementptr inbounds %struct.region_desc, %struct.region_desc* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = trunc i64 %254 to i32
  %256 = load i32, i32* %8, align 4
  %257 = load i32, i32* %8, align 4
  %258 = add nsw i32 %256, %257
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds [32 x %struct.region_desc], [32 x %struct.region_desc]* %5, i64 0, i64 %259
  %261 = getelementptr inbounds %struct.region_desc, %struct.region_desc* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = trunc i64 %262 to i32
  %264 = call i32 @MAX(i32 %255, i32 %263)
  %265 = sext i32 %264 to i64
  %266 = load i32, i32* %8, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [32 x %struct.region_desc], [32 x %struct.region_desc]* %5, i64 0, i64 %267
  %269 = getelementptr inbounds %struct.region_desc, %struct.region_desc* %268, i32 0, i32 1
  store i64 %265, i64* %269, align 8
  %270 = load i32, i32* %8, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %9, align 4
  br label %272

272:                                              ; preds = %287, %249
  %273 = load i32, i32* %9, align 4
  %274 = load i32, i32* %6, align 4
  %275 = sub nsw i32 %274, 1
  %276 = icmp slt i32 %273, %275
  br i1 %276, label %277, label %290

277:                                              ; preds = %272
  %278 = load i32, i32* %9, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [32 x %struct.region_desc], [32 x %struct.region_desc]* %5, i64 0, i64 %279
  %281 = load i32, i32* %9, align 4
  %282 = add nsw i32 %281, 1
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [32 x %struct.region_desc], [32 x %struct.region_desc]* %5, i64 0, i64 %283
  %285 = bitcast %struct.region_desc* %280 to i8*
  %286 = bitcast %struct.region_desc* %284 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %285, i8* align 16 %286, i64 16, i1 false)
  br label %287

287:                                              ; preds = %277
  %288 = load i32, i32* %9, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %9, align 4
  br label %272

290:                                              ; preds = %272
  %291 = load i32, i32* %6, align 4
  %292 = add nsw i32 %291, -1
  store i32 %292, i32* %6, align 4
  br label %296

293:                                              ; preds = %235, %222
  %294 = load i32, i32* %8, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %8, align 4
  br label %296

296:                                              ; preds = %293, %290
  br label %217

297:                                              ; preds = %217
  %298 = load i32, i32* %6, align 4
  %299 = icmp sgt i32 %298, 0
  br i1 %299, label %300, label %370

300:                                              ; preds = %297
  store i64 0, i64* %10, align 8
  %301 = getelementptr inbounds [32 x %struct.region_desc], [32 x %struct.region_desc]* %5, i64 0, i64 0
  %302 = getelementptr inbounds %struct.region_desc, %struct.region_desc* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 16
  store i64 %303, i64* %11, align 8
  store i32 0, i32* %8, align 4
  br label %304

304:                                              ; preds = %340, %300
  %305 = load i32, i32* %8, align 4
  %306 = load i32, i32* %6, align 4
  %307 = sub nsw i32 %306, 1
  %308 = icmp slt i32 %305, %307
  br i1 %308, label %309, label %343

309:                                              ; preds = %304
  %310 = load i64, i64* %10, align 8
  %311 = load i32, i32* %8, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds [32 x %struct.region_desc], [32 x %struct.region_desc]* %5, i64 0, i64 %312
  %314 = getelementptr inbounds %struct.region_desc, %struct.region_desc* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 16
  %316 = icmp uge i64 %310, %315
  br i1 %316, label %317, label %338

317:                                              ; preds = %309
  %318 = load i64, i64* %10, align 8
  %319 = load i32, i32* %8, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds [32 x %struct.region_desc], [32 x %struct.region_desc]* %5, i64 0, i64 %320
  %322 = getelementptr inbounds %struct.region_desc, %struct.region_desc* %321, i32 0, i32 1
  %323 = load i64, i64* %322, align 8
  %324 = icmp ule i64 %318, %323
  br i1 %324, label %325, label %338

325:                                              ; preds = %317
  %326 = load i32, i32* %8, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds [32 x %struct.region_desc], [32 x %struct.region_desc]* %5, i64 0, i64 %327
  %329 = getelementptr inbounds %struct.region_desc, %struct.region_desc* %328, i32 0, i32 1
  %330 = load i64, i64* %329, align 8
  %331 = add i64 %330, 1
  store i64 %331, i64* %10, align 8
  %332 = load i32, i32* %8, align 4
  %333 = add nsw i32 %332, 1
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds [32 x %struct.region_desc], [32 x %struct.region_desc]* %5, i64 0, i64 %334
  %336 = getelementptr inbounds %struct.region_desc, %struct.region_desc* %335, i32 0, i32 0
  %337 = load i64, i64* %336, align 16
  store i64 %337, i64* %11, align 8
  br label %339

338:                                              ; preds = %317, %309
  br label %343

339:                                              ; preds = %325
  br label %340

340:                                              ; preds = %339
  %341 = load i32, i32* %8, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %8, align 4
  br label %304

343:                                              ; preds = %338, %304
  %344 = load i64, i64* %10, align 8
  %345 = load i64, i64* %11, align 8
  %346 = icmp ne i64 %344, %345
  br i1 %346, label %347, label %369

347:                                              ; preds = %343
  store i64 67108864, i64* %13, align 8
  %348 = load i64, i64* %10, align 8
  %349 = load i64, i64* %13, align 8
  %350 = add i64 %348, %349
  %351 = sub i64 %350, 1
  %352 = load i64, i64* %13, align 8
  %353 = sub i64 %352, 1
  %354 = xor i64 %353, -1
  %355 = and i64 %351, %354
  store i64 %355, i64* %10, align 8
  %356 = load i64, i64* %11, align 8
  %357 = add i64 %356, 1
  %358 = load i64, i64* %13, align 8
  %359 = sub i64 %358, 1
  %360 = xor i64 %359, -1
  %361 = and i64 %357, %360
  %362 = sub i64 %361, 1
  store i64 %362, i64* %11, align 8
  %363 = load i64, i64* %10, align 8
  %364 = load i64, i64* %11, align 8
  %365 = icmp ult i64 %363, %364
  br i1 %365, label %366, label %368

366:                                              ; preds = %347
  %367 = load i64, i64* %10, align 8
  store i64 %367, i64* @kboot_get_phys_load_segment.load_segment, align 8
  br label %368

368:                                              ; preds = %366, %347
  br label %369

369:                                              ; preds = %368, %343
  br label %370

370:                                              ; preds = %369, %297
  br label %371

371:                                              ; preds = %370, %0
  %372 = load i64, i64* @kboot_get_phys_load_segment.load_segment, align 8
  ret i64 %372
}

declare dso_local i32 @host_open(i8*, i32, i32) #1

declare dso_local i32 @host_read(i32, ...) #1

declare dso_local i8* @be64toh(i64) #1

declare dso_local i32 @host_close(i32) #1

declare dso_local i32 @memcpy(i32*, i64*, i32) #1

declare dso_local i64 @be32toh(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @MAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
