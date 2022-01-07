; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/skein/extr_skein.c_Skein_512_Update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/skein/extr_skein.c_Skein_512_Update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32* }
%struct.TYPE_5__ = type { i64 }

@SKEIN_512_BLOCK_BYTES = common dso_local global i64 0, align 8
@SKEIN_FAIL = common dso_local global i32 0, align 4
@SKEIN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Skein_512_Update(%struct.TYPE_6__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SKEIN_512_BLOCK_BYTES, align 8
  %13 = icmp ule i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* @SKEIN_FAIL, align 4
  %16 = call i32 @Skein_Assert(i32 %14, i32 %15)
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %17, %21
  %23 = load i64, i64* @SKEIN_512_BLOCK_BYTES, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %119

25:                                               ; preds = %3
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %87

31:                                               ; preds = %25
  %32 = load i64, i64* @SKEIN_512_BLOCK_BYTES, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub i64 %32, %36
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %69

40:                                               ; preds = %31
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %6, align 8
  %43 = icmp ult i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @Skein_assert(i32 %44)
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  %54 = load i32*, i32** %5, align 8
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @memcpy(i32* %53, i32* %54, i64 %55)
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* %6, align 8
  %59 = sub i64 %58, %57
  store i64 %59, i64* %6, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 %60
  store i32* %62, i32** %5, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add i64 %67, %63
  store i64 %68, i64* %66, align 8
  br label %69

69:                                               ; preds = %40, %31
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @SKEIN_512_BLOCK_BYTES, align 8
  %75 = icmp eq i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @Skein_assert(i32 %76)
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* @SKEIN_512_BLOCK_BYTES, align 8
  %83 = call i32 @Skein_512_Process_Block(%struct.TYPE_6__* %78, i32* %81, i64 1, i64 %82)
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  store i64 0, i64* %86, align 8
  br label %87

87:                                               ; preds = %69, %25
  %88 = load i64, i64* %6, align 8
  %89 = load i64, i64* @SKEIN_512_BLOCK_BYTES, align 8
  %90 = icmp ugt i64 %88, %89
  br i1 %90, label %91, label %111

91:                                               ; preds = %87
  %92 = load i64, i64* %6, align 8
  %93 = sub i64 %92, 1
  %94 = load i64, i64* @SKEIN_512_BLOCK_BYTES, align 8
  %95 = udiv i64 %93, %94
  store i64 %95, i64* %7, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %97 = load i32*, i32** %5, align 8
  %98 = load i64, i64* %7, align 8
  %99 = load i64, i64* @SKEIN_512_BLOCK_BYTES, align 8
  %100 = call i32 @Skein_512_Process_Block(%struct.TYPE_6__* %96, i32* %97, i64 %98, i64 %99)
  %101 = load i64, i64* %7, align 8
  %102 = load i64, i64* @SKEIN_512_BLOCK_BYTES, align 8
  %103 = mul i64 %101, %102
  %104 = load i64, i64* %6, align 8
  %105 = sub i64 %104, %103
  store i64 %105, i64* %6, align 8
  %106 = load i64, i64* %7, align 8
  %107 = load i64, i64* @SKEIN_512_BLOCK_BYTES, align 8
  %108 = mul i64 %106, %107
  %109 = load i32*, i32** %5, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 %108
  store i32* %110, i32** %5, align 8
  br label %111

111:                                              ; preds = %91, %87
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %115, 0
  %117 = zext i1 %116 to i32
  %118 = call i32 @Skein_assert(i32 %117)
  br label %119

119:                                              ; preds = %111, %3
  %120 = load i64, i64* %6, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %150

122:                                              ; preds = %119
  %123 = load i64, i64* %6, align 8
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = add i64 %123, %127
  %129 = load i64, i64* @SKEIN_512_BLOCK_BYTES, align 8
  %130 = icmp ule i64 %128, %129
  %131 = zext i1 %130 to i32
  %132 = call i32 @Skein_assert(i32 %131)
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds i32, i32* %135, i64 %139
  %141 = load i32*, i32** %5, align 8
  %142 = load i64, i64* %6, align 8
  %143 = call i32 @memcpy(i32* %140, i32* %141, i64 %142)
  %144 = load i64, i64* %6, align 8
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = add i64 %148, %144
  store i64 %149, i64* %147, align 8
  br label %150

150:                                              ; preds = %122, %119
  %151 = load i32, i32* @SKEIN_SUCCESS, align 4
  ret i32 %151
}

declare dso_local i32 @Skein_Assert(i32, i32) #1

declare dso_local i32 @Skein_assert(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @Skein_512_Process_Block(%struct.TYPE_6__*, i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
