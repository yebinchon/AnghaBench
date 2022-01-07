; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/rijndael/extr_rijndael-api-fst.c_rijndael_padDecrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/rijndael/extr_rijndael-api-fst.c_rijndael_padDecrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_5__ = type { i64, i32, i32 }

@DIR_ENCRYPT = common dso_local global i64 0, align 8
@BAD_CIPHER_STATE = common dso_local global i32 0, align 4
@BAD_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rijndael_padDecrypt(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [16 x i32], align 16
  %17 = alloca [4 x i32], align 16
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %19 = icmp eq %struct.TYPE_6__* %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %5
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %22 = icmp eq %struct.TYPE_5__* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DIR_ENCRYPT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23, %20, %5
  %30 = load i32, i32* @BAD_CIPHER_STATE, align 4
  store i32 %30, i32* %6, align 4
  br label %251

31:                                               ; preds = %23
  %32 = load i32*, i32** %9, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %10, align 4
  %36 = icmp sle i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34, %31
  store i32 0, i32* %6, align 4
  br label %251

38:                                               ; preds = %34
  %39 = load i32, i32* %10, align 4
  %40 = srem i32 %39, 16
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @BAD_DATA, align 4
  store i32 %43, i32* %6, align 4
  br label %251

44:                                               ; preds = %38
  %45 = load i32, i32* %10, align 4
  %46 = sdiv i32 %45, 16
  store i32 %46, i32* %13, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %240 [
    i32 128, label %50
    i32 129, label %114
  ]

50:                                               ; preds = %44
  %51 = load i32, i32* %13, align 4
  %52 = sub nsw i32 %51, 1
  store i32 %52, i32* %12, align 4
  br label %53

53:                                               ; preds = %70, %50
  %54 = load i32, i32* %12, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %53
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = call i32 @rijndaelDecrypt(i32 %59, i32 %62, i32* %63, i32* %64)
  %66 = load i32*, i32** %9, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 16
  store i32* %67, i32** %9, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 16
  store i32* %69, i32** %11, align 8
  br label %70

70:                                               ; preds = %56
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %12, align 4
  br label %53

73:                                               ; preds = %53
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 0
  %82 = call i32 @rijndaelDecrypt(i32 %76, i32 %79, i32* %80, i32* %81)
  %83 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 15
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = icmp sge i32 %85, 16
  br i1 %86, label %87, label %89

87:                                               ; preds = %73
  %88 = load i32, i32* @BAD_DATA, align 4
  store i32 %88, i32* %15, align 4
  br label %247

89:                                               ; preds = %73
  %90 = load i32, i32* %14, align 4
  %91 = sub nsw i32 16, %90
  store i32 %91, i32* %12, align 4
  br label %92

92:                                               ; preds = %105, %89
  %93 = load i32, i32* %12, align 4
  %94 = icmp slt i32 %93, 16
  br i1 %94, label %95, label %108

95:                                               ; preds = %92
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %14, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = load i32, i32* @BAD_DATA, align 4
  store i32 %103, i32* %15, align 4
  br label %247

104:                                              ; preds = %95
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %12, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %12, align 4
  br label %92

108:                                              ; preds = %92
  %109 = load i32*, i32** %11, align 8
  %110 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 0
  %111 = load i32, i32* %14, align 4
  %112 = sub nsw i32 16, %111
  %113 = call i32 @memcpy(i32* %109, i32* %110, i32 %112)
  br label %242

114:                                              ; preds = %44
  %115 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @memcpy(i32* %115, i32* %118, i32 16)
  %120 = load i32, i32* %13, align 4
  %121 = sub nsw i32 %120, 1
  store i32 %121, i32* %12, align 4
  br label %122

122:                                              ; preds = %169, %114
  %123 = load i32, i32* %12, align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %172

125:                                              ; preds = %122
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load i32*, i32** %9, align 8
  %133 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 0
  %134 = call i32 @rijndaelDecrypt(i32 %128, i32 %131, i32* %132, i32* %133)
  %135 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %136 = load i32, i32* %135, align 16
  %137 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 0
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load i32, i32* %138, align 16
  %140 = xor i32 %139, %136
  store i32 %140, i32* %138, align 16
  %141 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 1
  %142 = load i32, i32* %141, align 4
  %143 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 0
  %144 = getelementptr inbounds i32, i32* %143, i64 1
  %145 = load i32, i32* %144, align 4
  %146 = xor i32 %145, %142
  store i32 %146, i32* %144, align 4
  %147 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 2
  %148 = load i32, i32* %147, align 8
  %149 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 0
  %150 = getelementptr inbounds i32, i32* %149, i64 2
  %151 = load i32, i32* %150, align 8
  %152 = xor i32 %151, %148
  store i32 %152, i32* %150, align 8
  %153 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 3
  %154 = load i32, i32* %153, align 4
  %155 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 0
  %156 = getelementptr inbounds i32, i32* %155, i64 3
  %157 = load i32, i32* %156, align 4
  %158 = xor i32 %157, %154
  store i32 %158, i32* %156, align 4
  %159 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %160 = load i32*, i32** %9, align 8
  %161 = call i32 @memcpy(i32* %159, i32* %160, i32 16)
  %162 = load i32*, i32** %11, align 8
  %163 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 0
  %164 = call i32 @memcpy(i32* %162, i32* %163, i32 16)
  %165 = load i32*, i32** %9, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 16
  store i32* %166, i32** %9, align 8
  %167 = load i32*, i32** %11, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 16
  store i32* %168, i32** %11, align 8
  br label %169

169:                                              ; preds = %125
  %170 = load i32, i32* %12, align 4
  %171 = add nsw i32 %170, -1
  store i32 %171, i32* %12, align 4
  br label %122

172:                                              ; preds = %122
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = load i32*, i32** %9, align 8
  %180 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 0
  %181 = call i32 @rijndaelDecrypt(i32 %175, i32 %178, i32* %179, i32* %180)
  %182 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %183 = load i32, i32* %182, align 16
  %184 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 0
  %185 = getelementptr inbounds i32, i32* %184, i64 0
  %186 = load i32, i32* %185, align 16
  %187 = xor i32 %186, %183
  store i32 %187, i32* %185, align 16
  %188 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 1
  %189 = load i32, i32* %188, align 4
  %190 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 0
  %191 = getelementptr inbounds i32, i32* %190, i64 1
  %192 = load i32, i32* %191, align 4
  %193 = xor i32 %192, %189
  store i32 %193, i32* %191, align 4
  %194 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 2
  %195 = load i32, i32* %194, align 8
  %196 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 0
  %197 = getelementptr inbounds i32, i32* %196, i64 2
  %198 = load i32, i32* %197, align 8
  %199 = xor i32 %198, %195
  store i32 %199, i32* %197, align 8
  %200 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 3
  %201 = load i32, i32* %200, align 4
  %202 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 0
  %203 = getelementptr inbounds i32, i32* %202, i64 3
  %204 = load i32, i32* %203, align 4
  %205 = xor i32 %204, %201
  store i32 %205, i32* %203, align 4
  %206 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 15
  %207 = load i32, i32* %206, align 4
  store i32 %207, i32* %14, align 4
  %208 = load i32, i32* %14, align 4
  %209 = icmp sle i32 %208, 0
  br i1 %209, label %213, label %210

210:                                              ; preds = %172
  %211 = load i32, i32* %14, align 4
  %212 = icmp sgt i32 %211, 16
  br i1 %212, label %213, label %215

213:                                              ; preds = %210, %172
  %214 = load i32, i32* @BAD_DATA, align 4
  store i32 %214, i32* %15, align 4
  br label %247

215:                                              ; preds = %210
  %216 = load i32, i32* %14, align 4
  %217 = sub nsw i32 16, %216
  store i32 %217, i32* %12, align 4
  br label %218

218:                                              ; preds = %231, %215
  %219 = load i32, i32* %12, align 4
  %220 = icmp slt i32 %219, 16
  br i1 %220, label %221, label %234

221:                                              ; preds = %218
  %222 = load i32, i32* %12, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %14, align 4
  %227 = icmp ne i32 %225, %226
  br i1 %227, label %228, label %230

228:                                              ; preds = %221
  %229 = load i32, i32* @BAD_DATA, align 4
  store i32 %229, i32* %15, align 4
  br label %247

230:                                              ; preds = %221
  br label %231

231:                                              ; preds = %230
  %232 = load i32, i32* %12, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %12, align 4
  br label %218

234:                                              ; preds = %218
  %235 = load i32*, i32** %11, align 8
  %236 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 0
  %237 = load i32, i32* %14, align 4
  %238 = sub nsw i32 16, %237
  %239 = call i32 @memcpy(i32* %235, i32* %236, i32 %238)
  br label %242

240:                                              ; preds = %44
  %241 = load i32, i32* @BAD_CIPHER_STATE, align 4
  store i32 %241, i32* %6, align 4
  br label %251

242:                                              ; preds = %234, %108
  %243 = load i32, i32* %13, align 4
  %244 = mul nsw i32 16, %243
  %245 = load i32, i32* %14, align 4
  %246 = sub nsw i32 %244, %245
  store i32 %246, i32* %15, align 4
  br label %247

247:                                              ; preds = %242, %228, %213, %102, %87
  %248 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 0
  %249 = call i32 @explicit_bzero(i32* %248, i32 64)
  %250 = load i32, i32* %15, align 4
  store i32 %250, i32* %6, align 4
  br label %251

251:                                              ; preds = %247, %240, %42, %37, %29
  %252 = load i32, i32* %6, align 4
  ret i32 %252
}

declare dso_local i32 @rijndaelDecrypt(i32, i32, i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @explicit_bzero(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
