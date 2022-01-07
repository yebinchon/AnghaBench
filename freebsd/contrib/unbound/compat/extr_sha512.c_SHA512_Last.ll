; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/compat/extr_sha512.c_SHA512_Last.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/compat/extr_sha512.c_SHA512_Last.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32* }
%struct.TYPE_5__ = type { i32*, i32* }

@SHA512_BLOCK_LENGTH = common dso_local global i32 0, align 4
@SHA512_SHORT_BLOCK_LENGTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @SHA512_Last to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SHA512_Last(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = ashr i32 %9, 3
  %11 = load i32, i32* @SHA512_BLOCK_LENGTH, align 4
  %12 = srem i32 %10, %11
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %3, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @REVERSE64(i32 %18, i32 %23)
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @REVERSE64(i32 %29, i32 %34)
  %36 = load i64, i64* %3, align 8
  %37 = icmp ugt i64 %36, 0
  br i1 %37, label %38, label %88

38:                                               ; preds = %1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* %3, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %3, align 8
  %44 = getelementptr inbounds i32, i32* %41, i64 %42
  store i32 128, i32* %44, align 4
  %45 = load i64, i64* %3, align 8
  %46 = load i64, i64* @SHA512_SHORT_BLOCK_LENGTH, align 8
  %47 = icmp ule i64 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %38
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* %3, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i64, i64* @SHA512_SHORT_BLOCK_LENGTH, align 8
  %55 = load i64, i64* %3, align 8
  %56 = sub i64 %54, %55
  %57 = call i32 @MEMSET_BZERO(i32* %53, i64 %56)
  br label %87

58:                                               ; preds = %38
  %59 = load i64, i64* %3, align 8
  %60 = load i32, i32* @SHA512_BLOCK_LENGTH, align 4
  %61 = sext i32 %60 to i64
  %62 = icmp ult i64 %59, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %58
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* %3, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* @SHA512_BLOCK_LENGTH, align 4
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* %3, align 8
  %72 = sub i64 %70, %71
  %73 = call i32 @MEMSET_BZERO(i32* %68, i64 %72)
  br label %74

74:                                               ; preds = %63, %58
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @SHA512_Transform(%struct.TYPE_6__* %75, i32* %78)
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* @SHA512_BLOCK_LENGTH, align 4
  %84 = sub nsw i32 %83, 2
  %85 = sext i32 %84 to i64
  %86 = call i32 @MEMSET_BZERO(i32* %82, i64 %85)
  br label %87

87:                                               ; preds = %74, %48
  br label %97

88:                                               ; preds = %1
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* @SHA512_SHORT_BLOCK_LENGTH, align 8
  %93 = call i32 @MEMSET_BZERO(i32* %91, i64 %92)
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  store i32 128, i32* %96, align 4
  br label %97

97:                                               ; preds = %88, %87
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  store i32* %100, i32** %101, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* @SHA512_SHORT_BLOCK_LENGTH, align 8
  %110 = udiv i64 %109, 8
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32 %106, i32* %111, align 4
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = load i64, i64* @SHA512_SHORT_BLOCK_LENGTH, align 8
  %120 = udiv i64 %119, 8
  %121 = add i64 %120, 1
  %122 = getelementptr inbounds i32, i32* %118, i64 %121
  store i32 %116, i32* %122, align 4
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @SHA512_Transform(%struct.TYPE_6__* %123, i32* %126)
  ret void
}

declare dso_local i32 @REVERSE64(i32, i32) #1

declare dso_local i32 @MEMSET_BZERO(i32*, i64) #1

declare dso_local i32 @SHA512_Transform(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
