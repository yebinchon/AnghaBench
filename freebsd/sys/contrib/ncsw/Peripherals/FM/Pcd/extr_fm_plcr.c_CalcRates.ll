; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_plcr.c_CalcRates.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_plcr.c_CalcRates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32, i32 }

@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_SELECTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"timeStampPeriod to Information rate ratio is too small\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_3__*, i32*, i32*, i32*, i32*, i32*)* @CalcRates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CalcRates(i32 %0, %struct.TYPE_3__* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* %8, align 4
  %21 = shl i32 1, %20
  %22 = sdiv i32 10000, %21
  store i32 %22, i32* %18, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %25, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %7
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %18, align 4
  %38 = call i32 @GetInfoRateReg(i32 %33, i64 %36, i32 %37, i32 0, i32* %15, i32* %16)
  br label %48

39:                                               ; preds = %7
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %18, align 4
  %47 = call i32 @GetInfoRateReg(i32 %42, i64 %45, i32 %46, i32 0, i32* %15, i32* %16)
  br label %48

48:                                               ; preds = %39, %30
  %49 = load i32, i32* %15, align 4
  %50 = shl i32 %49, 16
  store i32 %50, i32* %17, align 4
  %51 = load i32, i32* %17, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %58, %53
  %55 = load i32, i32* %17, align 4
  %56 = and i32 %55, -2147483648
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i32, i32* %17, align 4
  %60 = shl i32 %59, 1
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %19, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %19, align 4
  br label %54

63:                                               ; preds = %54
  %64 = load i32, i32* %19, align 4
  %65 = icmp sgt i32 %64, 15
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i32, i32* @MAJOR, align 4
  %68 = load i32, i32* @E_INVALID_SELECTION, align 4
  %69 = call i32 @REPORT_ERROR(i32 %67, i32 %68, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %130

70:                                               ; preds = %63
  br label %88

71:                                               ; preds = %48
  %72 = load i32, i32* %16, align 4
  store i32 %72, i32* %17, align 4
  %73 = load i32, i32* %17, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  store i32 31, i32* %19, align 4
  br label %87

76:                                               ; preds = %71
  store i32 16, i32* %19, align 4
  br label %77

77:                                               ; preds = %81, %76
  %78 = load i32, i32* %17, align 4
  %79 = and i32 %78, 32768
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = load i32, i32* %17, align 4
  %83 = shl i32 %82, 1
  store i32 %83, i32* %17, align 4
  %84 = load i32, i32* %19, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %19, align 4
  br label %77

86:                                               ; preds = %77
  br label %87

87:                                               ; preds = %86, %75
  br label %88

88:                                               ; preds = %87, %70
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* %18, align 4
  %96 = load i32, i32* %19, align 4
  %97 = call i32 @GetInfoRateReg(i32 %91, i64 %94, i32 %95, i32 %96, i32* %15, i32* %16)
  %98 = load i32, i32* %15, align 4
  %99 = shl i32 %98, 16
  %100 = load i32, i32* %16, align 4
  %101 = and i32 %100, 65535
  %102 = or i32 %99, %101
  %103 = load i32*, i32** %10, align 8
  store i32 %102, i32* %103, align 4
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* %18, align 4
  %111 = load i32, i32* %19, align 4
  %112 = call i32 @GetInfoRateReg(i32 %106, i64 %109, i32 %110, i32 %111, i32* %15, i32* %16)
  %113 = load i32, i32* %15, align 4
  %114 = shl i32 %113, 16
  %115 = load i32, i32* %16, align 4
  %116 = and i32 %115, 65535
  %117 = or i32 %114, %116
  %118 = load i32*, i32** %12, align 8
  store i32 %117, i32* %118, align 4
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load i32*, i32** %11, align 8
  store i32 %121, i32* %122, align 4
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load i32*, i32** %13, align 8
  store i32 %125, i32* %126, align 4
  %127 = load i32, i32* %19, align 4
  %128 = call i32 @CalcFPP(i32 %127)
  %129 = load i32*, i32** %14, align 8
  store i32 %128, i32* %129, align 4
  br label %130

130:                                              ; preds = %88, %66
  ret void
}

declare dso_local i32 @GetInfoRateReg(i32, i64, i32, i32, i32*, i32*) #1

declare dso_local i32 @REPORT_ERROR(i32, i32, i8*) #1

declare dso_local i32 @CalcFPP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
