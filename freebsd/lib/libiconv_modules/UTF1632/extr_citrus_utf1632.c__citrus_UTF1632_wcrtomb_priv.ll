; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/UTF1632/extr_citrus_utf1632.c__citrus_UTF1632_wcrtomb_priv.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/UTF1632/extr_citrus_utf1632.c__citrus_UTF1632_wcrtomb_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@_citrus_UTF1632_wcrtomb_priv._bom = internal constant [4 x i8] c"\00\00\FE\FF", align 1
@_ENDIAN_UNKNOWN = common dso_local global i32 0, align 4
@_MODE_FORCE_ENDIAN = common dso_local global i32 0, align 4
@_MODE_UTF32 = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i64, i32, %struct.TYPE_5__*, i64*)* @_citrus_UTF1632_wcrtomb_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_citrus_UTF1632_wcrtomb_priv(%struct.TYPE_6__* %0, i8* %1, i64 %2, i32 %3, %struct.TYPE_5__* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %12, align 8
  store i64* %5, i64** %13, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @_citrus_UTF1632_wcrtomb_priv._bom, i64 0, i64 0), i8** %15, align 8
  store i64 0, i64* %16, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @_ENDIAN_UNKNOWN, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %62

22:                                               ; preds = %6
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @_MODE_FORCE_ENDIAN, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %56

29:                                               ; preds = %22
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @_MODE_UTF32, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i64 4, i64* %16, align 8
  br label %40

37:                                               ; preds = %29
  store i64 2, i64* %16, align 8
  %38 = load i8*, i8** %15, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 2
  store i8* %39, i8** %15, align 8
  br label %40

40:                                               ; preds = %37, %36
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* %16, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %195

45:                                               ; preds = %40
  %46 = load i8*, i8** %9, align 8
  %47 = load i8*, i8** %15, align 8
  %48 = load i64, i64* %16, align 8
  %49 = call i32 @memcpy(i8* %46, i8* %47, i64 %48)
  %50 = load i64, i64* %16, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 %50
  store i8* %52, i8** %9, align 8
  %53 = load i64, i64* %16, align 8
  %54 = load i64, i64* %10, align 8
  %55 = sub i64 %54, %53
  store i64 %55, i64* %10, align 8
  br label %56

56:                                               ; preds = %45, %22
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %56, %6
  store i32 0, i32* %14, align 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @_MODE_UTF32, align 4
  %67 = and i32 %65, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %131

69:                                               ; preds = %62
  %70 = load i32, i32* %11, align 4
  %71 = icmp sgt i32 %70, 65535
  br i1 %71, label %72, label %91

72:                                               ; preds = %69
  %73 = load i32, i32* %11, align 4
  %74 = icmp sgt i32 %73, 1114111
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %192

76:                                               ; preds = %72
  %77 = load i64, i64* %10, align 8
  %78 = icmp ult i64 %77, 4
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %195

80:                                               ; preds = %76
  %81 = load i64, i64* %16, align 8
  %82 = add i64 %81, 4
  store i64 %82, i64* %16, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sub nsw i32 %83, 65536
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = and i32 %85, 1023
  %87 = or i32 %86, 56320
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %11, align 4
  %89 = ashr i32 %88, 10
  %90 = or i32 %89, 55296
  store i32 %90, i32* %11, align 4
  br label %98

91:                                               ; preds = %69
  %92 = load i64, i64* %10, align 8
  %93 = icmp ult i64 %92, 2
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %195

95:                                               ; preds = %91
  %96 = load i64, i64* %16, align 8
  %97 = add i64 %96, 2
  store i64 %97, i64* %16, align 8
  br label %98

98:                                               ; preds = %95, %80
  br label %99

99:                                               ; preds = %126, %98
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  switch i32 %102, label %123 [
    i32 129, label %103
    i32 128, label %113
  ]

103:                                              ; preds = %99
  %104 = load i32, i32* %11, align 4
  %105 = trunc i32 %104 to i8
  %106 = load i8*, i8** %9, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 1
  store i8 %105, i8* %107, align 1
  %108 = load i32, i32* %11, align 4
  %109 = ashr i32 %108, 8
  store i32 %109, i32* %11, align 4
  %110 = trunc i32 %109 to i8
  %111 = load i8*, i8** %9, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 0
  store i8 %110, i8* %112, align 1
  br label %123

113:                                              ; preds = %99
  %114 = load i32, i32* %11, align 4
  %115 = trunc i32 %114 to i8
  %116 = load i8*, i8** %9, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 0
  store i8 %115, i8* %117, align 1
  %118 = load i32, i32* %11, align 4
  %119 = ashr i32 %118, 8
  store i32 %119, i32* %11, align 4
  %120 = trunc i32 %119 to i8
  %121 = load i8*, i8** %9, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 1
  store i8 %120, i8* %122, align 1
  br label %123

123:                                              ; preds = %99, %113, %103
  %124 = load i32, i32* %14, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = load i32, i32* %14, align 4
  store i32 %127, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %128 = load i8*, i8** %9, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 2
  store i8* %129, i8** %9, align 8
  br label %99

130:                                              ; preds = %123
  br label %189

131:                                              ; preds = %62
  %132 = load i32, i32* %11, align 4
  %133 = icmp sge i32 %132, 55296
  br i1 %133, label %134, label %138

134:                                              ; preds = %131
  %135 = load i32, i32* %11, align 4
  %136 = icmp sle i32 %135, 57343
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  br label %192

138:                                              ; preds = %134, %131
  %139 = load i64, i64* %10, align 8
  %140 = icmp ult i64 %139, 4
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  br label %195

142:                                              ; preds = %138
  %143 = load i64, i64* %16, align 8
  %144 = add i64 %143, 4
  store i64 %144, i64* %16, align 8
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  switch i32 %147, label %188 [
    i32 129, label %148
    i32 128, label %168
  ]

148:                                              ; preds = %142
  %149 = load i32, i32* %11, align 4
  %150 = trunc i32 %149 to i8
  %151 = load i8*, i8** %9, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 3
  store i8 %150, i8* %152, align 1
  %153 = load i32, i32* %11, align 4
  %154 = ashr i32 %153, 8
  store i32 %154, i32* %11, align 4
  %155 = trunc i32 %154 to i8
  %156 = load i8*, i8** %9, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 2
  store i8 %155, i8* %157, align 1
  %158 = load i32, i32* %11, align 4
  %159 = ashr i32 %158, 8
  store i32 %159, i32* %11, align 4
  %160 = trunc i32 %159 to i8
  %161 = load i8*, i8** %9, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 1
  store i8 %160, i8* %162, align 1
  %163 = load i32, i32* %11, align 4
  %164 = ashr i32 %163, 8
  store i32 %164, i32* %11, align 4
  %165 = trunc i32 %164 to i8
  %166 = load i8*, i8** %9, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 0
  store i8 %165, i8* %167, align 1
  br label %188

168:                                              ; preds = %142
  %169 = load i32, i32* %11, align 4
  %170 = trunc i32 %169 to i8
  %171 = load i8*, i8** %9, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 0
  store i8 %170, i8* %172, align 1
  %173 = load i32, i32* %11, align 4
  %174 = ashr i32 %173, 8
  store i32 %174, i32* %11, align 4
  %175 = trunc i32 %174 to i8
  %176 = load i8*, i8** %9, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 1
  store i8 %175, i8* %177, align 1
  %178 = load i32, i32* %11, align 4
  %179 = ashr i32 %178, 8
  store i32 %179, i32* %11, align 4
  %180 = trunc i32 %179 to i8
  %181 = load i8*, i8** %9, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 2
  store i8 %180, i8* %182, align 1
  %183 = load i32, i32* %11, align 4
  %184 = ashr i32 %183, 8
  store i32 %184, i32* %11, align 4
  %185 = trunc i32 %184 to i8
  %186 = load i8*, i8** %9, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 3
  store i8 %185, i8* %187, align 1
  br label %188

188:                                              ; preds = %142, %168, %148
  br label %189

189:                                              ; preds = %188, %130
  %190 = load i64, i64* %16, align 8
  %191 = load i64*, i64** %13, align 8
  store i64 %190, i64* %191, align 8
  store i32 0, i32* %7, align 4
  br label %198

192:                                              ; preds = %137, %75
  %193 = load i64*, i64** %13, align 8
  store i64 -1, i64* %193, align 8
  %194 = load i32, i32* @EILSEQ, align 4
  store i32 %194, i32* %7, align 4
  br label %198

195:                                              ; preds = %141, %94, %79, %44
  %196 = load i64*, i64** %13, align 8
  store i64 -1, i64* %196, align 8
  %197 = load i32, i32* @E2BIG, align 4
  store i32 %197, i32* %7, align 4
  br label %198

198:                                              ; preds = %195, %192, %189
  %199 = load i32, i32* %7, align 4
  ret i32 %199
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
