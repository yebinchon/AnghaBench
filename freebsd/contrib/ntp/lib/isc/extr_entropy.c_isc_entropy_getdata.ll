; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_entropy.c_isc_entropy_getdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_entropy.c_isc_entropy_getdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i64 }

@ISC_SHA1_DIGESTLENGTH = common dso_local global i32 0, align 4
@ISC_ENTROPY_GOODONLY = common dso_local global i32 0, align 4
@ISC_ENTROPY_PARTIAL = common dso_local global i32 0, align 4
@ISC_ENTROPY_BLOCKING = common dso_local global i32 0, align 4
@RND_ENTROPY_THRESHOLD = common dso_local global i32 0, align 4
@THRESHOLD_BITS = common dso_local global i32 0, align 4
@ISC_FALSE = common dso_local global i64 0, align 8
@RND_POOLBYTES = common dso_local global i32 0, align 4
@ISC_R_SUCCESS = common dso_local global i32 0, align 4
@ISC_R_NOENTROPY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isc_entropy_getdata(%struct.TYPE_12__* %0, i8* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %26 = load i32, i32* @ISC_SHA1_DIGESTLENGTH, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %14, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %15, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %31 = call i32 @VALID_ENTROPY(%struct.TYPE_12__* %30)
  %32 = call i32 @REQUIRE(i32 %31)
  %33 = load i8*, i8** %8, align 8
  %34 = icmp ne i8* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i32 @REQUIRE(i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = icmp ugt i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @REQUIRE(i32 %39)
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @ISC_ENTROPY_GOODONLY, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i64 @ISC_TF(i32 %45)
  store i64 %46, i64* %21, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @ISC_ENTROPY_PARTIAL, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i64 @ISC_TF(i32 %51)
  store i64 %52, i64* %22, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @ISC_ENTROPY_BLOCKING, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i64 @ISC_TF(i32 %57)
  store i64 %58, i64* %23, align 8
  %59 = load i64, i64* %22, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %5
  %62 = load i32*, i32** %10, align 8
  %63 = icmp ne i32* %62, null
  br label %64

64:                                               ; preds = %61, %5
  %65 = phi i1 [ true, %5 ], [ %63, %61 ]
  %66 = zext i1 %65 to i32
  %67 = call i32 @REQUIRE(i32 %66)
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  %70 = call i32 @LOCK(i32* %69)
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %16, align 4
  %72 = load i8*, i8** %8, align 8
  store i8* %72, i8** %20, align 8
  store i32 0, i32* %19, align 4
  br label %73

73:                                               ; preds = %181, %64
  %74 = load i32, i32* %16, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %207

76:                                               ; preds = %73
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* @RND_ENTROPY_THRESHOLD, align 4
  %79 = call i32 @ISC_MIN(i32 %77, i32 %78)
  store i32 %79, i32* %18, align 4
  %80 = load i64, i64* %21, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %117

82:                                               ; preds = %76
  %83 = load i32, i32* %16, align 4
  %84 = mul nsw i32 %83, 8
  %85 = load i32, i32* %18, align 4
  %86 = mul nsw i32 %85, 8
  %87 = call i32 @ISC_MAX(i32 %84, i32 %86)
  store i32 %87, i32* %24, align 4
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @THRESHOLD_BITS, align 4
  %93 = icmp uge i32 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %82
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %96 = load i32, i32* %24, align 4
  %97 = load i64, i64* @ISC_FALSE, align 8
  %98 = call i32 @fillpool(%struct.TYPE_12__* %95, i32 %96, i64 %97)
  br label %104

99:                                               ; preds = %82
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %101 = load i32, i32* %24, align 4
  %102 = load i64, i64* %23, align 8
  %103 = call i32 @fillpool(%struct.TYPE_12__* %100, i32 %101, i64 %102)
  br label %104

104:                                              ; preds = %99, %94
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @THRESHOLD_BITS, align 4
  %110 = icmp ult i32 %108, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %104
  %112 = load i64, i64* %22, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %111
  br label %223

115:                                              ; preds = %111
  br label %208

116:                                              ; preds = %104
  br label %142

117:                                              ; preds = %76
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @THRESHOLD_BITS, align 4
  %122 = icmp ult i32 %120, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %117
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %125 = load i32, i32* @THRESHOLD_BITS, align 4
  %126 = load i64, i64* %23, align 8
  %127 = call i32 @fillpool(%struct.TYPE_12__* %124, i32 %125, i64 %126)
  br label %132

128:                                              ; preds = %117
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %130 = load i64, i64* @ISC_FALSE, align 8
  %131 = call i32 @fillpool(%struct.TYPE_12__* %129, i32 0, i64 %130)
  br label %132

132:                                              ; preds = %128, %123
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @THRESHOLD_BITS, align 4
  %137 = icmp ult i32 %135, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %132
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %140 = call i32 @reseed(%struct.TYPE_12__* %139)
  br label %141

141:                                              ; preds = %138, %132
  br label %142

142:                                              ; preds = %141, %116
  %143 = call i32 @isc_sha1_init(i32* %13)
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = inttoptr i64 %147 to i8*
  %149 = load i32, i32* @RND_POOLBYTES, align 4
  %150 = call i32 @isc_sha1_update(i32* %13, i8* %148, i32 %149)
  %151 = call i32 @isc_sha1_final(i32* %13, i8* %29)
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %153 = load i32, i32* @ISC_SHA1_DIGESTLENGTH, align 4
  %154 = call i32 @entropypool_adddata(%struct.TYPE_12__* %152, i8* %29, i32 %153, i32 0)
  store i32 0, i32* %12, align 4
  br label %155

155:                                              ; preds = %178, %142
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* %18, align 4
  %158 = icmp ult i32 %156, %157
  br i1 %158, label %159, label %181

159:                                              ; preds = %155
  %160 = load i32, i32* %12, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %29, i64 %161
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  %165 = load i32, i32* %12, align 4
  %166 = load i32, i32* @RND_ENTROPY_THRESHOLD, align 4
  %167 = add i32 %165, %166
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %29, i64 %168
  %170 = load i8, i8* %169, align 1
  %171 = zext i8 %170 to i32
  %172 = xor i32 %164, %171
  %173 = trunc i32 %172 to i8
  %174 = load i8*, i8** %20, align 8
  %175 = load i32, i32* %12, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %174, i64 %176
  store i8 %173, i8* %177, align 1
  br label %178

178:                                              ; preds = %159
  %179 = load i32, i32* %12, align 4
  %180 = add i32 %179, 1
  store i32 %180, i32* %12, align 4
  br label %155

181:                                              ; preds = %155
  %182 = load i32, i32* %18, align 4
  %183 = load i8*, i8** %20, align 8
  %184 = sext i32 %182 to i64
  %185 = getelementptr inbounds i8, i8* %183, i64 %184
  store i8* %185, i8** %20, align 8
  %186 = load i32, i32* %18, align 4
  %187 = load i32, i32* %16, align 4
  %188 = sub nsw i32 %187, %186
  store i32 %188, i32* %16, align 4
  %189 = load i32, i32* %18, align 4
  %190 = mul nsw i32 %189, 8
  store i32 %190, i32* %17, align 4
  %191 = load i32, i32* %17, align 4
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @ISC_MIN(i32 %191, i32 %195)
  store i32 %196, i32* %17, align 4
  %197 = load i32, i32* %17, align 4
  %198 = load i32, i32* %19, align 4
  %199 = add nsw i32 %198, %197
  store i32 %199, i32* %19, align 4
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %201 = load i32, i32* %17, align 4
  %202 = call i32 @subtract_entropy(%struct.TYPE_12__* %200, i32 %201)
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %204 = load i32, i32* %18, align 4
  %205 = mul nsw i32 %204, 8
  %206 = call i32 @add_pseudo(%struct.TYPE_12__* %203, i32 %205)
  br label %73

207:                                              ; preds = %73
  br label %208

208:                                              ; preds = %207, %115
  %209 = trunc i64 %27 to i32
  %210 = call i32 @memset(i8* %29, i32 0, i32 %209)
  %211 = load i32*, i32** %10, align 8
  %212 = icmp ne i32* %211, null
  br i1 %212, label %213, label %218

213:                                              ; preds = %208
  %214 = load i32, i32* %9, align 4
  %215 = load i32, i32* %16, align 4
  %216 = sub i32 %214, %215
  %217 = load i32*, i32** %10, align 8
  store i32 %216, i32* %217, align 4
  br label %218

218:                                              ; preds = %213, %208
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 1
  %221 = call i32 @UNLOCK(i32* %220)
  %222 = load i32, i32* @ISC_R_SUCCESS, align 4
  store i32 %222, i32* %6, align 4
  store i32 1, i32* %25, align 4
  br label %241

223:                                              ; preds = %114
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %225 = load i32, i32* %19, align 4
  %226 = call i32 @add_entropy(%struct.TYPE_12__* %224, i32 %225)
  %227 = load i8*, i8** %8, align 8
  %228 = load i32, i32* %9, align 4
  %229 = call i32 @memset(i8* %227, i32 0, i32 %228)
  %230 = trunc i64 %27 to i32
  %231 = call i32 @memset(i8* %29, i32 0, i32 %230)
  %232 = load i32*, i32** %10, align 8
  %233 = icmp ne i32* %232, null
  br i1 %233, label %234, label %236

234:                                              ; preds = %223
  %235 = load i32*, i32** %10, align 8
  store i32 0, i32* %235, align 4
  br label %236

236:                                              ; preds = %234, %223
  %237 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 1
  %239 = call i32 @UNLOCK(i32* %238)
  %240 = load i32, i32* @ISC_R_NOENTROPY, align 4
  store i32 %240, i32* %6, align 4
  store i32 1, i32* %25, align 4
  br label %241

241:                                              ; preds = %236, %218
  %242 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %242)
  %243 = load i32, i32* %6, align 4
  ret i32 %243
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @REQUIRE(i32) #2

declare dso_local i32 @VALID_ENTROPY(%struct.TYPE_12__*) #2

declare dso_local i64 @ISC_TF(i32) #2

declare dso_local i32 @LOCK(i32*) #2

declare dso_local i32 @ISC_MIN(i32, i32) #2

declare dso_local i32 @ISC_MAX(i32, i32) #2

declare dso_local i32 @fillpool(%struct.TYPE_12__*, i32, i64) #2

declare dso_local i32 @reseed(%struct.TYPE_12__*) #2

declare dso_local i32 @isc_sha1_init(i32*) #2

declare dso_local i32 @isc_sha1_update(i32*, i8*, i32) #2

declare dso_local i32 @isc_sha1_final(i32*, i8*) #2

declare dso_local i32 @entropypool_adddata(%struct.TYPE_12__*, i8*, i32, i32) #2

declare dso_local i32 @subtract_entropy(%struct.TYPE_12__*, i32) #2

declare dso_local i32 @add_pseudo(%struct.TYPE_12__*, i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @UNLOCK(i32*) #2

declare dso_local i32 @add_entropy(%struct.TYPE_12__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
