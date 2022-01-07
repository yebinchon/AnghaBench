; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_fgetwc.c___fgetwc_mbs.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_fgetwc.c___fgetwc_mbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32 }
%struct.xlocale_ctype = type { i64 (i32*, i64, i64, i32*)* }

@WEOF = common dso_local global i32 0, align 4
@__SERR = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__fgetwc_mbs(%struct.TYPE_5__* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.xlocale_ctype*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = call %struct.xlocale_ctype* @XLOCALE_CTYPE(i32 %13)
  store %struct.xlocale_ctype* %14, %struct.xlocale_ctype** %12, align 8
  %15 = load i32*, i32** %8, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ule i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = call i64 @__srefill(%struct.TYPE_5__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @WEOF, align 4
  store i32 %25, i32* %5, align 4
  br label %102

26:                                               ; preds = %20, %4
  br label %27

27:                                               ; preds = %85, %26
  %28 = load %struct.xlocale_ctype*, %struct.xlocale_ctype** %12, align 8
  %29 = getelementptr inbounds %struct.xlocale_ctype, %struct.xlocale_ctype* %28, i32 0, i32 0
  %30 = load i64 (i32*, i64, i64, i32*)*, i64 (i32*, i64, i64, i32*)** %29, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = call i64 %30(i32* %10, i64 %33, i64 %36, i32* %37)
  store i64 %38, i64* %11, align 8
  %39 = load i64, i64* %11, align 8
  %40 = icmp eq i64 %39, -1
  br i1 %40, label %41, label %48

41:                                               ; preds = %27
  %42 = load i32, i32* @__SERR, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load i32, i32* @WEOF, align 4
  store i32 %47, i32* %5, align 4
  br label %102

48:                                               ; preds = %27
  %49 = load i64, i64* %11, align 8
  %50 = icmp eq i64 %49, -2
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %85

52:                                               ; preds = %48
  %53 = load i64, i64* %11, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %52
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %57, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %62, -1
  store i64 %63, i64* %61, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  store i32 0, i32* %5, align 4
  br label %102

67:                                               ; preds = %52
  %68 = load i64, i64* %11, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = add i64 %71, %68
  store i64 %72, i64* %70, align 8
  %73 = load i64, i64* %11, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = sub i64 %76, %73
  store i64 %77, i64* %75, align 8
  %78 = load i64, i64* %11, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = add i64 %81, %78
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %79, align 4
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %5, align 4
  br label %102

85:                                               ; preds = %51
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %87 = call i64 @__srefill(%struct.TYPE_5__* %86)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %27, label %89

89:                                               ; preds = %85
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %91 = call i64 @__sfeof(%struct.TYPE_5__* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %89
  %94 = load i32, i32* @__SERR, align 4
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  %99 = load i32, i32* @EILSEQ, align 4
  store i32 %99, i32* @errno, align 4
  br label %100

100:                                              ; preds = %93, %89
  %101 = load i32, i32* @WEOF, align 4
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %100, %67, %55, %41, %24
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local %struct.xlocale_ctype* @XLOCALE_CTYPE(i32) #1

declare dso_local i64 @__srefill(%struct.TYPE_5__*) #1

declare dso_local i64 @__sfeof(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
