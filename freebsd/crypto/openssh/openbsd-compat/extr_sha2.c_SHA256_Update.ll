; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_sha2.c_SHA256_Update.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_sha2.c_SHA256_Update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32 }

@SHA256_BLOCK_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SHA256_Update(%struct.TYPE_3__* %0, i32* %1, i64 %2) #0 {
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
  br label %123

12:                                               ; preds = %3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = ashr i32 %15, 3
  %17 = load i32, i32* @SHA256_BLOCK_LENGTH, align 4
  %18 = srem i32 %16, %17
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp ugt i64 %20, 0
  br i1 %21, label %22, label %78

22:                                               ; preds = %12
  %23 = load i32, i32* @SHA256_BLOCK_LENGTH, align 4
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* %8, align 8
  %26 = sub i64 %24, %25
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp uge i64 %27, %28
  br i1 %29, label %30, label %60

30:                                               ; preds = %22
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32*, i32** %5, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @memcpy(i32* %35, i32* %36, i64 %37)
  %39 = load i64, i64* %7, align 8
  %40 = shl i64 %39, 3
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = add i64 %44, %40
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %42, align 8
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
  %59 = call i32 @SHA256_Transform(i32 %55, i32* %58)
  br label %77

60:                                               ; preds = %22
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32*, i32** %5, align 8
  %67 = load i64, i64* %6, align 8
  %68 = call i32 @memcpy(i32* %65, i32* %66, i64 %67)
  %69 = load i64, i64* %6, align 8
  %70 = shl i64 %69, 3
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = add i64 %74, %70
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %72, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %123

77:                                               ; preds = %30
  br label %78

78:                                               ; preds = %77, %12
  br label %79

79:                                               ; preds = %84, %78
  %80 = load i64, i64* %6, align 8
  %81 = load i32, i32* @SHA256_BLOCK_LENGTH, align 4
  %82 = sext i32 %81 to i64
  %83 = icmp uge i64 %80, %82
  br i1 %83, label %84, label %104

84:                                               ; preds = %79
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load i32*, i32** %5, align 8
  %89 = call i32 @SHA256_Transform(i32 %87, i32* %88)
  %90 = load i32, i32* @SHA256_BLOCK_LENGTH, align 4
  %91 = shl i32 %90, 3
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, %91
  store i32 %95, i32* %93, align 8
  %96 = load i32, i32* @SHA256_BLOCK_LENGTH, align 4
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* %6, align 8
  %99 = sub i64 %98, %97
  store i64 %99, i64* %6, align 8
  %100 = load i32, i32* @SHA256_BLOCK_LENGTH, align 4
  %101 = load i32*, i32** %5, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  store i32* %103, i32** %5, align 8
  br label %79

104:                                              ; preds = %79
  %105 = load i64, i64* %6, align 8
  %106 = icmp ugt i64 %105, 0
  br i1 %106, label %107, label %122

107:                                              ; preds = %104
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load i32*, i32** %5, align 8
  %112 = load i64, i64* %6, align 8
  %113 = call i32 @memcpy(i32* %110, i32* %111, i64 %112)
  %114 = load i64, i64* %6, align 8
  %115 = shl i64 %114, 3
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = add i64 %119, %115
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %117, align 8
  br label %122

122:                                              ; preds = %107, %104
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %123

123:                                              ; preds = %122, %60, %11
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @SHA256_Transform(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
