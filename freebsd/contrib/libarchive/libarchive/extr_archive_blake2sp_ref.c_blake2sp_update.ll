; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_blake2sp_ref.c_blake2sp_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_blake2sp_ref.c_blake2sp_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8*, i32* }

@PARALLELISM_DEGREE = common dso_local global i64 0, align 8
@BLAKE2S_BLOCKBYTES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blake2sp_update(%struct.TYPE_3__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %7, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = sub i64 8, %17
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %64

21:                                               ; preds = %3
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp uge i64 %22, %23
  br i1 %24, label %25, label %64

25:                                               ; preds = %21
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = load i8*, i8** %7, align 8
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @memcpy(i8* %30, i8* %31, i64 %32)
  store i64 0, i64* %10, align 8
  br label %34

34:                                               ; preds = %54, %25
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* @PARALLELISM_DEGREE, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %34
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* %10, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* @BLAKE2S_BLOCKBYTES, align 8
  %50 = mul i64 %48, %49
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  %52 = load i64, i64* @BLAKE2S_BLOCKBYTES, align 8
  %53 = call i32 @blake2s_update(i32 %44, i8* %51, i64 %52)
  br label %54

54:                                               ; preds = %38
  %55 = load i64, i64* %10, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %10, align 8
  br label %34

57:                                               ; preds = %34
  %58 = load i64, i64* %9, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 %58
  store i8* %60, i8** %7, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %6, align 8
  %63 = sub i64 %62, %61
  store i64 %63, i64* %6, align 8
  store i64 0, i64* %8, align 8
  br label %64

64:                                               ; preds = %57, %21, %3
  store i64 0, i64* %10, align 8
  br label %65

65:                                               ; preds = %104, %64
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* @PARALLELISM_DEGREE, align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %69, label %107

69:                                               ; preds = %65
  %70 = load i64, i64* %6, align 8
  store i64 %70, i64* %11, align 8
  %71 = load i8*, i8** %7, align 8
  store i8* %71, i8** %12, align 8
  %72 = load i64, i64* %10, align 8
  %73 = load i64, i64* @BLAKE2S_BLOCKBYTES, align 8
  %74 = mul i64 %72, %73
  %75 = load i8*, i8** %12, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 %74
  store i8* %76, i8** %12, align 8
  br label %77

77:                                               ; preds = %83, %69
  %78 = load i64, i64* %11, align 8
  %79 = load i64, i64* @PARALLELISM_DEGREE, align 8
  %80 = load i64, i64* @BLAKE2S_BLOCKBYTES, align 8
  %81 = mul i64 %79, %80
  %82 = icmp uge i64 %78, %81
  br i1 %82, label %83, label %103

83:                                               ; preds = %77
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* %10, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i8*, i8** %12, align 8
  %91 = load i64, i64* @BLAKE2S_BLOCKBYTES, align 8
  %92 = call i32 @blake2s_update(i32 %89, i8* %90, i64 %91)
  %93 = load i64, i64* @PARALLELISM_DEGREE, align 8
  %94 = load i64, i64* @BLAKE2S_BLOCKBYTES, align 8
  %95 = mul i64 %93, %94
  %96 = load i8*, i8** %12, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 %95
  store i8* %97, i8** %12, align 8
  %98 = load i64, i64* @PARALLELISM_DEGREE, align 8
  %99 = load i64, i64* @BLAKE2S_BLOCKBYTES, align 8
  %100 = mul i64 %98, %99
  %101 = load i64, i64* %11, align 8
  %102 = sub i64 %101, %100
  store i64 %102, i64* %11, align 8
  br label %77

103:                                              ; preds = %77
  br label %104

104:                                              ; preds = %103
  %105 = load i64, i64* %10, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %10, align 8
  br label %65

107:                                              ; preds = %65
  %108 = load i64, i64* %6, align 8
  %109 = load i64, i64* %6, align 8
  %110 = load i64, i64* @PARALLELISM_DEGREE, align 8
  %111 = load i64, i64* @BLAKE2S_BLOCKBYTES, align 8
  %112 = mul i64 %110, %111
  %113 = urem i64 %109, %112
  %114 = sub i64 %108, %113
  %115 = load i8*, i8** %7, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 %114
  store i8* %116, i8** %7, align 8
  %117 = load i64, i64* @PARALLELISM_DEGREE, align 8
  %118 = load i64, i64* @BLAKE2S_BLOCKBYTES, align 8
  %119 = mul i64 %117, %118
  %120 = load i64, i64* %6, align 8
  %121 = urem i64 %120, %119
  store i64 %121, i64* %6, align 8
  %122 = load i64, i64* %6, align 8
  %123 = icmp ugt i64 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %107
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = load i64, i64* %8, align 8
  %129 = getelementptr inbounds i8, i8* %127, i64 %128
  %130 = load i8*, i8** %7, align 8
  %131 = load i64, i64* %6, align 8
  %132 = call i32 @memcpy(i8* %129, i8* %130, i64 %131)
  br label %133

133:                                              ; preds = %124, %107
  %134 = load i64, i64* %8, align 8
  %135 = load i64, i64* %6, align 8
  %136 = add i64 %134, %135
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  store i64 %136, i64* %138, align 8
  ret i32 0
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @blake2s_update(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
