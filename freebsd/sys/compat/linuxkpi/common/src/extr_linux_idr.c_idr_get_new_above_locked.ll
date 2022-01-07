; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_idr.c_idr_get_new_above_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_idr.c_idr_get_new_above_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idr = type { i32, %struct.idr_layer*, i32 }
%struct.idr_layer = type { i32, %struct.idr_layer** }

@MAX_LEVEL = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@IDR_MASK = common dso_local global i32 0, align 4
@IDR_BITS = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@IDR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"idr_get_new: Invalid leaf state (%p, %p)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idr*, i8*, i32, i32*)* @idr_get_new_above_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idr_get_new_above_locked(%struct.idr* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.idr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.idr_layer*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.idr* %0, %struct.idr** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %17 = load i32, i32* @MAX_LEVEL, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca %struct.idr_layer*, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %21 = load %struct.idr*, %struct.idr** %5, align 8
  %22 = getelementptr inbounds %struct.idr, %struct.idr* %21, i32 0, i32 2
  %23 = load i32, i32* @MA_OWNED, align 4
  %24 = call i32 @mtx_assert(i32* %22, i32 %23)
  %25 = load i32, i32* @EAGAIN, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %12, align 4
  br label %27

27:                                               ; preds = %156, %4
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %29

29:                                               ; preds = %35, %27
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* @IDR_MASK, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load i32, i32* %13, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* @IDR_BITS, align 4
  %39 = load i32, i32* %14, align 4
  %40 = ashr i32 %39, %38
  store i32 %40, i32* %14, align 4
  br label %29

41:                                               ; preds = %29
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* @MAX_LEVEL, align 4
  %44 = add nsw i32 %43, 1
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @ENOSPC, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %12, align 4
  br label %267

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %113, %49
  %51 = load %struct.idr*, %struct.idr** %5, align 8
  %52 = getelementptr inbounds %struct.idr, %struct.idr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %13, align 4
  %55 = icmp sle i32 %53, %54
  br i1 %55, label %70, label %56

56:                                               ; preds = %50
  %57 = load %struct.idr*, %struct.idr** %5, align 8
  %58 = getelementptr inbounds %struct.idr, %struct.idr* %57, i32 0, i32 1
  %59 = load %struct.idr_layer*, %struct.idr_layer** %58, align 8
  %60 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.idr*, %struct.idr** %5, align 8
  %64 = getelementptr inbounds %struct.idr, %struct.idr* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sub nsw i32 %65, 1
  %67 = call i32 @idr_pos(i32 %62, i32 %66)
  %68 = shl i32 1, %67
  %69 = icmp slt i32 %61, %68
  br label %70

70:                                               ; preds = %56, %50
  %71 = phi i1 [ true, %50 ], [ %69, %56 ]
  br i1 %71, label %72, label %121

72:                                               ; preds = %70
  %73 = load %struct.idr*, %struct.idr** %5, align 8
  %74 = getelementptr inbounds %struct.idr, %struct.idr* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @MAX_LEVEL, align 4
  %77 = add nsw i32 %76, 1
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load i32, i32* @ENOSPC, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %12, align 4
  br label %267

82:                                               ; preds = %72
  %83 = load %struct.idr*, %struct.idr** %5, align 8
  %84 = call i8* @idr_get(%struct.idr* %83)
  %85 = bitcast i8* %84 to %struct.idr_layer*
  store %struct.idr_layer* %85, %struct.idr_layer** %11, align 8
  %86 = load %struct.idr_layer*, %struct.idr_layer** %11, align 8
  %87 = icmp eq %struct.idr_layer* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %267

89:                                               ; preds = %82
  %90 = load %struct.idr*, %struct.idr** %5, align 8
  %91 = getelementptr inbounds %struct.idr, %struct.idr* %90, i32 0, i32 1
  %92 = load %struct.idr_layer*, %struct.idr_layer** %91, align 8
  %93 = load %struct.idr_layer*, %struct.idr_layer** %11, align 8
  %94 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %93, i32 0, i32 1
  %95 = load %struct.idr_layer**, %struct.idr_layer*** %94, align 8
  %96 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %95, i64 0
  store %struct.idr_layer* %92, %struct.idr_layer** %96, align 8
  %97 = load %struct.idr*, %struct.idr** %5, align 8
  %98 = getelementptr inbounds %struct.idr, %struct.idr* %97, i32 0, i32 1
  %99 = load %struct.idr_layer*, %struct.idr_layer** %98, align 8
  %100 = icmp ne %struct.idr_layer* %99, null
  br i1 %100, label %101, label %113

101:                                              ; preds = %89
  %102 = load %struct.idr*, %struct.idr** %5, align 8
  %103 = getelementptr inbounds %struct.idr, %struct.idr* %102, i32 0, i32 1
  %104 = load %struct.idr_layer*, %struct.idr_layer** %103, align 8
  %105 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %101
  %109 = load %struct.idr_layer*, %struct.idr_layer** %11, align 8
  %110 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = and i32 %111, -2
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %108, %101, %89
  %114 = load %struct.idr_layer*, %struct.idr_layer** %11, align 8
  %115 = load %struct.idr*, %struct.idr** %5, align 8
  %116 = getelementptr inbounds %struct.idr, %struct.idr* %115, i32 0, i32 1
  store %struct.idr_layer* %114, %struct.idr_layer** %116, align 8
  %117 = load %struct.idr*, %struct.idr** %5, align 8
  %118 = getelementptr inbounds %struct.idr, %struct.idr* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 8
  br label %50

121:                                              ; preds = %70
  %122 = load %struct.idr*, %struct.idr** %5, align 8
  %123 = getelementptr inbounds %struct.idr, %struct.idr* %122, i32 0, i32 1
  %124 = load %struct.idr_layer*, %struct.idr_layer** %123, align 8
  store %struct.idr_layer* %124, %struct.idr_layer** %11, align 8
  store i32 0, i32* %16, align 4
  %125 = load %struct.idr*, %struct.idr** %5, align 8
  %126 = getelementptr inbounds %struct.idr, %struct.idr* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = sub nsw i32 %127, 1
  store i32 %128, i32* %13, align 4
  br label %129

129:                                              ; preds = %217, %121
  %130 = load %struct.idr_layer*, %struct.idr_layer** %11, align 8
  %131 = load i32, i32* %13, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %20, i64 %132
  store %struct.idr_layer* %130, %struct.idr_layer** %133, align 8
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* %13, align 4
  %136 = call i32 @idr_pos(i32 %134, i32 %135)
  store i32 %136, i32* %15, align 4
  %137 = load %struct.idr_layer*, %struct.idr_layer** %11, align 8
  %138 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %137, i32 0, i32 0
  %139 = load i32, i32* @IDR_SIZE, align 4
  %140 = load i32, i32* %15, align 4
  %141 = call i32 @find_next_bit(i32* %138, i32 %139, i32 %140)
  store i32 %141, i32* %14, align 4
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* @IDR_SIZE, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %152

145:                                              ; preds = %129
  %146 = load i32, i32* %15, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %145
  %149 = load %struct.idr*, %struct.idr** %5, align 8
  %150 = load %struct.idr_layer*, %struct.idr_layer** %11, align 8
  %151 = call i32 (i8*, %struct.idr*, ...) @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), %struct.idr* %149, %struct.idr_layer* %150)
  br label %152

152:                                              ; preds = %148, %145, %129
  %153 = load i32, i32* %14, align 4
  %154 = load i32, i32* @IDR_SIZE, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %164

156:                                              ; preds = %152
  %157 = load i32, i32* %16, align 4
  %158 = load i32, i32* %13, align 4
  %159 = add nsw i32 %158, 1
  %160 = load i32, i32* @IDR_BITS, align 4
  %161 = mul nsw i32 %159, %160
  %162 = shl i32 1, %161
  %163 = add nsw i32 %157, %162
  store i32 %163, i32* %7, align 4
  br label %27

164:                                              ; preds = %152
  %165 = load i32, i32* %14, align 4
  %166 = load i32, i32* %15, align 4
  %167 = icmp sgt i32 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %164
  store i32 0, i32* %7, align 4
  br label %169

169:                                              ; preds = %168, %164
  %170 = load i32, i32* %14, align 4
  %171 = load i32, i32* %13, align 4
  %172 = load i32, i32* @IDR_BITS, align 4
  %173 = mul nsw i32 %171, %172
  %174 = shl i32 %170, %173
  %175 = load i32, i32* %16, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %16, align 4
  %177 = load i32, i32* %13, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %169
  br label %220

180:                                              ; preds = %169
  %181 = load %struct.idr_layer*, %struct.idr_layer** %11, align 8
  %182 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %181, i32 0, i32 1
  %183 = load %struct.idr_layer**, %struct.idr_layer*** %182, align 8
  %184 = load i32, i32* %14, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %183, i64 %185
  %187 = load %struct.idr_layer*, %struct.idr_layer** %186, align 8
  %188 = icmp eq %struct.idr_layer* %187, null
  br i1 %188, label %189, label %209

189:                                              ; preds = %180
  %190 = load %struct.idr*, %struct.idr** %5, align 8
  %191 = call i8* @idr_get(%struct.idr* %190)
  %192 = bitcast i8* %191 to %struct.idr_layer*
  %193 = load %struct.idr_layer*, %struct.idr_layer** %11, align 8
  %194 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %193, i32 0, i32 1
  %195 = load %struct.idr_layer**, %struct.idr_layer*** %194, align 8
  %196 = load i32, i32* %14, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %195, i64 %197
  store %struct.idr_layer* %192, %struct.idr_layer** %198, align 8
  %199 = load %struct.idr_layer*, %struct.idr_layer** %11, align 8
  %200 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %199, i32 0, i32 1
  %201 = load %struct.idr_layer**, %struct.idr_layer*** %200, align 8
  %202 = load i32, i32* %14, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %201, i64 %203
  %205 = load %struct.idr_layer*, %struct.idr_layer** %204, align 8
  %206 = icmp eq %struct.idr_layer* %205, null
  br i1 %206, label %207, label %208

207:                                              ; preds = %189
  br label %267

208:                                              ; preds = %189
  br label %209

209:                                              ; preds = %208, %180
  %210 = load %struct.idr_layer*, %struct.idr_layer** %11, align 8
  %211 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %210, i32 0, i32 1
  %212 = load %struct.idr_layer**, %struct.idr_layer*** %211, align 8
  %213 = load i32, i32* %14, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %212, i64 %214
  %216 = load %struct.idr_layer*, %struct.idr_layer** %215, align 8
  store %struct.idr_layer* %216, %struct.idr_layer** %11, align 8
  br label %217

217:                                              ; preds = %209
  %218 = load i32, i32* %13, align 4
  %219 = add nsw i32 %218, -1
  store i32 %219, i32* %13, align 4
  br label %129

220:                                              ; preds = %179
  %221 = load i32, i32* %14, align 4
  %222 = shl i32 1, %221
  %223 = xor i32 %222, -1
  %224 = load %struct.idr_layer*, %struct.idr_layer** %11, align 8
  %225 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = and i32 %226, %223
  store i32 %227, i32* %225, align 8
  %228 = load i8*, i8** %6, align 8
  %229 = bitcast i8* %228 to %struct.idr_layer*
  %230 = load %struct.idr_layer*, %struct.idr_layer** %11, align 8
  %231 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %230, i32 0, i32 1
  %232 = load %struct.idr_layer**, %struct.idr_layer*** %231, align 8
  %233 = load i32, i32* %14, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %232, i64 %234
  store %struct.idr_layer* %229, %struct.idr_layer** %235, align 8
  %236 = load i32, i32* %16, align 4
  %237 = load i32*, i32** %8, align 8
  store i32 %236, i32* %237, align 4
  br label %238

238:                                              ; preds = %252, %220
  %239 = load %struct.idr_layer*, %struct.idr_layer** %11, align 8
  %240 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %250

243:                                              ; preds = %238
  %244 = load i32, i32* %13, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %13, align 4
  %246 = load %struct.idr*, %struct.idr** %5, align 8
  %247 = getelementptr inbounds %struct.idr, %struct.idr* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = icmp slt i32 %245, %248
  br label %250

250:                                              ; preds = %243, %238
  %251 = phi i1 [ false, %238 ], [ %249, %243 ]
  br i1 %251, label %252, label %266

252:                                              ; preds = %250
  %253 = load i32, i32* %13, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %20, i64 %254
  %256 = load %struct.idr_layer*, %struct.idr_layer** %255, align 8
  store %struct.idr_layer* %256, %struct.idr_layer** %11, align 8
  %257 = load i32, i32* %16, align 4
  %258 = load i32, i32* %13, align 4
  %259 = call i32 @idr_pos(i32 %257, i32 %258)
  %260 = shl i32 1, %259
  %261 = xor i32 %260, -1
  %262 = load %struct.idr_layer*, %struct.idr_layer** %11, align 8
  %263 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = and i32 %264, %261
  store i32 %265, i32* %263, align 8
  br label %238

266:                                              ; preds = %250
  store i32 0, i32* %12, align 4
  br label %267

267:                                              ; preds = %266, %207, %88, %79, %46
  %268 = load i32, i32* %12, align 4
  %269 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %269)
  ret i32 %268
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mtx_assert(i32*, i32) #2

declare dso_local i32 @idr_pos(i32, i32) #2

declare dso_local i8* @idr_get(%struct.idr*) #2

declare dso_local i32 @find_next_bit(i32*, i32, i32) #2

declare dso_local i32 @panic(i8*, %struct.idr*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
