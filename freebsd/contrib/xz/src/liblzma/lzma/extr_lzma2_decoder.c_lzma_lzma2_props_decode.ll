; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/lzma/extr_lzma2_decoder.c_lzma_lzma2_props_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/lzma/extr_lzma2_decoder.c_lzma_lzma2_props_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32* }

@LZMA_OPTIONS_ERROR = common dso_local global i32 0, align 4
@LZMA_MEM_ERROR = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@LZMA_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lzma_lzma2_props_decode(i8** %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  store i8** %0, i8*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i64, i64* %9, align 8
  %12 = icmp ne i64 %11, 1
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = load i32, i32* @LZMA_OPTIONS_ERROR, align 4
  store i32 %14, i32* %5, align 4
  br label %72

15:                                               ; preds = %4
  %16 = load i32*, i32** %8, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 192
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @LZMA_OPTIONS_ERROR, align 4
  store i32 %22, i32* %5, align 4
  br label %72

23:                                               ; preds = %15
  %24 = load i32*, i32** %8, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %26, 40
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @LZMA_OPTIONS_ERROR, align 4
  store i32 %29, i32* %5, align 4
  br label %72

30:                                               ; preds = %23
  %31 = load i32*, i32** %7, align 8
  %32 = call %struct.TYPE_3__* @lzma_alloc(i32 24, i32* %31)
  store %struct.TYPE_3__* %32, %struct.TYPE_3__** %10, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %34 = icmp eq %struct.TYPE_3__* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @LZMA_MEM_ERROR, align 4
  store i32 %36, i32* %5, align 4
  br label %72

37:                                               ; preds = %30
  %38 = load i32*, i32** %8, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 40
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* @UINT32_MAX, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %63

46:                                               ; preds = %37
  %47 = load i32*, i32** %8, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 1
  %51 = or i32 2, %50
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = sdiv i32 %56, 2
  %58 = add nsw i32 %57, 11
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = shl i32 %61, %58
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %46, %42
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  store i32* null, i32** %65, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %69 = bitcast %struct.TYPE_3__* %68 to i8*
  %70 = load i8**, i8*** %6, align 8
  store i8* %69, i8** %70, align 8
  %71 = load i32, i32* @LZMA_OK, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %63, %35, %28, %21, %13
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local %struct.TYPE_3__* @lzma_alloc(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
