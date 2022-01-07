; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/MSKanji/extr_citrus_mskanji.c__citrus_MSKanji_mbrtowc_priv.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/MSKanji/extr_citrus_mskanji.c__citrus_MSKanji_mbrtowc_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@EILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8**, i64, %struct.TYPE_4__*, i64*)* @_citrus_MSKanji_mbrtowc_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_citrus_MSKanji_mbrtowc_priv(i32* noalias %0, i32* noalias %1, i8** noalias %2, i64 %3, %struct.TYPE_4__* noalias %4, i64* noalias %5) #0 {
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
  %25 = call i32 @_citrus_MSKanji_init_state(i32* %23, %struct.TYPE_4__* %24)
  %26 = load i64*, i64** %13, align 8
  store i64 0, i64* %26, align 8
  store i32 0, i32* %7, align 4
  br label %159

27:                                               ; preds = %6
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %16, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %52 [
    i32 0, label %34
    i32 1, label %51
  ]

34:                                               ; preds = %27
  %35 = load i64, i64* %11, align 8
  %36 = icmp ult i64 %35, 1
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %155

38:                                               ; preds = %34
  %39 = load i8*, i8** %14, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %14, align 8
  %41 = load i8, i8* %39, align 1
  %42 = sext i8 %41 to i32
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 %42, i32* %46, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load i64, i64* %11, align 8
  %50 = add i64 %49, -1
  store i64 %50, i64* %11, align 8
  br label %53

51:                                               ; preds = %27
  br label %53

52:                                               ; preds = %27
  br label %150

53:                                               ; preds = %51, %38
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 255
  %60 = call i64 @_mskanji1(i32 %59)
  %61 = icmp ne i64 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 2, i32 1
  store i32 %63, i32* %17, align 4
  br label %64

64:                                               ; preds = %74, %53
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %17, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %93

70:                                               ; preds = %64
  %71 = load i64, i64* %11, align 8
  %72 = icmp ult i64 %71, 1
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %155

74:                                               ; preds = %70
  %75 = load i8*, i8** %14, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %14, align 8
  %77 = load i8, i8* %75, align 1
  %78 = sext i8 %77 to i32
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %81, i64 %85
  store i32 %78, i32* %86, align 4
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 8
  %91 = load i64, i64* %11, align 8
  %92 = add i64 %91, -1
  store i64 %92, i64* %11, align 8
  br label %64

93:                                               ; preds = %64
  %94 = load i8*, i8** %14, align 8
  %95 = load i8**, i8*** %10, align 8
  store i8* %94, i8** %95, align 8
  %96 = load i32, i32* %17, align 4
  switch i32 %96, label %129 [
    i32 1, label %97
    i32 2, label %104
  ]

97:                                               ; preds = %93
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, 255
  store i32 %103, i32* %15, align 4
  br label %130

104:                                              ; preds = %93
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, 255
  %111 = call i32 @_mskanji2(i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %104
  br label %150

114:                                              ; preds = %104
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, 255
  %121 = shl i32 %120, 8
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, 255
  %128 = or i32 %121, %127
  store i32 %128, i32* %15, align 4
  br label %130

129:                                              ; preds = %93
  br label %150

130:                                              ; preds = %114, %97
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  store i32 0, i32* %132, align 8
  %133 = load i32*, i32** %9, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = load i32, i32* %15, align 4
  %137 = load i32*, i32** %9, align 8
  store i32 %136, i32* %137, align 4
  br label %138

138:                                              ; preds = %135, %130
  %139 = load i32, i32* %15, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %138
  %142 = load i32, i32* %17, align 4
  %143 = load i32, i32* %16, align 4
  %144 = sub nsw i32 %142, %143
  br label %146

145:                                              ; preds = %138
  br label %146

146:                                              ; preds = %145, %141
  %147 = phi i32 [ %144, %141 ], [ 0, %145 ]
  %148 = sext i32 %147 to i64
  %149 = load i64*, i64** %13, align 8
  store i64 %148, i64* %149, align 8
  store i32 0, i32* %7, align 4
  br label %159

150:                                              ; preds = %129, %113, %52
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  store i32 0, i32* %152, align 8
  %153 = load i64*, i64** %13, align 8
  store i64 -1, i64* %153, align 8
  %154 = load i32, i32* @EILSEQ, align 4
  store i32 %154, i32* %7, align 4
  br label %159

155:                                              ; preds = %73, %37
  %156 = load i64*, i64** %13, align 8
  store i64 -2, i64* %156, align 8
  %157 = load i8*, i8** %14, align 8
  %158 = load i8**, i8*** %10, align 8
  store i8* %157, i8** %158, align 8
  store i32 0, i32* %7, align 4
  br label %159

159:                                              ; preds = %155, %150, %146, %22
  %160 = load i32, i32* %7, align 4
  ret i32 %160
}

declare dso_local i32 @_citrus_MSKanji_init_state(i32*, %struct.TYPE_4__*) #1

declare dso_local i64 @_mskanji1(i32) #1

declare dso_local i32 @_mskanji2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
