; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_sha2.c_isc_sha512_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_sha2.c_isc_sha512_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32* }

@ISC_SHA512_BLOCK_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isc_sha512_update(%struct.TYPE_4__* %0, i32* %1, i64 %2) #0 {
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
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 3
  %28 = load i32, i32* @ISC_SHA512_BLOCK_LENGTH, align 4
  %29 = srem i32 %27, %28
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ugt i32 %30, 0
  br i1 %31, label %32, label %92

32:                                               ; preds = %18
  %33 = load i32, i32* @ISC_SHA512_BLOCK_LENGTH, align 4
  %34 = load i32, i32* %8, align 4
  %35 = sub i32 %33, %34
  store i32 %35, i32* %7, align 4
  %36 = load i64, i64* %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = zext i32 %37 to i64
  %39 = icmp uge i64 %36, %38
  br i1 %39, label %40, label %71

40:                                               ; preds = %32
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = call i32 @memcpy(i32* %46, i32* %47, i64 %49)
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = shl i32 %54, 3
  %56 = zext i32 %55 to i64
  %57 = call i32 @ADDINC128(i32* %53, i64 %56)
  %58 = load i32, i32* %7, align 4
  %59 = zext i32 %58 to i64
  %60 = load i64, i64* %6, align 8
  %61 = sub i64 %60, %59
  store i64 %61, i64* %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32*, i32** %5, align 8
  %64 = zext i32 %62 to i64
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  store i32* %65, i32** %5, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @isc_sha512_transform(%struct.TYPE_4__* %66, i32* %69)
  br label %91

71:                                               ; preds = %32
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32*, i32** %5, align 8
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @memcpy(i32* %77, i32* %78, i64 %79)
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* %6, align 8
  %85 = shl i64 %84, 3
  %86 = call i32 @ADDINC128(i32* %83, i64 %85)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @POST(i32 %87)
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @POST(i32 %89)
  br label %147

91:                                               ; preds = %40
  br label %92

92:                                               ; preds = %91, %18
  br label %93

93:                                               ; preds = %98, %92
  %94 = load i64, i64* %6, align 8
  %95 = load i32, i32* @ISC_SHA512_BLOCK_LENGTH, align 4
  %96 = sext i32 %95 to i64
  %97 = icmp uge i64 %94, %96
  br i1 %97, label %98, label %126

98:                                               ; preds = %93
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i32*, i32** %5, align 8
  %103 = load i32, i32* @ISC_SHA512_BLOCK_LENGTH, align 4
  %104 = sext i32 %103 to i64
  %105 = call i32 @memcpy(i32* %101, i32* %102, i64 %104)
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @isc_sha512_transform(%struct.TYPE_4__* %106, i32* %109)
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* @ISC_SHA512_BLOCK_LENGTH, align 4
  %115 = shl i32 %114, 3
  %116 = sext i32 %115 to i64
  %117 = call i32 @ADDINC128(i32* %113, i64 %116)
  %118 = load i32, i32* @ISC_SHA512_BLOCK_LENGTH, align 4
  %119 = sext i32 %118 to i64
  %120 = load i64, i64* %6, align 8
  %121 = sub i64 %120, %119
  store i64 %121, i64* %6, align 8
  %122 = load i32, i32* @ISC_SHA512_BLOCK_LENGTH, align 4
  %123 = load i32*, i32** %5, align 8
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  store i32* %125, i32** %5, align 8
  br label %93

126:                                              ; preds = %93
  %127 = load i64, i64* %6, align 8
  %128 = icmp ugt i64 %127, 0
  br i1 %128, label %129, label %142

129:                                              ; preds = %126
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = load i32*, i32** %5, align 8
  %134 = load i64, i64* %6, align 8
  %135 = call i32 @memcpy(i32* %132, i32* %133, i64 %134)
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = load i64, i64* %6, align 8
  %140 = shl i64 %139, 3
  %141 = call i32 @ADDINC128(i32* %138, i64 %140)
  br label %142

142:                                              ; preds = %129, %126
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %143 = load i32, i32* %8, align 4
  %144 = call i32 @POST(i32 %143)
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @POST(i32 %145)
  br label %147

147:                                              ; preds = %142, %71, %11
  ret void
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @ADDINC128(i32*, i64) #1

declare dso_local i32 @isc_sha512_transform(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @POST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
