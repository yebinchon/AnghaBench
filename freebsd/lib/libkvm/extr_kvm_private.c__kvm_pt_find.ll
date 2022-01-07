; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_private.c__kvm_pt_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_private.c__kvm_pt_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32*, i32, i32 }

@POPCOUNT_BITS = common dso_local global i32 0, align 4
@NBBY = common dso_local global i32 0, align 4
@uint8_t = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_kvm_pt_find(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %8, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = udiv i32 %19, %20
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @BITS_IN(i32 %24)
  %26 = udiv i32 %22, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @POPCOUNT_BITS, align 4
  %29 = udiv i32 %27, %28
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @BITS_IN(i32 %32)
  %34 = urem i32 %30, %33
  %35 = zext i32 %34 to i64
  %36 = shl i64 1, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @NBBY, align 4
  %43 = mul i32 %41, %42
  %44 = icmp uge i32 %38, %43
  br i1 %44, label %54, label %45

45:                                               ; preds = %3
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %10, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %12, align 4
  %52 = and i32 %50, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45, %3
  store i32 -1, i32* %4, align 4
  br label %139

55:                                               ; preds = %45
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @POPCOUNT_BITS, align 4
  %58 = urem i32 %56, %57
  %59 = load i32, i32* @POPCOUNT_BITS, align 4
  %60 = udiv i32 %59, 2
  %61 = icmp ult i32 %58, %60
  br i1 %61, label %62, label %85

62:                                               ; preds = %55
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load i32*, i32** %8, align 8
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @POPCOUNTS_IN(i32 %73)
  %75 = mul i32 %71, %74
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %70, i64 %76
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @POPCOUNT_BITS, align 4
  %81 = mul i32 %79, %80
  %82 = sub i32 %78, %81
  %83 = call i32 @popcount_bytes(i32* %77, i32 0, i32 %82)
  %84 = add i32 %69, %83
  store i32 %84, i32* %14, align 4
  br label %122

85:                                               ; preds = %55
  %86 = load i32, i32* %10, align 4
  %87 = load i32*, i32** %8, align 8
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @BITS_IN(i32 %88)
  %90 = mul i32 %86, %89
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* %11, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* @POPCOUNT_BITS, align 4
  %95 = mul i32 %93, %94
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @uint8_t, align 4
  %100 = call i32 @BITS_IN(i32 %99)
  %101 = mul i32 %98, %100
  %102 = call i32 @MIN(i32 %95, i32 %101)
  store i32 %102, i32* %13, align 4
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %11, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %8, align 8
  %111 = load i32, i32* %10, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %15, align 4
  %116 = sub i32 %114, %115
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* %15, align 4
  %119 = sub i32 %117, %118
  %120 = call i32 @popcount_bytes(i32* %113, i32 %116, i32 %119)
  %121 = sub i32 %109, %120
  store i32 %121, i32* %14, align 4
  br label %122

122:                                              ; preds = %85, %62
  %123 = load i32, i32* %14, align 4
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %7, align 4
  %128 = udiv i32 %126, %127
  %129 = icmp uge i32 %123, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %122
  store i32 -1, i32* %4, align 4
  br label %139

131:                                              ; preds = %122
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* %7, align 4
  %137 = mul i32 %135, %136
  %138 = add i32 %134, %137
  store i32 %138, i32* %4, align 4
  br label %139

139:                                              ; preds = %131, %130, %54
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i32 @BITS_IN(i32) #1

declare dso_local i32 @popcount_bytes(i32*, i32, i32) #1

declare dso_local i32 @POPCOUNTS_IN(i32) #1

declare dso_local i32 @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
