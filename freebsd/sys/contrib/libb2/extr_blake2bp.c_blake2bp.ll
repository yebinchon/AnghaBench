; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libb2/extr_blake2bp.c_blake2bp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libb2/extr_blake2bp.c_blake2bp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@PARALLELISM_DEGREE = common dso_local global i32 0, align 4
@BLAKE2B_OUTBYTES = common dso_local global i32 0, align 4
@BLAKE2B_KEYBYTES = common dso_local global i64 0, align 8
@BLAKE2B_BLOCKBYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blake2bp(i32* %0, i8* %1, i8* %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca [1 x %struct.TYPE_6__], align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %30 = load i32, i32* @PARALLELISM_DEGREE, align 4
  %31 = zext i32 %30 to i64
  %32 = load i32, i32* @BLAKE2B_OUTBYTES, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %14, align 8
  %35 = mul nuw i64 %31, %33
  %36 = alloca i32, i64 %35, align 16
  store i64 %31, i64* %15, align 8
  store i64 %33, i64* %16, align 8
  %37 = load i32, i32* @PARALLELISM_DEGREE, align 4
  %38 = zext i32 %37 to i64
  %39 = alloca [1 x %struct.TYPE_6__], i64 %38, align 16
  store i64 %38, i64* %17, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = icmp eq i8* null, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %6
  %43 = load i64, i64* %12, align 8
  %44 = icmp ugt i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %251

46:                                               ; preds = %42, %6
  %47 = load i32*, i32** %8, align 8
  %48 = icmp eq i32* null, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %251

50:                                               ; preds = %46
  %51 = load i8*, i8** %10, align 8
  %52 = icmp eq i8* null, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i64, i64* %13, align 8
  %55 = icmp ugt i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %251

57:                                               ; preds = %53, %50
  %58 = load i64, i64* %11, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load i64, i64* %11, align 8
  %62 = load i32, i32* @BLAKE2B_OUTBYTES, align 4
  %63 = sext i32 %62 to i64
  %64 = icmp ugt i64 %61, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %60, %57
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %251

66:                                               ; preds = %60
  %67 = load i64, i64* %13, align 8
  %68 = load i64, i64* @BLAKE2B_KEYBYTES, align 8
  %69 = icmp ugt i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %251

71:                                               ; preds = %66
  store i64 0, i64* %20, align 8
  br label %72

72:                                               ; preds = %90, %71
  %73 = load i64, i64* %20, align 8
  %74 = load i32, i32* @PARALLELISM_DEGREE, align 4
  %75 = sext i32 %74 to i64
  %76 = icmp ult i64 %73, %75
  br i1 %76, label %77, label %93

77:                                               ; preds = %72
  %78 = load i64, i64* %20, align 8
  %79 = getelementptr inbounds [1 x %struct.TYPE_6__], [1 x %struct.TYPE_6__]* %39, i64 %78
  %80 = getelementptr inbounds [1 x %struct.TYPE_6__], [1 x %struct.TYPE_6__]* %79, i64 0, i64 0
  %81 = load i64, i64* %11, align 8
  %82 = trunc i64 %81 to i32
  %83 = load i64, i64* %13, align 8
  %84 = trunc i64 %83 to i32
  %85 = load i64, i64* %20, align 8
  %86 = call i64 @blake2bp_init_leaf(%struct.TYPE_6__* %80, i32 %82, i32 %84, i64 %85)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %77
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %251

89:                                               ; preds = %77
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %20, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %20, align 8
  br label %72

93:                                               ; preds = %72
  %94 = load i32, i32* @PARALLELISM_DEGREE, align 4
  %95 = sub nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [1 x %struct.TYPE_6__], [1 x %struct.TYPE_6__]* %39, i64 %96
  %98 = getelementptr inbounds [1 x %struct.TYPE_6__], [1 x %struct.TYPE_6__]* %97, i64 0, i64 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  store i32 1, i32* %99, align 4
  %100 = load i64, i64* %13, align 8
  %101 = icmp ugt i64 %100, 0
  br i1 %101, label %102, label %131

102:                                              ; preds = %93
  %103 = load i32, i32* @BLAKE2B_BLOCKBYTES, align 4
  %104 = zext i32 %103 to i64
  %105 = call i8* @llvm.stacksave()
  store i8* %105, i8** %21, align 8
  %106 = alloca i32, i64 %104, align 16
  store i64 %104, i64* %22, align 8
  %107 = load i32, i32* @BLAKE2B_BLOCKBYTES, align 4
  %108 = call i32 @memset(i32* %106, i32 0, i32 %107)
  %109 = load i8*, i8** %10, align 8
  %110 = load i64, i64* %13, align 8
  %111 = call i32 @memcpy(i32* %106, i8* %109, i64 %110)
  store i64 0, i64* %23, align 8
  br label %112

112:                                              ; preds = %124, %102
  %113 = load i64, i64* %23, align 8
  %114 = load i32, i32* @PARALLELISM_DEGREE, align 4
  %115 = sext i32 %114 to i64
  %116 = icmp ult i64 %113, %115
  br i1 %116, label %117, label %127

117:                                              ; preds = %112
  %118 = load i64, i64* %23, align 8
  %119 = getelementptr inbounds [1 x %struct.TYPE_6__], [1 x %struct.TYPE_6__]* %39, i64 %118
  %120 = getelementptr inbounds [1 x %struct.TYPE_6__], [1 x %struct.TYPE_6__]* %119, i64 0, i64 0
  %121 = load i32, i32* @BLAKE2B_BLOCKBYTES, align 4
  %122 = sext i32 %121 to i64
  %123 = call i32 @blake2b_update(%struct.TYPE_6__* %120, i32* %106, i64 %122)
  br label %124

124:                                              ; preds = %117
  %125 = load i64, i64* %23, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %23, align 8
  br label %112

127:                                              ; preds = %112
  %128 = load i32, i32* @BLAKE2B_BLOCKBYTES, align 4
  %129 = call i32 @secure_zero_memory(i32* %106, i32 %128)
  %130 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %130)
  br label %131

131:                                              ; preds = %127, %93
  store i64 0, i64* %24, align 8
  br label %132

132:                                              ; preds = %215, %131
  %133 = load i64, i64* %24, align 8
  %134 = load i32, i32* @PARALLELISM_DEGREE, align 4
  %135 = sext i32 %134 to i64
  %136 = icmp ult i64 %133, %135
  br i1 %136, label %137, label %218

137:                                              ; preds = %132
  %138 = load i64, i64* %12, align 8
  store i64 %138, i64* %25, align 8
  %139 = load i8*, i8** %9, align 8
  %140 = bitcast i8* %139 to i32*
  store i32* %140, i32** %26, align 8
  %141 = load i64, i64* %24, align 8
  %142 = load i32, i32* @BLAKE2B_BLOCKBYTES, align 4
  %143 = sext i32 %142 to i64
  %144 = mul i64 %141, %143
  %145 = load i32*, i32** %26, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 %144
  store i32* %146, i32** %26, align 8
  br label %147

147:                                              ; preds = %154, %137
  %148 = load i64, i64* %25, align 8
  %149 = load i32, i32* @PARALLELISM_DEGREE, align 4
  %150 = load i32, i32* @BLAKE2B_BLOCKBYTES, align 4
  %151 = mul nsw i32 %149, %150
  %152 = sext i32 %151 to i64
  %153 = icmp uge i64 %148, %152
  br i1 %153, label %154, label %174

154:                                              ; preds = %147
  %155 = load i64, i64* %24, align 8
  %156 = getelementptr inbounds [1 x %struct.TYPE_6__], [1 x %struct.TYPE_6__]* %39, i64 %155
  %157 = getelementptr inbounds [1 x %struct.TYPE_6__], [1 x %struct.TYPE_6__]* %156, i64 0, i64 0
  %158 = load i32*, i32** %26, align 8
  %159 = load i32, i32* @BLAKE2B_BLOCKBYTES, align 4
  %160 = sext i32 %159 to i64
  %161 = call i32 @blake2b_update(%struct.TYPE_6__* %157, i32* %158, i64 %160)
  %162 = load i32, i32* @PARALLELISM_DEGREE, align 4
  %163 = load i32, i32* @BLAKE2B_BLOCKBYTES, align 4
  %164 = mul nsw i32 %162, %163
  %165 = load i32*, i32** %26, align 8
  %166 = sext i32 %164 to i64
  %167 = getelementptr inbounds i32, i32* %165, i64 %166
  store i32* %167, i32** %26, align 8
  %168 = load i32, i32* @PARALLELISM_DEGREE, align 4
  %169 = load i32, i32* @BLAKE2B_BLOCKBYTES, align 4
  %170 = mul nsw i32 %168, %169
  %171 = sext i32 %170 to i64
  %172 = load i64, i64* %25, align 8
  %173 = sub i64 %172, %171
  store i64 %173, i64* %25, align 8
  br label %147

174:                                              ; preds = %147
  %175 = load i64, i64* %25, align 8
  %176 = load i64, i64* %24, align 8
  %177 = load i32, i32* @BLAKE2B_BLOCKBYTES, align 4
  %178 = sext i32 %177 to i64
  %179 = mul i64 %176, %178
  %180 = icmp ugt i64 %175, %179
  br i1 %180, label %181, label %205

181:                                              ; preds = %174
  %182 = load i64, i64* %25, align 8
  %183 = load i64, i64* %24, align 8
  %184 = load i32, i32* @BLAKE2B_BLOCKBYTES, align 4
  %185 = sext i32 %184 to i64
  %186 = mul i64 %183, %185
  %187 = sub i64 %182, %186
  store i64 %187, i64* %27, align 8
  %188 = load i64, i64* %27, align 8
  %189 = load i32, i32* @BLAKE2B_BLOCKBYTES, align 4
  %190 = sext i32 %189 to i64
  %191 = icmp ule i64 %188, %190
  br i1 %191, label %192, label %194

192:                                              ; preds = %181
  %193 = load i64, i64* %27, align 8
  br label %197

194:                                              ; preds = %181
  %195 = load i32, i32* @BLAKE2B_BLOCKBYTES, align 4
  %196 = sext i32 %195 to i64
  br label %197

197:                                              ; preds = %194, %192
  %198 = phi i64 [ %193, %192 ], [ %196, %194 ]
  store i64 %198, i64* %28, align 8
  %199 = load i64, i64* %24, align 8
  %200 = getelementptr inbounds [1 x %struct.TYPE_6__], [1 x %struct.TYPE_6__]* %39, i64 %199
  %201 = getelementptr inbounds [1 x %struct.TYPE_6__], [1 x %struct.TYPE_6__]* %200, i64 0, i64 0
  %202 = load i32*, i32** %26, align 8
  %203 = load i64, i64* %28, align 8
  %204 = call i32 @blake2b_update(%struct.TYPE_6__* %201, i32* %202, i64 %203)
  br label %205

205:                                              ; preds = %197, %174
  %206 = load i64, i64* %24, align 8
  %207 = getelementptr inbounds [1 x %struct.TYPE_6__], [1 x %struct.TYPE_6__]* %39, i64 %206
  %208 = getelementptr inbounds [1 x %struct.TYPE_6__], [1 x %struct.TYPE_6__]* %207, i64 0, i64 0
  %209 = load i64, i64* %24, align 8
  %210 = mul nsw i64 %209, %33
  %211 = getelementptr inbounds i32, i32* %36, i64 %210
  %212 = load i32, i32* @BLAKE2B_OUTBYTES, align 4
  %213 = sext i32 %212 to i64
  %214 = call i32 @blake2b_final(%struct.TYPE_6__* %208, i32* %211, i64 %213)
  br label %215

215:                                              ; preds = %205
  %216 = load i64, i64* %24, align 8
  %217 = add i64 %216, 1
  store i64 %217, i64* %24, align 8
  br label %132

218:                                              ; preds = %132
  %219 = getelementptr inbounds [1 x %struct.TYPE_6__], [1 x %struct.TYPE_6__]* %18, i64 0, i64 0
  %220 = load i64, i64* %11, align 8
  %221 = trunc i64 %220 to i32
  %222 = load i64, i64* %13, align 8
  %223 = trunc i64 %222 to i32
  %224 = call i64 @blake2bp_init_root(%struct.TYPE_6__* %219, i32 %221, i32 %223)
  %225 = icmp slt i64 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %218
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %251

227:                                              ; preds = %218
  %228 = getelementptr inbounds [1 x %struct.TYPE_6__], [1 x %struct.TYPE_6__]* %18, i64 0, i64 0
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 0
  store i32 1, i32* %229, align 4
  store i64 0, i64* %29, align 8
  br label %230

230:                                              ; preds = %243, %227
  %231 = load i64, i64* %29, align 8
  %232 = load i32, i32* @PARALLELISM_DEGREE, align 4
  %233 = sext i32 %232 to i64
  %234 = icmp ult i64 %231, %233
  br i1 %234, label %235, label %246

235:                                              ; preds = %230
  %236 = getelementptr inbounds [1 x %struct.TYPE_6__], [1 x %struct.TYPE_6__]* %18, i64 0, i64 0
  %237 = load i64, i64* %29, align 8
  %238 = mul nsw i64 %237, %33
  %239 = getelementptr inbounds i32, i32* %36, i64 %238
  %240 = load i32, i32* @BLAKE2B_OUTBYTES, align 4
  %241 = sext i32 %240 to i64
  %242 = call i32 @blake2b_update(%struct.TYPE_6__* %236, i32* %239, i64 %241)
  br label %243

243:                                              ; preds = %235
  %244 = load i64, i64* %29, align 8
  %245 = add i64 %244, 1
  store i64 %245, i64* %29, align 8
  br label %230

246:                                              ; preds = %230
  %247 = getelementptr inbounds [1 x %struct.TYPE_6__], [1 x %struct.TYPE_6__]* %18, i64 0, i64 0
  %248 = load i32*, i32** %8, align 8
  %249 = load i64, i64* %11, align 8
  %250 = call i32 @blake2b_final(%struct.TYPE_6__* %247, i32* %248, i64 %249)
  store i32 %250, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %251

251:                                              ; preds = %246, %226, %88, %70, %65, %56, %49, %45
  %252 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %252)
  %253 = load i32, i32* %7, align 4
  ret i32 %253
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @blake2bp_init_leaf(%struct.TYPE_6__*, i32, i32, i64) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @memcpy(i32*, i8*, i64) #2

declare dso_local i32 @blake2b_update(%struct.TYPE_6__*, i32*, i64) #2

declare dso_local i32 @secure_zero_memory(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @blake2b_final(%struct.TYPE_6__*, i32*, i64) #2

declare dso_local i64 @blake2bp_init_root(%struct.TYPE_6__*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
