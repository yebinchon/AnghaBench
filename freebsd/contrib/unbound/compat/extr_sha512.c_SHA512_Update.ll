; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/compat/extr_sha512.c_SHA512_Update.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/compat/extr_sha512.c_SHA512_Update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32* }

@SHA512_BLOCK_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SHA512_Update(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %9, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %128

15:                                               ; preds = %3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32*, i32** %9, align 8
  %20 = icmp ne i32* %19, null
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi i1 [ false, %15 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = ashr i32 %29, 3
  %31 = load i32, i32* @SHA512_BLOCK_LENGTH, align 4
  %32 = srem i32 %30, %31
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp ugt i64 %34, 0
  br i1 %35, label %36, label %86

36:                                               ; preds = %21
  %37 = load i32, i32* @SHA512_BLOCK_LENGTH, align 4
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %8, align 8
  %40 = sub i64 %38, %39
  store i64 %40, i64* %7, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp uge i64 %41, %42
  br i1 %43, label %44, label %70

44:                                               ; preds = %36
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* %8, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32*, i32** %9, align 8
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @MEMCPY_BCOPY(i32* %49, i32* %50, i64 %51)
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* %7, align 8
  %57 = shl i64 %56, 3
  %58 = call i32 @ADDINC128(i32* %55, i64 %57)
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* %6, align 8
  %61 = sub i64 %60, %59
  store i64 %61, i64* %6, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 %62
  store i32* %64, i32** %9, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @SHA512_Transform(%struct.TYPE_4__* %65, i32* %68)
  br label %85

70:                                               ; preds = %36
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* %8, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32*, i32** %9, align 8
  %77 = load i64, i64* %6, align 8
  %78 = call i32 @MEMCPY_BCOPY(i32* %75, i32* %76, i64 %77)
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* %6, align 8
  %83 = shl i64 %82, 3
  %84 = call i32 @ADDINC128(i32* %81, i64 %83)
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %128

85:                                               ; preds = %44
  br label %86

86:                                               ; preds = %85, %21
  br label %87

87:                                               ; preds = %92, %86
  %88 = load i64, i64* %6, align 8
  %89 = load i32, i32* @SHA512_BLOCK_LENGTH, align 4
  %90 = sext i32 %89 to i64
  %91 = icmp uge i64 %88, %90
  br i1 %91, label %92, label %111

92:                                               ; preds = %87
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = call i32 @SHA512_Transform(%struct.TYPE_4__* %93, i32* %94)
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* @SHA512_BLOCK_LENGTH, align 4
  %100 = shl i32 %99, 3
  %101 = sext i32 %100 to i64
  %102 = call i32 @ADDINC128(i32* %98, i64 %101)
  %103 = load i32, i32* @SHA512_BLOCK_LENGTH, align 4
  %104 = sext i32 %103 to i64
  %105 = load i64, i64* %6, align 8
  %106 = sub i64 %105, %104
  store i64 %106, i64* %6, align 8
  %107 = load i32, i32* @SHA512_BLOCK_LENGTH, align 4
  %108 = load i32*, i32** %9, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  store i32* %110, i32** %9, align 8
  br label %87

111:                                              ; preds = %87
  %112 = load i64, i64* %6, align 8
  %113 = icmp ugt i64 %112, 0
  br i1 %113, label %114, label %127

114:                                              ; preds = %111
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i32*, i32** %9, align 8
  %119 = load i64, i64* %6, align 8
  %120 = call i32 @MEMCPY_BCOPY(i32* %117, i32* %118, i64 %119)
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* %6, align 8
  %125 = shl i64 %124, 3
  %126 = call i32 @ADDINC128(i32* %123, i64 %125)
  br label %127

127:                                              ; preds = %114, %111
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %128

128:                                              ; preds = %127, %70, %14
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MEMCPY_BCOPY(i32*, i32*, i64) #1

declare dso_local i32 @ADDINC128(i32*, i64) #1

declare dso_local i32 @SHA512_Transform(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
