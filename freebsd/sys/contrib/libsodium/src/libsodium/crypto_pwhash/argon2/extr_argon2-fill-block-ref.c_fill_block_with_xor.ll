; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_pwhash/argon2/extr_argon2-fill-block-ref.c_fill_block_with_xor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_pwhash/argon2/extr_argon2-fill-block-ref.c_fill_block_with_xor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*)* @fill_block_with_xor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_block_with_xor(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__, align 8
  %8 = alloca %struct.TYPE_9__, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %6, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %11 = call i32 @copy_block(%struct.TYPE_9__* %7, %struct.TYPE_9__* %10)
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = call i32 @xor_block(%struct.TYPE_9__* %7, %struct.TYPE_9__* %12)
  %14 = call i32 @copy_block(%struct.TYPE_9__* %8, %struct.TYPE_9__* %7)
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %16 = call i32 @xor_block(%struct.TYPE_9__* %8, %struct.TYPE_9__* %15)
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %149, %3
  %18 = load i32, i32* %9, align 4
  %19 = icmp ult i32 %18, 8
  br i1 %19, label %20, label %152

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = mul i32 16, %23
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = mul i32 16, %30
  %32 = add i32 %31, 1
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %29, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = mul i32 16, %38
  %40 = add i32 %39, 2
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %37, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = mul i32 16, %46
  %48 = add i32 %47, 3
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = mul i32 16, %54
  %56 = add i32 %55, 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %53, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = mul i32 16, %62
  %64 = add i32 %63, 5
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %61, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = mul i32 16, %70
  %72 = add i32 %71, 6
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %69, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = mul i32 16, %78
  %80 = add i32 %79, 7
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %77, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = mul i32 16, %86
  %88 = add i32 %87, 8
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %85, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = mul i32 16, %94
  %96 = add i32 %95, 9
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %93, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = mul i32 16, %102
  %104 = add i32 %103, 10
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %101, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = mul i32 16, %110
  %112 = add i32 %111, 11
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %109, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = mul i32 16, %118
  %120 = add i32 %119, 12
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %117, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = mul i32 16, %126
  %128 = add i32 %127, 13
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %125, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %9, align 4
  %135 = mul i32 16, %134
  %136 = add i32 %135, 14
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %133, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %9, align 4
  %143 = mul i32 16, %142
  %144 = add i32 %143, 15
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %141, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @BLAKE2_ROUND_NOMSG(i32 %27, i32 %35, i32 %43, i32 %51, i32 %59, i32 %67, i32 %75, i32 %83, i32 %91, i32 %99, i32 %107, i32 %115, i32 %123, i32 %131, i32 %139, i32 %147)
  br label %149

149:                                              ; preds = %20
  %150 = load i32, i32* %9, align 4
  %151 = add i32 %150, 1
  store i32 %151, i32* %9, align 4
  br label %17

152:                                              ; preds = %17
  store i32 0, i32* %9, align 4
  br label %153

153:                                              ; preds = %285, %152
  %154 = load i32, i32* %9, align 4
  %155 = icmp ult i32 %154, 8
  br i1 %155, label %156, label %288

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %9, align 4
  %160 = mul i32 2, %159
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %158, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %9, align 4
  %167 = mul i32 2, %166
  %168 = add i32 %167, 1
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %165, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %9, align 4
  %175 = mul i32 2, %174
  %176 = add i32 %175, 16
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %173, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %9, align 4
  %183 = mul i32 2, %182
  %184 = add i32 %183, 17
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %181, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %9, align 4
  %191 = mul i32 2, %190
  %192 = add i32 %191, 32
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %189, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* %9, align 4
  %199 = mul i32 2, %198
  %200 = add i32 %199, 33
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %197, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %9, align 4
  %207 = mul i32 2, %206
  %208 = add i32 %207, 48
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %205, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %9, align 4
  %215 = mul i32 2, %214
  %216 = add i32 %215, 49
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %213, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %221 = load i32*, i32** %220, align 8
  %222 = load i32, i32* %9, align 4
  %223 = mul i32 2, %222
  %224 = add i32 %223, 64
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %221, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  %230 = load i32, i32* %9, align 4
  %231 = mul i32 2, %230
  %232 = add i32 %231, 65
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %229, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* %9, align 4
  %239 = mul i32 2, %238
  %240 = add i32 %239, 80
  %241 = zext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %237, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* %9, align 4
  %247 = mul i32 2, %246
  %248 = add i32 %247, 81
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %245, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %253 = load i32*, i32** %252, align 8
  %254 = load i32, i32* %9, align 4
  %255 = mul i32 2, %254
  %256 = add i32 %255, 96
  %257 = zext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %253, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %261 = load i32*, i32** %260, align 8
  %262 = load i32, i32* %9, align 4
  %263 = mul i32 2, %262
  %264 = add i32 %263, 97
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %261, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %269 = load i32*, i32** %268, align 8
  %270 = load i32, i32* %9, align 4
  %271 = mul i32 2, %270
  %272 = add i32 %271, 112
  %273 = zext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %269, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %277 = load i32*, i32** %276, align 8
  %278 = load i32, i32* %9, align 4
  %279 = mul i32 2, %278
  %280 = add i32 %279, 113
  %281 = zext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %277, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @BLAKE2_ROUND_NOMSG(i32 %163, i32 %171, i32 %179, i32 %187, i32 %195, i32 %203, i32 %211, i32 %219, i32 %227, i32 %235, i32 %243, i32 %251, i32 %259, i32 %267, i32 %275, i32 %283)
  br label %285

285:                                              ; preds = %156
  %286 = load i32, i32* %9, align 4
  %287 = add i32 %286, 1
  store i32 %287, i32* %9, align 4
  br label %153

288:                                              ; preds = %153
  %289 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %290 = call i32 @copy_block(%struct.TYPE_9__* %289, %struct.TYPE_9__* %8)
  %291 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %292 = call i32 @xor_block(%struct.TYPE_9__* %291, %struct.TYPE_9__* %7)
  ret void
}

declare dso_local i32 @copy_block(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @xor_block(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @BLAKE2_ROUND_NOMSG(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
