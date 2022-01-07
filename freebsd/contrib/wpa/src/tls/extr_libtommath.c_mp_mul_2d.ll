; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_libtommath.c_mp_mul_2d.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_libtommath.c_mp_mul_2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32* }

@MP_OKAY = common dso_local global i32 0, align 4
@DIGIT_BIT = common dso_local global i32 0, align 4
@MP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, %struct.TYPE_9__*)* @mp_mul_2d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_mul_2d(%struct.TYPE_9__* %0, i32 %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %18 = icmp ne %struct.TYPE_9__* %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %3
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %22 = call i32 @mp_copy(%struct.TYPE_9__* %20, %struct.TYPE_9__* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* @MP_OKAY, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %4, align 4
  br label %135

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27, %3
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @DIGIT_BIT, align 4
  %37 = sdiv i32 %35, %36
  %38 = add nsw i32 %34, %37
  %39 = add nsw i32 %38, 1
  %40 = icmp slt i32 %31, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %28
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @DIGIT_BIT, align 4
  %48 = sdiv i32 %46, %47
  %49 = add nsw i32 %45, %48
  %50 = add nsw i32 %49, 1
  %51 = call i32 @mp_grow(%struct.TYPE_9__* %42, i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* @MP_OKAY, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %41
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %4, align 4
  br label %135

56:                                               ; preds = %41
  br label %57

57:                                               ; preds = %56, %28
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @DIGIT_BIT, align 4
  %60 = icmp sge i32 %58, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %57
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @DIGIT_BIT, align 4
  %65 = sdiv i32 %63, %64
  %66 = call i32 @mp_lshd(%struct.TYPE_9__* %62, i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* @MP_OKAY, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %4, align 4
  br label %135

71:                                               ; preds = %61
  br label %72

72:                                               ; preds = %71, %57
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @DIGIT_BIT, align 4
  %75 = srem i32 %73, %74
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %131

78:                                               ; preds = %72
  %79 = load i32, i32* %8, align 4
  %80 = shl i32 1, %79
  %81 = sub nsw i32 %80, 1
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* @DIGIT_BIT, align 4
  %83 = load i32, i32* %8, align 4
  %84 = sub nsw i32 %82, %83
  store i32 %84, i32* %11, align 4
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  store i32* %87, i32** %10, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %88

88:                                               ; preds = %113, %78
  %89 = load i32, i32* %15, align 4
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %116

94:                                               ; preds = %88
  %95 = load i32*, i32** %10, align 8
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %11, align 4
  %98 = ashr i32 %96, %97
  %99 = load i32, i32* %12, align 4
  %100 = and i32 %98, %99
  store i32 %100, i32* %14, align 4
  %101 = load i32*, i32** %10, align 8
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %8, align 4
  %104 = shl i32 %102, %103
  %105 = load i32, i32* %13, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @MP_MASK, align 4
  %108 = and i32 %106, %107
  %109 = load i32*, i32** %10, align 8
  store i32 %108, i32* %109, align 4
  %110 = load i32*, i32** %10, align 8
  %111 = getelementptr inbounds i32, i32* %110, i32 1
  store i32* %111, i32** %10, align 8
  %112 = load i32, i32* %14, align 4
  store i32 %112, i32* %13, align 4
  br label %113

113:                                              ; preds = %94
  %114 = load i32, i32* %15, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %15, align 4
  br label %88

116:                                              ; preds = %88
  %117 = load i32, i32* %13, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %130

119:                                              ; preds = %116
  %120 = load i32, i32* %13, align 4
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 4
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i32, i32* %123, i64 %128
  store i32 %120, i32* %129, align 4
  br label %130

130:                                              ; preds = %119, %116
  br label %131

131:                                              ; preds = %130, %72
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %133 = call i32 @mp_clamp(%struct.TYPE_9__* %132)
  %134 = load i32, i32* @MP_OKAY, align 4
  store i32 %134, i32* %4, align 4
  br label %135

135:                                              ; preds = %131, %69, %54, %25
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local i32 @mp_copy(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @mp_grow(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @mp_lshd(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @mp_clamp(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
