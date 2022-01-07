; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libb2/extr_blake2bp.c_blake2bp_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libb2/extr_blake2bp.c_blake2bp_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32*, i32* }

@PARALLELISM_DEGREE = common dso_local global i64 0, align 8
@BLAKE2B_BLOCKBYTES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blake2bp_update(%struct.TYPE_3__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = sub i64 8, %16
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %63

20:                                               ; preds = %3
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp uge i64 %21, %22
  br i1 %23, label %24, label %63

24:                                               ; preds = %20
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32*, i32** %5, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @memcpy(i32* %29, i32* %30, i64 %31)
  store i64 0, i64* %9, align 8
  br label %33

33:                                               ; preds = %53, %24
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* @PARALLELISM_DEGREE, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %33
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* %9, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* @BLAKE2B_BLOCKBYTES, align 8
  %49 = mul i64 %47, %48
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i64, i64* @BLAKE2B_BLOCKBYTES, align 8
  %52 = call i32 @blake2b_update(i32 %43, i32* %50, i64 %51)
  br label %53

53:                                               ; preds = %37
  %54 = load i64, i64* %9, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %9, align 8
  br label %33

56:                                               ; preds = %33
  %57 = load i64, i64* %8, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 %57
  store i32* %59, i32** %5, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* %6, align 8
  %62 = sub i64 %61, %60
  store i64 %62, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %63

63:                                               ; preds = %56, %20, %3
  store i64 0, i64* %10, align 8
  br label %64

64:                                               ; preds = %103, %63
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* @PARALLELISM_DEGREE, align 8
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %68, label %106

68:                                               ; preds = %64
  %69 = load i64, i64* %6, align 8
  store i64 %69, i64* %11, align 8
  %70 = load i32*, i32** %5, align 8
  store i32* %70, i32** %12, align 8
  %71 = load i64, i64* %10, align 8
  %72 = load i64, i64* @BLAKE2B_BLOCKBYTES, align 8
  %73 = mul i64 %71, %72
  %74 = load i32*, i32** %12, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 %73
  store i32* %75, i32** %12, align 8
  br label %76

76:                                               ; preds = %82, %68
  %77 = load i64, i64* %11, align 8
  %78 = load i64, i64* @PARALLELISM_DEGREE, align 8
  %79 = load i64, i64* @BLAKE2B_BLOCKBYTES, align 8
  %80 = mul i64 %78, %79
  %81 = icmp uge i64 %77, %80
  br i1 %81, label %82, label %102

82:                                               ; preds = %76
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* %10, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %12, align 8
  %90 = load i64, i64* @BLAKE2B_BLOCKBYTES, align 8
  %91 = call i32 @blake2b_update(i32 %88, i32* %89, i64 %90)
  %92 = load i64, i64* @PARALLELISM_DEGREE, align 8
  %93 = load i64, i64* @BLAKE2B_BLOCKBYTES, align 8
  %94 = mul i64 %92, %93
  %95 = load i32*, i32** %12, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 %94
  store i32* %96, i32** %12, align 8
  %97 = load i64, i64* @PARALLELISM_DEGREE, align 8
  %98 = load i64, i64* @BLAKE2B_BLOCKBYTES, align 8
  %99 = mul i64 %97, %98
  %100 = load i64, i64* %11, align 8
  %101 = sub i64 %100, %99
  store i64 %101, i64* %11, align 8
  br label %76

102:                                              ; preds = %76
  br label %103

103:                                              ; preds = %102
  %104 = load i64, i64* %10, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %10, align 8
  br label %64

106:                                              ; preds = %64
  %107 = load i64, i64* %6, align 8
  %108 = load i64, i64* %6, align 8
  %109 = load i64, i64* @PARALLELISM_DEGREE, align 8
  %110 = load i64, i64* @BLAKE2B_BLOCKBYTES, align 8
  %111 = mul i64 %109, %110
  %112 = urem i64 %108, %111
  %113 = sub i64 %107, %112
  %114 = load i32*, i32** %5, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 %113
  store i32* %115, i32** %5, align 8
  %116 = load i64, i64* @PARALLELISM_DEGREE, align 8
  %117 = load i64, i64* @BLAKE2B_BLOCKBYTES, align 8
  %118 = mul i64 %116, %117
  %119 = load i64, i64* %6, align 8
  %120 = urem i64 %119, %118
  store i64 %120, i64* %6, align 8
  %121 = load i64, i64* %6, align 8
  %122 = icmp ugt i64 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %106
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = load i64, i64* %7, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  %129 = load i32*, i32** %5, align 8
  %130 = load i64, i64* %6, align 8
  %131 = call i32 @memcpy(i32* %128, i32* %129, i64 %130)
  br label %132

132:                                              ; preds = %123, %106
  %133 = load i64, i64* %7, align 8
  %134 = load i64, i64* %6, align 8
  %135 = add i64 %133, %134
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  store i64 %135, i64* %137, align 8
  ret i32 0
}

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @blake2b_update(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
