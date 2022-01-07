; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_sha2.c_ldns_sha256_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_sha2.c_ldns_sha256_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@LDNS_SHA256_BLOCK_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ldns_sha256_update(%struct.TYPE_4__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %128

12:                                               ; preds = %3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32*, i32** %5, align 8
  %17 = icmp ne i32* %16, null
  br label %18

18:                                               ; preds = %15, %12
  %19 = phi i1 [ false, %12 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = ashr i32 %24, 3
  %26 = load i32, i32* @LDNS_SHA256_BLOCK_LENGTH, align 4
  %27 = srem i32 %25, %26
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp ugt i64 %29, 0
  br i1 %30, label %31, label %85

31:                                               ; preds = %18
  %32 = load i32, i32* @LDNS_SHA256_BLOCK_LENGTH, align 4
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* %8, align 8
  %35 = sub i64 %33, %34
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = icmp uge i64 %36, %37
  br i1 %38, label %39, label %67

39:                                               ; preds = %31
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* %8, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32*, i32** %5, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @MEMCPY_BCOPY(i32* %44, i32* %45, i64 %46)
  %48 = load i64, i64* %7, align 8
  %49 = shl i64 %48, 3
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = add i64 %53, %49
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %51, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* %6, align 8
  %58 = sub i64 %57, %56
  store i64 %58, i64* %6, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 %59
  store i32* %61, i32** %5, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @ldns_sha256_Transform(%struct.TYPE_4__* %62, i32* %65)
  br label %84

67:                                               ; preds = %31
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* %8, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32*, i32** %5, align 8
  %74 = load i64, i64* %6, align 8
  %75 = call i32 @MEMCPY_BCOPY(i32* %72, i32* %73, i64 %74)
  %76 = load i64, i64* %6, align 8
  %77 = shl i64 %76, 3
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = add i64 %81, %77
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %79, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %128

84:                                               ; preds = %39
  br label %85

85:                                               ; preds = %84, %18
  br label %86

86:                                               ; preds = %91, %85
  %87 = load i64, i64* %6, align 8
  %88 = load i32, i32* @LDNS_SHA256_BLOCK_LENGTH, align 4
  %89 = sext i32 %88 to i64
  %90 = icmp uge i64 %87, %89
  br i1 %90, label %91, label %109

91:                                               ; preds = %86
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %93 = load i32*, i32** %5, align 8
  %94 = call i32 @ldns_sha256_Transform(%struct.TYPE_4__* %92, i32* %93)
  %95 = load i32, i32* @LDNS_SHA256_BLOCK_LENGTH, align 4
  %96 = shl i32 %95, 3
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, %96
  store i32 %100, i32* %98, align 8
  %101 = load i32, i32* @LDNS_SHA256_BLOCK_LENGTH, align 4
  %102 = sext i32 %101 to i64
  %103 = load i64, i64* %6, align 8
  %104 = sub i64 %103, %102
  store i64 %104, i64* %6, align 8
  %105 = load i32, i32* @LDNS_SHA256_BLOCK_LENGTH, align 4
  %106 = load i32*, i32** %5, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  store i32* %108, i32** %5, align 8
  br label %86

109:                                              ; preds = %86
  %110 = load i64, i64* %6, align 8
  %111 = icmp ugt i64 %110, 0
  br i1 %111, label %112, label %127

112:                                              ; preds = %109
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load i32*, i32** %5, align 8
  %117 = load i64, i64* %6, align 8
  %118 = call i32 @MEMCPY_BCOPY(i32* %115, i32* %116, i64 %117)
  %119 = load i64, i64* %6, align 8
  %120 = shl i64 %119, 3
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = add i64 %124, %120
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %122, align 8
  br label %127

127:                                              ; preds = %112, %109
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %128

128:                                              ; preds = %127, %67, %11
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MEMCPY_BCOPY(i32*, i32*, i64) #1

declare dso_local i32 @ldns_sha256_Transform(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
