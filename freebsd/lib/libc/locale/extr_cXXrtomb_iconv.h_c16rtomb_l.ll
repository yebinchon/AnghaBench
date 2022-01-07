; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_cXXrtomb_iconv.h_c16rtomb_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_cXXrtomb_iconv.h_c16rtomb_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__, %struct._citrus_iconv }
%struct.TYPE_6__ = type { i8*, i32* }
%struct._citrus_iconv = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32* }
%struct.TYPE_8__ = type { i32 }

@UTF_XX_INTERNAL = common dso_local global i32 0, align 4
@CODESET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @cXXrtomb_l(i8* noalias %0, i32 %1, i32* noalias %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct._citrus_iconv*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @FIX_LOCALE(i32 %18)
  %20 = load i32*, i32** %8, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = call %struct.TYPE_8__* @XLOCALE_CTYPE(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store i32* %25, i32** %8, align 8
  br label %26

26:                                               ; preds = %22, %4
  %27 = load i32*, i32** %8, align 8
  %28 = bitcast i32* %27 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %10, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 3
  store %struct._citrus_iconv* %30, %struct._citrus_iconv** %11, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %26
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %66, label %38

38:                                               ; preds = %33, %26
  %39 = load i32, i32* @UTF_XX_INTERNAL, align 4
  %40 = load i32, i32* @CODESET, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @nl_langinfo_l(i32 %40, i32 %41)
  %43 = call i64 @_citrus_iconv_open(%struct._citrus_iconv** %11, i32 %39, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = load i32, i32* @EINVAL, align 4
  store i32 %48, i32* @errno, align 4
  store i64 -1, i64* %5, align 8
  br label %117

49:                                               ; preds = %38
  %50 = load %struct._citrus_iconv*, %struct._citrus_iconv** %11, align 8
  %51 = getelementptr inbounds %struct._citrus_iconv, %struct._citrus_iconv* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = load %struct._citrus_iconv*, %struct._citrus_iconv** %11, align 8
  %55 = getelementptr inbounds %struct._citrus_iconv, %struct._citrus_iconv* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  store i32* null, i32** %57, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  store i32 0, i32* %59, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %49
  store i64 1, i64* %5, align 8
  br label %117

65:                                               ; preds = %49
  br label %66

66:                                               ; preds = %65, %33
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = icmp ult i64 %70, 2
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i32, i32* %78, i64 %83
  store i32 %74, i32* %84, align 4
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  store i8* %88, i8** %12, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = mul i64 %92, 4
  store i64 %93, i64* %14, align 8
  %94 = load i8*, i8** %6, align 8
  store i8* %94, i8** %13, align 8
  %95 = load i32, i32* %9, align 4
  %96 = call i64 @MB_CUR_MAX_L(i32 %95)
  store i64 %96, i64* %15, align 8
  %97 = load %struct._citrus_iconv*, %struct._citrus_iconv** %11, align 8
  %98 = call i32 @_citrus_iconv_convert(%struct._citrus_iconv* %97, i8** %12, i64* %14, i8** %13, i64* %15, i32 0, i64* %16)
  store i32 %98, i32* %17, align 4
  %99 = load i32, i32* %17, align 4
  %100 = load i32, i32* @EINVAL, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %66
  store i64 0, i64* %5, align 8
  br label %117

103:                                              ; preds = %66
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  store i32 0, i32* %105, align 4
  %106 = load i8*, i8** %13, align 8
  %107 = load i8*, i8** %6, align 8
  %108 = icmp eq i8* %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  %110 = load i32, i32* @EILSEQ, align 4
  store i32 %110, i32* @errno, align 4
  store i64 -1, i64* %5, align 8
  br label %117

111:                                              ; preds = %103
  %112 = load i8*, i8** %13, align 8
  %113 = load i8*, i8** %6, align 8
  %114 = ptrtoint i8* %112 to i64
  %115 = ptrtoint i8* %113 to i64
  %116 = sub i64 %114, %115
  store i64 %116, i64* %5, align 8
  br label %117

117:                                              ; preds = %111, %109, %102, %64, %45
  %118 = load i64, i64* %5, align 8
  ret i64 %118
}

declare dso_local i32 @FIX_LOCALE(i32) #1

declare dso_local %struct.TYPE_8__* @XLOCALE_CTYPE(i32) #1

declare dso_local i64 @_citrus_iconv_open(%struct._citrus_iconv**, i32, i32) #1

declare dso_local i32 @nl_langinfo_l(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @MB_CUR_MAX_L(i32) #1

declare dso_local i32 @_citrus_iconv_convert(%struct._citrus_iconv*, i8**, i64*, i8**, i64*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
