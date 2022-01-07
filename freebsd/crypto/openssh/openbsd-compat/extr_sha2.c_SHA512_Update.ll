; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_sha2.c_SHA512_Update.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_sha2.c_SHA512_Update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32 }

@SHA512_BLOCK_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SHA512_Update(%struct.TYPE_3__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %120

12:                                               ; preds = %3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = ashr i32 %17, 3
  %19 = load i32, i32* @SHA512_BLOCK_LENGTH, align 4
  %20 = srem i32 %18, %19
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp ugt i64 %22, 0
  br i1 %23, label %24, label %76

24:                                               ; preds = %12
  %25 = load i32, i32* @SHA512_BLOCK_LENGTH, align 4
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* %8, align 8
  %28 = sub i64 %26, %27
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp uge i64 %29, %30
  br i1 %31, label %32, label %60

32:                                               ; preds = %24
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32*, i32** %5, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @memcpy(i32* %37, i32* %38, i64 %39)
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = shl i64 %44, 3
  %46 = call i32 @ADDINC128(i32* %43, i64 %45)
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %6, align 8
  %49 = sub i64 %48, %47
  store i64 %49, i64* %6, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 %50
  store i32* %52, i32** %5, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @SHA512_Transform(i32 %55, i32* %58)
  br label %75

60:                                               ; preds = %24
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32*, i32** %5, align 8
  %67 = load i64, i64* %6, align 8
  %68 = call i32 @memcpy(i32* %65, i32* %66, i64 %67)
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* %6, align 8
  %73 = shl i64 %72, 3
  %74 = call i32 @ADDINC128(i32* %71, i64 %73)
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %120

75:                                               ; preds = %32
  br label %76

76:                                               ; preds = %75, %12
  br label %77

77:                                               ; preds = %82, %76
  %78 = load i64, i64* %6, align 8
  %79 = load i32, i32* @SHA512_BLOCK_LENGTH, align 4
  %80 = sext i32 %79 to i64
  %81 = icmp uge i64 %78, %80
  br i1 %81, label %82, label %103

82:                                               ; preds = %77
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32*, i32** %5, align 8
  %87 = call i32 @SHA512_Transform(i32 %85, i32* %86)
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* @SHA512_BLOCK_LENGTH, align 4
  %92 = shl i32 %91, 3
  %93 = sext i32 %92 to i64
  %94 = call i32 @ADDINC128(i32* %90, i64 %93)
  %95 = load i32, i32* @SHA512_BLOCK_LENGTH, align 4
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* %6, align 8
  %98 = sub i64 %97, %96
  store i64 %98, i64* %6, align 8
  %99 = load i32, i32* @SHA512_BLOCK_LENGTH, align 4
  %100 = load i32*, i32** %5, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  store i32* %102, i32** %5, align 8
  br label %77

103:                                              ; preds = %77
  %104 = load i64, i64* %6, align 8
  %105 = icmp ugt i64 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %103
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i32*, i32** %5, align 8
  %111 = load i64, i64* %6, align 8
  %112 = call i32 @memcpy(i32* %109, i32* %110, i64 %111)
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* %6, align 8
  %117 = shl i64 %116, 3
  %118 = call i32 @ADDINC128(i32* %115, i64 %117)
  br label %119

119:                                              ; preds = %106, %103
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %120

120:                                              ; preds = %119, %60, %11
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @ADDINC128(i32*, i64) #1

declare dso_local i32 @SHA512_Transform(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
