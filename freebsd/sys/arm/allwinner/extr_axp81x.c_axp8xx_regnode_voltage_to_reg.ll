; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_axp81x.c_axp8xx_regnode_voltage_to_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_axp81x.c_axp8xx_regnode_voltage_to_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axp8xx_reg_sc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.axp8xx_reg_sc*, i32, i32, i64*)* @axp8xx_regnode_voltage_to_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp8xx_regnode_voltage_to_reg(%struct.axp8xx_reg_sc* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.axp8xx_reg_sc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.axp8xx_reg_sc* %0, %struct.axp8xx_reg_sc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  store i64 0, i64* %10, align 8
  %13 = load %struct.axp8xx_reg_sc*, %struct.axp8xx_reg_sc** %6, align 8
  %14 = getelementptr inbounds %struct.axp8xx_reg_sc, %struct.axp8xx_reg_sc* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %17, 1000
  store i32 %18, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %19

19:                                               ; preds = %44, %4
  %20 = load i32, i32* %11, align 4
  %21 = load %struct.axp8xx_reg_sc*, %struct.axp8xx_reg_sc** %6, align 8
  %22 = getelementptr inbounds %struct.axp8xx_reg_sc, %struct.axp8xx_reg_sc* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %20, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  br label %31

31:                                               ; preds = %27, %19
  %32 = phi i1 [ false, %19 ], [ %30, %27 ]
  br i1 %32, label %33, label %47

33:                                               ; preds = %31
  %34 = load i64, i64* %10, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %10, align 8
  %36 = load %struct.axp8xx_reg_sc*, %struct.axp8xx_reg_sc** %6, align 8
  %37 = getelementptr inbounds %struct.axp8xx_reg_sc, %struct.axp8xx_reg_sc* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %40, 1000
  %42 = load i32, i32* %12, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %33
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %11, align 4
  br label %19

47:                                               ; preds = %31
  store i32 0, i32* %11, align 4
  br label %48

48:                                               ; preds = %73, %47
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.axp8xx_reg_sc*, %struct.axp8xx_reg_sc** %6, align 8
  %51 = getelementptr inbounds %struct.axp8xx_reg_sc, %struct.axp8xx_reg_sc* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %49, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %57, %58
  br label %60

60:                                               ; preds = %56, %48
  %61 = phi i1 [ false, %48 ], [ %59, %56 ]
  br i1 %61, label %62, label %76

62:                                               ; preds = %60
  %63 = load i64, i64* %10, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %10, align 8
  %65 = load %struct.axp8xx_reg_sc*, %struct.axp8xx_reg_sc** %6, align 8
  %66 = getelementptr inbounds %struct.axp8xx_reg_sc, %struct.axp8xx_reg_sc* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %69, 1000
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %12, align 4
  br label %73

73:                                               ; preds = %62
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %11, align 4
  br label %48

76:                                               ; preds = %60
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* @EINVAL, align 4
  store i32 %81, i32* %5, align 4
  br label %85

82:                                               ; preds = %76
  %83 = load i64, i64* %10, align 8
  %84 = load i64*, i64** %9, align 8
  store i64 %83, i64* %84, align 8
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %82, %80
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
