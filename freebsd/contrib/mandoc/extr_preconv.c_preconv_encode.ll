; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_preconv.c_preconv_encode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_preconv.c_preconv_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i8* }

@MPARSE_UTF8 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"\\[u%.4X]\00", align 1
@MPARSE_LATIN1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @preconv_encode(%struct.buf* %0, i64* %1, %struct.buf* %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.buf*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.buf*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.buf* %0, %struct.buf** %7, align 8
  store i64* %1, i64** %8, align 8
  store %struct.buf* %2, %struct.buf** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.buf*, %struct.buf** %7, align 8
  %16 = getelementptr inbounds %struct.buf, %struct.buf* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load i64*, i64** %8, align 8
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  store i8* %20, i8** %12, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %23, 128
  %25 = trunc i32 %24 to i8
  %26 = call i32 @assert(i8 zeroext %25)
  %27 = load i32*, i32** %11, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MPARSE_UTF8, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %5
  br label %191

33:                                               ; preds = %5
  store i32 1, i32* %13, align 4
  br label %34

34:                                               ; preds = %48, %33
  %35 = load i32, i32* %13, align 4
  %36 = icmp slt i32 %35, 5
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load i8*, i8** %12, align 8
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = load i32, i32* %13, align 4
  %42 = sub nsw i32 7, %41
  %43 = shl i32 1, %42
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br label %46

46:                                               ; preds = %37, %34
  %47 = phi i1 [ false, %34 ], [ %45, %37 ]
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = load i32, i32* %13, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %13, align 4
  br label %34

51:                                               ; preds = %46
  %52 = load i32, i32* %13, align 4
  switch i32 %52, label %76 [
    i32 2, label %53
    i32 3, label %62
    i32 4, label %67
  ]

53:                                               ; preds = %51
  %54 = load i8*, i8** %12, align 8
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = and i32 %56, 31
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp ult i32 %58, 2
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %191

61:                                               ; preds = %53
  br label %77

62:                                               ; preds = %51
  %63 = load i8*, i8** %12, align 8
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = and i32 %65, 15
  store i32 %66, i32* %14, align 4
  br label %77

67:                                               ; preds = %51
  %68 = load i8*, i8** %12, align 8
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = and i32 %70, 7
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp ugt i32 %72, 4
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %191

75:                                               ; preds = %67
  br label %77

76:                                               ; preds = %51
  br label %191

77:                                               ; preds = %75, %62, %61
  %78 = load i8*, i8** %12, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %12, align 8
  %80 = load i32, i32* %13, align 4
  switch i32 %80, label %121 [
    i32 3, label %81
    i32 4, label %101
  ]

81:                                               ; preds = %77
  %82 = load i32, i32* %14, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load i8*, i8** %12, align 8
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = and i32 %87, 32
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %84, %81
  %91 = load i32, i32* %14, align 4
  %92 = icmp eq i32 %91, 13
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load i8*, i8** %12, align 8
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = and i32 %96, 32
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93, %84
  br label %191

100:                                              ; preds = %93, %90
  br label %122

101:                                              ; preds = %77
  %102 = load i32, i32* %14, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %101
  %105 = load i8*, i8** %12, align 8
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = and i32 %107, 48
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %104, %101
  %111 = load i32, i32* %14, align 4
  %112 = icmp eq i32 %111, 4
  br i1 %112, label %113, label %120

113:                                              ; preds = %110
  %114 = load i8*, i8** %12, align 8
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = and i32 %116, 48
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %113, %104
  br label %191

120:                                              ; preds = %113, %110
  br label %122

121:                                              ; preds = %77
  br label %122

122:                                              ; preds = %121, %120, %100
  br label %123

123:                                              ; preds = %134, %122
  %124 = load i32, i32* %13, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %13, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %145

127:                                              ; preds = %123
  %128 = load i8*, i8** %12, align 8
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i32
  %131 = and i32 %130, 192
  %132 = icmp ne i32 %131, 128
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  br label %191

134:                                              ; preds = %127
  %135 = load i32, i32* %14, align 4
  %136 = shl i32 %135, 6
  store i32 %136, i32* %14, align 4
  %137 = load i8*, i8** %12, align 8
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = and i32 %139, 63
  %141 = load i32, i32* %14, align 4
  %142 = add i32 %141, %140
  store i32 %142, i32* %14, align 4
  %143 = load i8*, i8** %12, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %12, align 8
  br label %123

145:                                              ; preds = %123
  %146 = load i32, i32* %14, align 4
  %147 = icmp ugt i32 %146, 127
  %148 = zext i1 %147 to i32
  %149 = trunc i32 %148 to i8
  %150 = call i32 @assert(i8 zeroext %149)
  %151 = load i32, i32* %14, align 4
  %152 = icmp ult i32 %151, 1114112
  %153 = zext i1 %152 to i32
  %154 = trunc i32 %153 to i8
  %155 = call i32 @assert(i8 zeroext %154)
  %156 = load i32, i32* %14, align 4
  %157 = icmp ult i32 %156, 55296
  br i1 %157, label %161, label %158

158:                                              ; preds = %145
  %159 = load i32, i32* %14, align 4
  %160 = icmp ugt i32 %159, 57343
  br label %161

161:                                              ; preds = %158, %145
  %162 = phi i1 [ true, %145 ], [ %160, %158 ]
  %163 = zext i1 %162 to i32
  %164 = trunc i32 %163 to i8
  %165 = call i32 @assert(i8 zeroext %164)
  %166 = load %struct.buf*, %struct.buf** %9, align 8
  %167 = getelementptr inbounds %struct.buf, %struct.buf* %166, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = load i64*, i64** %10, align 8
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds i8, i8* %168, i64 %170
  %172 = load i32, i32* %14, align 4
  %173 = trunc i32 %172 to i8
  %174 = call i64 @snprintf(i8* %171, i32 11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8 zeroext %173)
  %175 = load i64*, i64** %10, align 8
  %176 = load i64, i64* %175, align 8
  %177 = add i64 %176, %174
  store i64 %177, i64* %175, align 8
  %178 = load i8*, i8** %12, align 8
  %179 = load %struct.buf*, %struct.buf** %7, align 8
  %180 = getelementptr inbounds %struct.buf, %struct.buf* %179, i32 0, i32 0
  %181 = load i8*, i8** %180, align 8
  %182 = ptrtoint i8* %178 to i64
  %183 = ptrtoint i8* %181 to i64
  %184 = sub i64 %182, %183
  %185 = load i64*, i64** %8, align 8
  store i64 %184, i64* %185, align 8
  %186 = load i32, i32* @MPARSE_LATIN1, align 4
  %187 = xor i32 %186, -1
  %188 = load i32*, i32** %11, align 8
  %189 = load i32, i32* %188, align 4
  %190 = and i32 %189, %187
  store i32 %190, i32* %188, align 4
  store i32 1, i32* %6, align 4
  br label %222

191:                                              ; preds = %133, %119, %99, %76, %74, %60, %32
  %192 = load i32*, i32** %11, align 8
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @MPARSE_LATIN1, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %198, label %197

197:                                              ; preds = %191
  store i32 0, i32* %6, align 4
  br label %222

198:                                              ; preds = %191
  %199 = load %struct.buf*, %struct.buf** %9, align 8
  %200 = getelementptr inbounds %struct.buf, %struct.buf* %199, i32 0, i32 0
  %201 = load i8*, i8** %200, align 8
  %202 = load i64*, i64** %10, align 8
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds i8, i8* %201, i64 %203
  %205 = load %struct.buf*, %struct.buf** %7, align 8
  %206 = getelementptr inbounds %struct.buf, %struct.buf* %205, i32 0, i32 0
  %207 = load i8*, i8** %206, align 8
  %208 = load i64*, i64** %8, align 8
  %209 = load i64, i64* %208, align 8
  %210 = add i64 %209, 1
  store i64 %210, i64* %208, align 8
  %211 = getelementptr inbounds i8, i8* %207, i64 %209
  %212 = load i8, i8* %211, align 1
  %213 = call i64 @snprintf(i8* %204, i32 11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8 zeroext %212)
  %214 = load i64*, i64** %10, align 8
  %215 = load i64, i64* %214, align 8
  %216 = add i64 %215, %213
  store i64 %216, i64* %214, align 8
  %217 = load i32, i32* @MPARSE_UTF8, align 4
  %218 = xor i32 %217, -1
  %219 = load i32*, i32** %11, align 8
  %220 = load i32, i32* %219, align 4
  %221 = and i32 %220, %218
  store i32 %221, i32* %219, align 4
  store i32 1, i32* %6, align 4
  br label %222

222:                                              ; preds = %198, %197, %161
  %223 = load i32, i32* %6, align 4
  ret i32 %223
}

declare dso_local i32 @assert(i8 zeroext) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
