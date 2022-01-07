; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_b.c_pmatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_b.c_pmatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32**, i32, i32**, i64*, i64 }

@patbeg = common dso_local global i8* null, align 8
@patlen = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"out of space in pmatch\00", align 1
@NCHARS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmatch(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to i64*
  store i64* %13, i64** %8, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = call i32 @makeinit(%struct.TYPE_5__* %19, i32 1)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  br label %27

23:                                               ; preds = %2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %23, %18
  %28 = load i64*, i64** %8, align 8
  %29 = bitcast i64* %28 to i8*
  store i8* %29, i8** @patbeg, align 8
  store i32 -1, i32* @patlen, align 4
  br label %30

30:                                               ; preds = %211, %27
  %31 = load i64*, i64** %8, align 8
  store i64* %31, i64** %9, align 8
  br label %32

32:                                               ; preds = %81, %30
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 4
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %32
  %42 = load i64*, i64** %9, align 8
  %43 = load i64*, i64** %8, align 8
  %44 = ptrtoint i64* %42 to i64
  %45 = ptrtoint i64* %43 to i64
  %46 = sub i64 %44, %45
  %47 = sdiv exact i64 %46, 8
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* @patlen, align 4
  br label %49

49:                                               ; preds = %41, %32
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32**, i32*** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = load i64*, i64** %9, align 8
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %49
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %6, align 4
  br label %70

64:                                               ; preds = %49
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i64*, i64** %9, align 8
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @cgoto(%struct.TYPE_5__* %65, i32 %66, i64 %68)
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %64, %62
  %71 = load i32, i32* %6, align 4
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load i32, i32* @patlen, align 4
  %75 = icmp sge i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i64*, i64** %8, align 8
  %78 = bitcast i64* %77 to i8*
  store i8* %78, i8** @patbeg, align 8
  store i32 1, i32* %3, align 4
  br label %217

79:                                               ; preds = %73
  br label %111

80:                                               ; preds = %70
  br label %81

81:                                               ; preds = %80
  %82 = load i64*, i64** %9, align 8
  %83 = getelementptr inbounds i64, i64* %82, i32 1
  store i64* %83, i64** %9, align 8
  %84 = load i64, i64* %82, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %32, label %86

86:                                               ; preds = %81
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 4
  %89 = load i64*, i64** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %86
  %96 = load i64*, i64** %9, align 8
  %97 = load i64*, i64** %8, align 8
  %98 = ptrtoint i64* %96 to i64
  %99 = ptrtoint i64* %97 to i64
  %100 = sub i64 %98, %99
  %101 = sdiv exact i64 %100, 8
  %102 = sub nsw i64 %101, 1
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* @patlen, align 4
  br label %104

104:                                              ; preds = %95, %86
  %105 = load i32, i32* @patlen, align 4
  %106 = icmp sge i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i64*, i64** %8, align 8
  %109 = bitcast i64* %108 to i8*
  store i8* %109, i8** @patbeg, align 8
  store i32 1, i32* %3, align 4
  br label %217

110:                                              ; preds = %104
  br label %111

111:                                              ; preds = %110, %79
  store i32 2, i32* %6, align 4
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 5
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %210

116:                                              ; preds = %111
  store i32 2, i32* %10, align 4
  br label %117

117:                                              ; preds = %132, %116
  %118 = load i32, i32* %10, align 4
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = icmp sle i32 %118, %121
  br i1 %122, label %123, label %135

123:                                              ; preds = %117
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 3
  %126 = load i32**, i32*** %125, align 8
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32*, i32** %126, i64 %128
  %130 = load i32*, i32** %129, align 8
  %131 = call i32 @xfree(i32* %130)
  br label %132

132:                                              ; preds = %123
  %133 = load i32, i32* %10, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %10, align 4
  br label %117

135:                                              ; preds = %117
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 3
  %138 = load i32**, i32*** %137, align 8
  %139 = getelementptr inbounds i32*, i32** %138, i64 0
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %11, align 4
  %142 = load i32, i32* %11, align 4
  %143 = add nsw i32 %142, 1
  %144 = call i64 @calloc(i32 %143, i32 4)
  %145 = inttoptr i64 %144 to i32*
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 3
  %148 = load i32**, i32*** %147, align 8
  %149 = getelementptr inbounds i32*, i32** %148, i64 2
  store i32* %145, i32** %149, align 8
  %150 = icmp eq i32* %145, null
  br i1 %150, label %151, label %153

151:                                              ; preds = %135
  %152 = call i32 @overflo(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %153

153:                                              ; preds = %151, %135
  store i32 0, i32* %10, align 4
  br label %154

154:                                              ; preds = %176, %153
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* %11, align 4
  %157 = icmp sle i32 %155, %156
  br i1 %157, label %158, label %179

158:                                              ; preds = %154
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 3
  %161 = load i32**, i32*** %160, align 8
  %162 = getelementptr inbounds i32*, i32** %161, i64 0
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %10, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 3
  %170 = load i32**, i32*** %169, align 8
  %171 = getelementptr inbounds i32*, i32** %170, i64 2
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %10, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  store i32 %167, i32* %175, align 4
  br label %176

176:                                              ; preds = %158
  %177 = load i32, i32* %10, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %10, align 4
  br label %154

179:                                              ; preds = %154
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 2
  store i32 2, i32* %181, align 8
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  store i32 2, i32* %183, align 8
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 4
  %186 = load i64*, i64** %185, align 8
  %187 = getelementptr inbounds i64, i64* %186, i64 0
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 4
  %191 = load i64*, i64** %190, align 8
  %192 = getelementptr inbounds i64, i64* %191, i64 2
  store i64 %188, i64* %192, align 8
  store i32 0, i32* %10, align 4
  br label %193

193:                                              ; preds = %206, %179
  %194 = load i32, i32* %10, align 4
  %195 = load i32, i32* @NCHARS, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %209

197:                                              ; preds = %193
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 1
  %200 = load i32**, i32*** %199, align 8
  %201 = getelementptr inbounds i32*, i32** %200, i64 2
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %10, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  store i32 0, i32* %205, align 4
  br label %206

206:                                              ; preds = %197
  %207 = load i32, i32* %10, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %10, align 4
  br label %193

209:                                              ; preds = %193
  br label %210

210:                                              ; preds = %209, %111
  br label %211

211:                                              ; preds = %210
  %212 = load i64*, i64** %8, align 8
  %213 = getelementptr inbounds i64, i64* %212, i32 1
  store i64* %213, i64** %8, align 8
  %214 = load i64, i64* %212, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %30, label %216

216:                                              ; preds = %211
  store i32 0, i32* %3, align 4
  br label %217

217:                                              ; preds = %216, %107, %76
  %218 = load i32, i32* %3, align 4
  ret i32 %218
}

declare dso_local i32 @makeinit(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @cgoto(%struct.TYPE_5__*, i32, i64) #1

declare dso_local i32 @xfree(i32*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @overflo(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
