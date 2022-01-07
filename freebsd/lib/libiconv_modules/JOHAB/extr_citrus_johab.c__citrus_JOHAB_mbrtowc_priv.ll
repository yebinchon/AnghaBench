; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/JOHAB/extr_citrus_johab.c__citrus_JOHAB_mbrtowc_priv.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/JOHAB/extr_citrus_johab.c__citrus_JOHAB_mbrtowc_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@_ENCODING_IS_STATE_DEPENDENT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i8**, i64, %struct.TYPE_4__*, i64*)* @_citrus_JOHAB_mbrtowc_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_citrus_JOHAB_mbrtowc_priv(i32* noalias %0, i64* noalias %1, i8** noalias %2, i64 %3, %struct.TYPE_4__* noalias %4, i64* noalias %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i64* %1, i64** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %12, align 8
  store i64* %5, i64** %13, align 8
  %17 = load i8**, i8*** %10, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %6
  %21 = load i32*, i32** %8, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %23 = call i32 @_citrus_JOHAB_init_state(i32* %21, %struct.TYPE_4__* %22)
  %24 = load i64, i64* @_ENCODING_IS_STATE_DEPENDENT, align 8
  %25 = load i64*, i64** %13, align 8
  store i64 %24, i64* %25, align 8
  store i32 0, i32* %7, align 4
  br label %135

26:                                               ; preds = %6
  %27 = load i8**, i8*** %10, align 8
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %14, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %79 [
    i32 0, label %32
    i32 1, label %72
  ]

32:                                               ; preds = %26
  %33 = load i64, i64* %11, align 8
  %34 = add i64 %33, -1
  store i64 %34, i64* %11, align 8
  %35 = icmp ult i64 %33, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %86

37:                                               ; preds = %32
  %38 = load i8*, i8** %14, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %14, align 8
  %40 = load i8, i8* %38, align 1
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, 255
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %15, align 4
  %44 = icmp sle i32 %43, 127
  br i1 %44, label %45, label %61

45:                                               ; preds = %37
  %46 = load i64*, i64** %9, align 8
  %47 = icmp ne i64* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* %15, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64*, i64** %9, align 8
  store i64 %50, i64* %51, align 8
  br label %52

52:                                               ; preds = %48, %45
  %53 = load i32, i32* %15, align 4
  %54 = icmp eq i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 0, i32 1
  %57 = sext i32 %56 to i64
  %58 = load i64*, i64** %13, align 8
  store i64 %57, i64* %58, align 8
  %59 = load i8*, i8** %14, align 8
  %60 = load i8**, i8*** %10, align 8
  store i8* %59, i8** %60, align 8
  store i32 0, i32* %7, align 4
  br label %135

61:                                               ; preds = %37
  %62 = load i32, i32* %15, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i32, i32* %65, i64 %70
  store i32 %62, i32* %71, align 4
  br label %81

72:                                               ; preds = %26
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 255
  store i32 %78, i32* %15, align 4
  br label %81

79:                                               ; preds = %26
  %80 = load i32, i32* @EINVAL, align 4
  store i32 %80, i32* %7, align 4
  br label %135

81:                                               ; preds = %72, %61
  %82 = load i64, i64* %11, align 8
  %83 = add i64 %82, -1
  store i64 %83, i64* %11, align 8
  %84 = icmp ult i64 %82, 1
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  br label %86

86:                                               ; preds = %85, %36
  %87 = load i64*, i64** %13, align 8
  store i64 -2, i64* %87, align 8
  %88 = load i8*, i8** %14, align 8
  %89 = load i8**, i8*** %10, align 8
  store i8* %88, i8** %89, align 8
  store i32 0, i32* %7, align 4
  br label %135

90:                                               ; preds = %81
  %91 = load i8*, i8** %14, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %14, align 8
  %93 = load i8, i8* %91, align 1
  %94 = sext i8 %93 to i32
  %95 = and i32 %94, 255
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* %16, align 4
  %98 = call i32 @ishangul(i32 %96, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %113, label %100

100:                                              ; preds = %90
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* %16, align 4
  %103 = call i32 @isuda(i32 %101, i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %113, label %105

105:                                              ; preds = %100
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* %16, align 4
  %108 = call i32 @ishanja(i32 %106, i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %105
  %111 = load i64*, i64** %13, align 8
  store i64 -1, i64* %111, align 8
  %112 = load i32, i32* @EILSEQ, align 4
  store i32 %112, i32* %7, align 4
  br label %135

113:                                              ; preds = %105, %100, %90
  %114 = load i64*, i64** %9, align 8
  %115 = icmp ne i64* %114, null
  br i1 %115, label %116, label %123

116:                                              ; preds = %113
  %117 = load i32, i32* %15, align 4
  %118 = shl i32 %117, 8
  %119 = load i32, i32* %16, align 4
  %120 = or i32 %118, %119
  %121 = sext i32 %120 to i64
  %122 = load i64*, i64** %9, align 8
  store i64 %121, i64* %122, align 8
  br label %123

123:                                              ; preds = %116, %113
  %124 = load i8*, i8** %14, align 8
  %125 = load i8**, i8*** %10, align 8
  %126 = load i8*, i8** %125, align 8
  %127 = ptrtoint i8* %124 to i64
  %128 = ptrtoint i8* %126 to i64
  %129 = sub i64 %127, %128
  %130 = load i64*, i64** %13, align 8
  store i64 %129, i64* %130, align 8
  %131 = load i8*, i8** %14, align 8
  %132 = load i8**, i8*** %10, align 8
  store i8* %131, i8** %132, align 8
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  store i32 0, i32* %134, align 8
  store i32 0, i32* %7, align 4
  br label %135

135:                                              ; preds = %123, %110, %86, %79, %52, %20
  %136 = load i32, i32* %7, align 4
  ret i32 %136
}

declare dso_local i32 @_citrus_JOHAB_init_state(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @ishangul(i32, i32) #1

declare dso_local i32 @isuda(i32, i32) #1

declare dso_local i32 @ishanja(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
