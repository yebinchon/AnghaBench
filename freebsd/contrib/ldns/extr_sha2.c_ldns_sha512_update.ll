; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_sha2.c_ldns_sha512_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_sha2.c_ldns_sha512_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32* }

@LDNS_SHA512_BLOCK_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ldns_sha512_update(%struct.TYPE_4__* %0, i32* %1, i64 %2) #0 {
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
  br label %125

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
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 3
  %28 = load i32, i32* @LDNS_SHA512_BLOCK_LENGTH, align 4
  %29 = srem i32 %27, %28
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp ugt i64 %31, 0
  br i1 %32, label %33, label %83

33:                                               ; preds = %18
  %34 = load i32, i32* @LDNS_SHA512_BLOCK_LENGTH, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %8, align 8
  %37 = sub i64 %35, %36
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp uge i64 %38, %39
  br i1 %40, label %41, label %67

41:                                               ; preds = %33
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32*, i32** %5, align 8
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @MEMCPY_BCOPY(i32* %46, i32* %47, i64 %48)
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %7, align 8
  %54 = shl i64 %53, 3
  %55 = call i32 @ADDINC128(i32* %52, i64 %54)
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
  %66 = call i32 @ldns_sha512_Transform(%struct.TYPE_4__* %62, i32* %65)
  br label %82

67:                                               ; preds = %33
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* %8, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32*, i32** %5, align 8
  %74 = load i64, i64* %6, align 8
  %75 = call i32 @MEMCPY_BCOPY(i32* %72, i32* %73, i64 %74)
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* %6, align 8
  %80 = shl i64 %79, 3
  %81 = call i32 @ADDINC128(i32* %78, i64 %80)
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %125

82:                                               ; preds = %41
  br label %83

83:                                               ; preds = %82, %18
  br label %84

84:                                               ; preds = %89, %83
  %85 = load i64, i64* %6, align 8
  %86 = load i32, i32* @LDNS_SHA512_BLOCK_LENGTH, align 4
  %87 = sext i32 %86 to i64
  %88 = icmp uge i64 %85, %87
  br i1 %88, label %89, label %108

89:                                               ; preds = %84
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %91 = load i32*, i32** %5, align 8
  %92 = call i32 @ldns_sha512_Transform(%struct.TYPE_4__* %90, i32* %91)
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* @LDNS_SHA512_BLOCK_LENGTH, align 4
  %97 = shl i32 %96, 3
  %98 = sext i32 %97 to i64
  %99 = call i32 @ADDINC128(i32* %95, i64 %98)
  %100 = load i32, i32* @LDNS_SHA512_BLOCK_LENGTH, align 4
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* %6, align 8
  %103 = sub i64 %102, %101
  store i64 %103, i64* %6, align 8
  %104 = load i32, i32* @LDNS_SHA512_BLOCK_LENGTH, align 4
  %105 = load i32*, i32** %5, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32* %107, i32** %5, align 8
  br label %84

108:                                              ; preds = %84
  %109 = load i64, i64* %6, align 8
  %110 = icmp ugt i64 %109, 0
  br i1 %110, label %111, label %124

111:                                              ; preds = %108
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i32*, i32** %5, align 8
  %116 = load i64, i64* %6, align 8
  %117 = call i32 @MEMCPY_BCOPY(i32* %114, i32* %115, i64 %116)
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i64, i64* %6, align 8
  %122 = shl i64 %121, 3
  %123 = call i32 @ADDINC128(i32* %120, i64 %122)
  br label %124

124:                                              ; preds = %111, %108
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %125

125:                                              ; preds = %124, %67, %11
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MEMCPY_BCOPY(i32*, i32*, i64) #1

declare dso_local i32 @ADDINC128(i32*, i64) #1

declare dso_local i32 @ldns_sha512_Transform(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
