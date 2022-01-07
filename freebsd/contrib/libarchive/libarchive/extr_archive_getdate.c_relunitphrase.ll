; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_getdate.c_relunitphrase.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_getdate.c_relunitphrase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdstate = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8, i32 }

@tUNUMBER = common dso_local global i8 0, align 1
@tSEC_UNIT = common dso_local global i8 0, align 1
@tMONTH_UNIT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gdstate*)* @relunitphrase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @relunitphrase(%struct.gdstate* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gdstate*, align 8
  store %struct.gdstate* %0, %struct.gdstate** %3, align 8
  %4 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %5 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %4, i32 0, i32 2
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i8, i8* %8, align 4
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 45
  br i1 %11, label %12, label %60

12:                                               ; preds = %1
  %13 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %14 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i8, i8* %17, align 4
  %19 = sext i8 %18 to i32
  %20 = load i8, i8* @tUNUMBER, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %60

23:                                               ; preds = %12
  %24 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %25 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i8, i8* %28, align 4
  %30 = sext i8 %29 to i32
  %31 = load i8, i8* @tSEC_UNIT, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %60

34:                                               ; preds = %23
  %35 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %36 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 8
  %39 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %40 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %46 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %44, %50
  %52 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %53 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %57 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %56, i32 0, i32 2
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 3
  store %struct.TYPE_2__* %59, %struct.TYPE_2__** %57, align 8
  store i32 1, i32* %2, align 4
  br label %388

60:                                               ; preds = %23, %12, %1
  %61 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %62 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %61, i32 0, i32 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i8, i8* %65, align 4
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 43
  br i1 %68, label %69, label %117

69:                                               ; preds = %60
  %70 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %71 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %70, i32 0, i32 2
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i8, i8* %74, align 4
  %76 = sext i8 %75 to i32
  %77 = load i8, i8* @tUNUMBER, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %80, label %117

80:                                               ; preds = %69
  %81 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %82 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %81, i32 0, i32 2
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 2
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i8, i8* %85, align 4
  %87 = sext i8 %86 to i32
  %88 = load i8, i8* @tSEC_UNIT, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %91, label %117

91:                                               ; preds = %80
  %92 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %93 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 8
  %96 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %97 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %96, i32 0, i32 2
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 1
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %103 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %102, i32 0, i32 2
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 2
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = mul nsw i32 %101, %107
  %109 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %110 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, %108
  store i32 %112, i32* %110, align 8
  %113 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %114 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %113, i32 0, i32 2
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 3
  store %struct.TYPE_2__* %116, %struct.TYPE_2__** %114, align 8
  store i32 1, i32* %2, align 4
  br label %388

117:                                              ; preds = %80, %69, %60
  %118 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %119 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %118, i32 0, i32 2
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i64 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i8, i8* %122, align 4
  %124 = sext i8 %123 to i32
  %125 = load i8, i8* @tUNUMBER, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %124, %126
  br i1 %127, label %128, label %165

128:                                              ; preds = %117
  %129 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %130 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %129, i32 0, i32 2
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i64 1
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i8, i8* %133, align 4
  %135 = sext i8 %134 to i32
  %136 = load i8, i8* @tSEC_UNIT, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp eq i32 %135, %137
  br i1 %138, label %139, label %165

139:                                              ; preds = %128
  %140 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %141 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %141, align 8
  %144 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %145 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %144, i32 0, i32 2
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i64 0
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %151 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %150, i32 0, i32 2
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i64 1
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = mul nsw i32 %149, %155
  %157 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %158 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = add nsw i32 %159, %156
  store i32 %160, i32* %158, align 8
  %161 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %162 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %161, i32 0, i32 2
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i64 2
  store %struct.TYPE_2__* %164, %struct.TYPE_2__** %162, align 8
  store i32 1, i32* %2, align 4
  br label %388

165:                                              ; preds = %128, %117
  %166 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %167 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %166, i32 0, i32 2
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i64 0
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  %171 = load i8, i8* %170, align 4
  %172 = sext i8 %171 to i32
  %173 = icmp eq i32 %172, 45
  br i1 %173, label %174, label %222

174:                                              ; preds = %165
  %175 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %176 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %175, i32 0, i32 2
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i64 1
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  %180 = load i8, i8* %179, align 4
  %181 = sext i8 %180 to i32
  %182 = load i8, i8* @tUNUMBER, align 1
  %183 = sext i8 %182 to i32
  %184 = icmp eq i32 %181, %183
  br i1 %184, label %185, label %222

185:                                              ; preds = %174
  %186 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %187 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %186, i32 0, i32 2
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i64 2
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 0
  %191 = load i8, i8* %190, align 4
  %192 = sext i8 %191 to i32
  %193 = load i8, i8* @tMONTH_UNIT, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp eq i32 %192, %194
  br i1 %195, label %196, label %222

196:                                              ; preds = %185
  %197 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %198 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 8
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %198, align 8
  %201 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %202 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %201, i32 0, i32 2
  %203 = load %struct.TYPE_2__*, %struct.TYPE_2__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i64 1
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %208 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %207, i32 0, i32 2
  %209 = load %struct.TYPE_2__*, %struct.TYPE_2__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i64 2
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = mul nsw i32 %206, %212
  %214 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %215 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = sub nsw i32 %216, %213
  store i32 %217, i32* %215, align 4
  %218 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %219 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %218, i32 0, i32 2
  %220 = load %struct.TYPE_2__*, %struct.TYPE_2__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i64 3
  store %struct.TYPE_2__* %221, %struct.TYPE_2__** %219, align 8
  store i32 1, i32* %2, align 4
  br label %388

222:                                              ; preds = %185, %174, %165
  %223 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %224 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %223, i32 0, i32 2
  %225 = load %struct.TYPE_2__*, %struct.TYPE_2__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i64 0
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 0
  %228 = load i8, i8* %227, align 4
  %229 = sext i8 %228 to i32
  %230 = icmp eq i32 %229, 43
  br i1 %230, label %231, label %279

231:                                              ; preds = %222
  %232 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %233 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %232, i32 0, i32 2
  %234 = load %struct.TYPE_2__*, %struct.TYPE_2__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i64 1
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 0
  %237 = load i8, i8* %236, align 4
  %238 = sext i8 %237 to i32
  %239 = load i8, i8* @tUNUMBER, align 1
  %240 = sext i8 %239 to i32
  %241 = icmp eq i32 %238, %240
  br i1 %241, label %242, label %279

242:                                              ; preds = %231
  %243 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %244 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %243, i32 0, i32 2
  %245 = load %struct.TYPE_2__*, %struct.TYPE_2__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i64 2
  %247 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %246, i32 0, i32 0
  %248 = load i8, i8* %247, align 4
  %249 = sext i8 %248 to i32
  %250 = load i8, i8* @tMONTH_UNIT, align 1
  %251 = sext i8 %250 to i32
  %252 = icmp eq i32 %249, %251
  br i1 %252, label %253, label %279

253:                                              ; preds = %242
  %254 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %255 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 8
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %255, align 8
  %258 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %259 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %258, i32 0, i32 2
  %260 = load %struct.TYPE_2__*, %struct.TYPE_2__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %260, i64 1
  %262 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %265 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %264, i32 0, i32 2
  %266 = load %struct.TYPE_2__*, %struct.TYPE_2__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %266, i64 2
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = mul nsw i32 %263, %269
  %271 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %272 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = add nsw i32 %273, %270
  store i32 %274, i32* %272, align 4
  %275 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %276 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %275, i32 0, i32 2
  %277 = load %struct.TYPE_2__*, %struct.TYPE_2__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %277, i64 3
  store %struct.TYPE_2__* %278, %struct.TYPE_2__** %276, align 8
  store i32 1, i32* %2, align 4
  br label %388

279:                                              ; preds = %242, %231, %222
  %280 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %281 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %280, i32 0, i32 2
  %282 = load %struct.TYPE_2__*, %struct.TYPE_2__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %282, i64 0
  %284 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %283, i32 0, i32 0
  %285 = load i8, i8* %284, align 4
  %286 = sext i8 %285 to i32
  %287 = load i8, i8* @tUNUMBER, align 1
  %288 = sext i8 %287 to i32
  %289 = icmp eq i32 %286, %288
  br i1 %289, label %290, label %327

290:                                              ; preds = %279
  %291 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %292 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %291, i32 0, i32 2
  %293 = load %struct.TYPE_2__*, %struct.TYPE_2__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %293, i64 1
  %295 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %294, i32 0, i32 0
  %296 = load i8, i8* %295, align 4
  %297 = sext i8 %296 to i32
  %298 = load i8, i8* @tMONTH_UNIT, align 1
  %299 = sext i8 %298 to i32
  %300 = icmp eq i32 %297, %299
  br i1 %300, label %301, label %327

301:                                              ; preds = %290
  %302 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %303 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %302, i32 0, i32 3
  %304 = load i32, i32* %303, align 8
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %303, align 8
  %306 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %307 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %306, i32 0, i32 2
  %308 = load %struct.TYPE_2__*, %struct.TYPE_2__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %308, i64 0
  %310 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %313 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %312, i32 0, i32 2
  %314 = load %struct.TYPE_2__*, %struct.TYPE_2__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %314, i64 1
  %316 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = mul nsw i32 %311, %317
  %319 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %320 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = add nsw i32 %321, %318
  store i32 %322, i32* %320, align 4
  %323 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %324 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %323, i32 0, i32 2
  %325 = load %struct.TYPE_2__*, %struct.TYPE_2__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %325, i64 2
  store %struct.TYPE_2__* %326, %struct.TYPE_2__** %324, align 8
  store i32 1, i32* %2, align 4
  br label %388

327:                                              ; preds = %290, %279
  %328 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %329 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %328, i32 0, i32 2
  %330 = load %struct.TYPE_2__*, %struct.TYPE_2__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %330, i64 0
  %332 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %331, i32 0, i32 0
  %333 = load i8, i8* %332, align 4
  %334 = sext i8 %333 to i32
  %335 = load i8, i8* @tSEC_UNIT, align 1
  %336 = sext i8 %335 to i32
  %337 = icmp eq i32 %334, %336
  br i1 %337, label %338, label %357

338:                                              ; preds = %327
  %339 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %340 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %339, i32 0, i32 3
  %341 = load i32, i32* %340, align 8
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %340, align 8
  %343 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %344 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %343, i32 0, i32 2
  %345 = load %struct.TYPE_2__*, %struct.TYPE_2__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %345, i64 0
  %347 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %350 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = add nsw i32 %351, %348
  store i32 %352, i32* %350, align 8
  %353 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %354 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %353, i32 0, i32 2
  %355 = load %struct.TYPE_2__*, %struct.TYPE_2__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %355, i64 1
  store %struct.TYPE_2__* %356, %struct.TYPE_2__** %354, align 8
  store i32 1, i32* %2, align 4
  br label %388

357:                                              ; preds = %327
  %358 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %359 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %358, i32 0, i32 2
  %360 = load %struct.TYPE_2__*, %struct.TYPE_2__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %360, i64 0
  %362 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %361, i32 0, i32 0
  %363 = load i8, i8* %362, align 4
  %364 = sext i8 %363 to i32
  %365 = load i8, i8* @tMONTH_UNIT, align 1
  %366 = sext i8 %365 to i32
  %367 = icmp eq i32 %364, %366
  br i1 %367, label %368, label %387

368:                                              ; preds = %357
  %369 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %370 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %369, i32 0, i32 3
  %371 = load i32, i32* %370, align 8
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %370, align 8
  %373 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %374 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %373, i32 0, i32 2
  %375 = load %struct.TYPE_2__*, %struct.TYPE_2__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %375, i64 0
  %377 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 4
  %379 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %380 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %379, i32 0, i32 1
  %381 = load i32, i32* %380, align 4
  %382 = add nsw i32 %381, %378
  store i32 %382, i32* %380, align 4
  %383 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %384 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %383, i32 0, i32 2
  %385 = load %struct.TYPE_2__*, %struct.TYPE_2__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %385, i64 1
  store %struct.TYPE_2__* %386, %struct.TYPE_2__** %384, align 8
  store i32 1, i32* %2, align 4
  br label %388

387:                                              ; preds = %357
  store i32 0, i32* %2, align 4
  br label %388

388:                                              ; preds = %387, %368, %338, %301, %253, %196, %139, %91, %34
  %389 = load i32, i32* %2, align 4
  ret i32 %389
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
