; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_sha2.c_isc_sha256_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_sha2.c_isc_sha256_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@ISC_SHA256_BLOCK_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isc_sha256_update(%struct.TYPE_4__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %147

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
  %21 = call i32 @REQUIRE(i32 %20)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = ashr i32 %24, 3
  %26 = load i32, i32* @ISC_SHA256_BLOCK_LENGTH, align 4
  %27 = srem i32 %25, %26
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ugt i32 %28, 0
  br i1 %29, label %30, label %91

30:                                               ; preds = %18
  %31 = load i32, i32* @ISC_SHA256_BLOCK_LENGTH, align 4
  %32 = load i32, i32* %8, align 4
  %33 = sub i32 %31, %32
  store i32 %33, i32* %7, align 4
  %34 = load i64, i64* %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = zext i32 %35 to i64
  %37 = icmp uge i64 %34, %36
  br i1 %37, label %38, label %68

38:                                               ; preds = %30
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = zext i32 %46 to i64
  %48 = call i32 @memcpy(i32* %44, i32* %45, i64 %47)
  %49 = load i32, i32* %7, align 4
  %50 = shl i32 %49, 3
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = load i32, i32* %7, align 4
  %56 = zext i32 %55 to i64
  %57 = load i64, i64* %6, align 8
  %58 = sub i64 %57, %56
  store i64 %58, i64* %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32*, i32** %5, align 8
  %61 = zext i32 %59 to i64
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32* %62, i32** %5, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @isc_sha256_transform(%struct.TYPE_4__* %63, i32* %66)
  br label %90

68:                                               ; preds = %30
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32*, i32** %5, align 8
  %76 = load i64, i64* %6, align 8
  %77 = call i32 @memcpy(i32* %74, i32* %75, i64 %76)
  %78 = load i64, i64* %6, align 8
  %79 = shl i64 %78, 3
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = add i64 %83, %79
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %81, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @POST(i32 %86)
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @POST(i32 %88)
  br label %147

90:                                               ; preds = %38
  br label %91

91:                                               ; preds = %90, %18
  br label %92

92:                                               ; preds = %97, %91
  %93 = load i64, i64* %6, align 8
  %94 = load i32, i32* @ISC_SHA256_BLOCK_LENGTH, align 4
  %95 = sext i32 %94 to i64
  %96 = icmp uge i64 %93, %95
  br i1 %96, label %97, label %124

97:                                               ; preds = %92
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i32*, i32** %5, align 8
  %102 = load i32, i32* @ISC_SHA256_BLOCK_LENGTH, align 4
  %103 = sext i32 %102 to i64
  %104 = call i32 @memcpy(i32* %100, i32* %101, i64 %103)
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @isc_sha256_transform(%struct.TYPE_4__* %105, i32* %108)
  %110 = load i32, i32* @ISC_SHA256_BLOCK_LENGTH, align 4
  %111 = shl i32 %110, 3
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, %111
  store i32 %115, i32* %113, align 8
  %116 = load i32, i32* @ISC_SHA256_BLOCK_LENGTH, align 4
  %117 = sext i32 %116 to i64
  %118 = load i64, i64* %6, align 8
  %119 = sub i64 %118, %117
  store i64 %119, i64* %6, align 8
  %120 = load i32, i32* @ISC_SHA256_BLOCK_LENGTH, align 4
  %121 = load i32*, i32** %5, align 8
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  store i32* %123, i32** %5, align 8
  br label %92

124:                                              ; preds = %92
  %125 = load i64, i64* %6, align 8
  %126 = icmp ugt i64 %125, 0
  br i1 %126, label %127, label %142

127:                                              ; preds = %124
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load i32*, i32** %5, align 8
  %132 = load i64, i64* %6, align 8
  %133 = call i32 @memcpy(i32* %130, i32* %131, i64 %132)
  %134 = load i64, i64* %6, align 8
  %135 = shl i64 %134, 3
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = sext i32 %138 to i64
  %140 = add i64 %139, %135
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %137, align 8
  br label %142

142:                                              ; preds = %127, %124
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %143 = load i32, i32* %8, align 4
  %144 = call i32 @POST(i32 %143)
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @POST(i32 %145)
  br label %147

147:                                              ; preds = %142, %68, %11
  ret void
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @isc_sha256_transform(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @POST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
