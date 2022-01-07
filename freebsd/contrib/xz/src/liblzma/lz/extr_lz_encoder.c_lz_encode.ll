; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/lz/extr_lz_encoder.c_lz_encode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/lz/extr_lz_encoder.c_lz_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i64, i64, i64 }
%struct.TYPE_5__ = type { i64 (i32, %struct.TYPE_7__*, i32*, i64*, i64)*, i32 }

@LZMA_RUN = common dso_local global i64 0, align 8
@LZMA_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32*, i32*, i64*, i64, i32*, i64*, i64, i64)* @lz_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lz_encode(i8* %0, i32* %1, i32* noalias %2, i64* noalias %3, i64 %4, i32* noalias %5, i64* noalias %6, i64 %7, i64 %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_6__*, align 8
  %21 = alloca i64, align 8
  store i8* %0, i8** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i64* %3, i64** %14, align 8
  store i64 %4, i64* %15, align 8
  store i32* %5, i32** %16, align 8
  store i64* %6, i64** %17, align 8
  store i64 %7, i64* %18, align 8
  store i64 %8, i64* %19, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %20, align 8
  br label %24

24:                                               ; preds = %92, %9
  %25 = load i64*, i64** %17, align 8
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %18, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = load i64*, i64** %14, align 8
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %15, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = load i64, i64* %19, align 8
  %36 = load i64, i64* @LZMA_RUN, align 8
  %37 = icmp ne i64 %35, %36
  br label %38

38:                                               ; preds = %34, %29
  %39 = phi i1 [ true, %29 ], [ %37, %34 ]
  br label %40

40:                                               ; preds = %38, %24
  %41 = phi i1 [ false, %24 ], [ %39, %38 ]
  br i1 %41, label %42, label %93

42:                                               ; preds = %40
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @LZMA_RUN, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %68

49:                                               ; preds = %42
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp sge i64 %53, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %49
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = load i32*, i32** %13, align 8
  %63 = load i64*, i64** %14, align 8
  %64 = load i64, i64* %15, align 8
  %65 = load i64, i64* %19, align 8
  %66 = call i32 @fill_window(%struct.TYPE_6__* %60, i32* %61, i32* %62, i64* %63, i64 %64, i64 %65)
  %67 = call i32 @return_if_error(i32 %66)
  br label %68

68:                                               ; preds = %59, %49, %42
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i64 (i32, %struct.TYPE_7__*, i32*, i64*, i64)*, i64 (i32, %struct.TYPE_7__*, i32*, i64*, i64)** %71, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32*, i32** %16, align 8
  %80 = load i64*, i64** %17, align 8
  %81 = load i64, i64* %18, align 8
  %82 = call i64 %72(i32 %76, %struct.TYPE_7__* %78, i32* %79, i64* %80, i64 %81)
  store i64 %82, i64* %21, align 8
  %83 = load i64, i64* %21, align 8
  %84 = load i64, i64* @LZMA_OK, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %68
  %87 = load i64, i64* @LZMA_RUN, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  store i64 %87, i64* %90, align 8
  %91 = load i64, i64* %21, align 8
  store i64 %91, i64* %10, align 8
  br label %95

92:                                               ; preds = %68
  br label %24

93:                                               ; preds = %40
  %94 = load i64, i64* @LZMA_OK, align 8
  store i64 %94, i64* %10, align 8
  br label %95

95:                                               ; preds = %93, %86
  %96 = load i64, i64* %10, align 8
  ret i64 %96
}

declare dso_local i32 @return_if_error(i32) #1

declare dso_local i32 @fill_window(%struct.TYPE_6__*, i32*, i32*, i64*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
