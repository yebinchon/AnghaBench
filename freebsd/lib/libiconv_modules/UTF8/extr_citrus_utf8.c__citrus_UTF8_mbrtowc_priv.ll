; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/UTF8/extr_citrus_utf8.c__citrus_UTF8_mbrtowc_priv.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/UTF8/extr_citrus_utf8.c__citrus_UTF8_mbrtowc_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@_UTF8_count = common dso_local global i32* null, align 8
@EILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8**, i64, %struct.TYPE_4__*, i64*)* @_citrus_UTF8_mbrtowc_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_citrus_UTF8_mbrtowc_priv(i32* %0, i32* %1, i8** %2, i64 %3, %struct.TYPE_4__* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %12, align 8
  store i64* %5, i64** %13, align 8
  %18 = load i8**, i8*** %10, align 8
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %14, align 8
  %20 = load i8*, i8** %14, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %6
  %23 = load i32*, i32** %8, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %25 = call i32 @_citrus_UTF8_init_state(i32* %23, %struct.TYPE_4__* %24)
  %26 = load i64*, i64** %13, align 8
  store i64 0, i64* %26, align 8
  store i32 0, i32* %7, align 4
  br label %189

27:                                               ; preds = %6
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %27
  %33 = load i64, i64* %11, align 8
  %34 = add i64 %33, -1
  store i64 %34, i64* %11, align 8
  %35 = icmp ult i64 %33, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %185

37:                                               ; preds = %32
  %38 = load i8*, i8** %14, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %14, align 8
  %40 = load i8, i8* %38, align 1
  %41 = sext i8 %40 to i32
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i32, i32* %44, i64 %49
  store i32 %41, i32* %50, align 4
  br label %51

51:                                               ; preds = %37, %27
  %52 = load i32*, i32** @_UTF8_count, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 255
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %52, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %17, align 4
  %63 = icmp slt i32 %62, 1
  br i1 %63, label %70, label %64

64:                                               ; preds = %51
  %65 = load i32, i32* %17, align 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64, %51
  br label %182

71:                                               ; preds = %64
  %72 = load i32, i32* %17, align 4
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 255
  store i32 %80, i32* %15, align 4
  br label %158

81:                                               ; preds = %71
  br label %82

82:                                               ; preds = %93, %81
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %17, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %107

88:                                               ; preds = %82
  %89 = load i64, i64* %11, align 8
  %90 = add i64 %89, -1
  store i64 %90, i64* %11, align 8
  %91 = icmp ult i64 %89, 1
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  br label %185

93:                                               ; preds = %88
  %94 = load i8*, i8** %14, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %14, align 8
  %96 = load i8, i8* %94, align 1
  %97 = sext i8 %96 to i32
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i32, i32* %100, i64 %105
  store i32 %97, i32* %106, align 4
  br label %82

107:                                              ; preds = %82
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %17, align 4
  %114 = ashr i32 127, %113
  %115 = and i32 %112, %114
  store i32 %115, i32* %15, align 4
  store i32 1, i32* %16, align 4
  br label %116

116:                                              ; preds = %144, %107
  %117 = load i32, i32* %16, align 4
  %118 = load i32, i32* %17, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %147

120:                                              ; preds = %116
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %16, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, 192
  %129 = icmp ne i32 %128, 128
  br i1 %129, label %130, label %131

130:                                              ; preds = %120
  br label %182

131:                                              ; preds = %120
  %132 = load i32, i32* %15, align 4
  %133 = shl i32 %132, 6
  store i32 %133, i32* %15, align 4
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %16, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %140, 63
  %142 = load i32, i32* %15, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %15, align 4
  br label %144

144:                                              ; preds = %131
  %145 = load i32, i32* %16, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %16, align 4
  br label %116

147:                                              ; preds = %116
  %148 = load i32, i32* %15, align 4
  %149 = call i64 @_UTF8_surrogate(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %156, label %151

151:                                              ; preds = %147
  %152 = load i32, i32* %15, align 4
  %153 = call i32 @_UTF8_findlen(i32 %152)
  %154 = load i32, i32* %17, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %151, %147
  br label %182

157:                                              ; preds = %151
  br label %158

158:                                              ; preds = %157, %74
  %159 = load i32*, i32** %9, align 8
  %160 = icmp ne i32* %159, null
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load i32, i32* %15, align 4
  %163 = load i32*, i32** %9, align 8
  store i32 %162, i32* %163, align 4
  br label %164

164:                                              ; preds = %161, %158
  %165 = load i32, i32* %15, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %164
  br label %175

168:                                              ; preds = %164
  %169 = load i8*, i8** %14, align 8
  %170 = load i8**, i8*** %10, align 8
  %171 = load i8*, i8** %170, align 8
  %172 = ptrtoint i8* %169 to i64
  %173 = ptrtoint i8* %171 to i64
  %174 = sub i64 %172, %173
  br label %175

175:                                              ; preds = %168, %167
  %176 = phi i64 [ 0, %167 ], [ %174, %168 ]
  %177 = load i64*, i64** %13, align 8
  store i64 %176, i64* %177, align 8
  %178 = load i8*, i8** %14, align 8
  %179 = load i8**, i8*** %10, align 8
  store i8* %178, i8** %179, align 8
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  store i32 0, i32* %181, align 8
  store i32 0, i32* %7, align 4
  br label %189

182:                                              ; preds = %156, %130, %70
  %183 = load i64*, i64** %13, align 8
  store i64 -1, i64* %183, align 8
  %184 = load i32, i32* @EILSEQ, align 4
  store i32 %184, i32* %7, align 4
  br label %189

185:                                              ; preds = %92, %36
  %186 = load i8*, i8** %14, align 8
  %187 = load i8**, i8*** %10, align 8
  store i8* %186, i8** %187, align 8
  %188 = load i64*, i64** %13, align 8
  store i64 -2, i64* %188, align 8
  store i32 0, i32* %7, align 4
  br label %189

189:                                              ; preds = %185, %182, %175, %22
  %190 = load i32, i32* %7, align 4
  ret i32 %190
}

declare dso_local i32 @_citrus_UTF8_init_state(i32*, %struct.TYPE_4__*) #1

declare dso_local i64 @_UTF8_surrogate(i32) #1

declare dso_local i32 @_UTF8_findlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
