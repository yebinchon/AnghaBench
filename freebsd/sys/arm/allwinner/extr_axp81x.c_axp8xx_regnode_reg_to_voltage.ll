; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_axp81x.c_axp8xx_regnode_reg_to_voltage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_axp81x.c_axp8xx_regnode_reg_to_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axp8xx_reg_sc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.axp8xx_reg_sc*, i32, i32*)* @axp8xx_regnode_reg_to_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axp8xx_regnode_reg_to_voltage(%struct.axp8xx_reg_sc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.axp8xx_reg_sc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.axp8xx_reg_sc* %0, %struct.axp8xx_reg_sc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.axp8xx_reg_sc*, %struct.axp8xx_reg_sc** %4, align 8
  %9 = getelementptr inbounds %struct.axp8xx_reg_sc, %struct.axp8xx_reg_sc* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %7, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %3
  %15 = load %struct.axp8xx_reg_sc*, %struct.axp8xx_reg_sc** %4, align 8
  %16 = getelementptr inbounds %struct.axp8xx_reg_sc, %struct.axp8xx_reg_sc* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.axp8xx_reg_sc*, %struct.axp8xx_reg_sc** %4, align 8
  %22 = getelementptr inbounds %struct.axp8xx_reg_sc, %struct.axp8xx_reg_sc* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %20, %25
  %27 = add nsw i32 %19, %26
  %28 = load i32*, i32** %6, align 8
  store i32 %27, i32* %28, align 4
  br label %62

29:                                               ; preds = %3
  %30 = load %struct.axp8xx_reg_sc*, %struct.axp8xx_reg_sc** %4, align 8
  %31 = getelementptr inbounds %struct.axp8xx_reg_sc, %struct.axp8xx_reg_sc* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.axp8xx_reg_sc*, %struct.axp8xx_reg_sc** %4, align 8
  %36 = getelementptr inbounds %struct.axp8xx_reg_sc, %struct.axp8xx_reg_sc* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.axp8xx_reg_sc*, %struct.axp8xx_reg_sc** %4, align 8
  %41 = getelementptr inbounds %struct.axp8xx_reg_sc, %struct.axp8xx_reg_sc* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %39, %44
  %46 = add nsw i32 %34, %45
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.axp8xx_reg_sc*, %struct.axp8xx_reg_sc** %4, align 8
  %49 = getelementptr inbounds %struct.axp8xx_reg_sc, %struct.axp8xx_reg_sc* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %47, %52
  %54 = load %struct.axp8xx_reg_sc*, %struct.axp8xx_reg_sc** %4, align 8
  %55 = getelementptr inbounds %struct.axp8xx_reg_sc, %struct.axp8xx_reg_sc* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %53, %58
  %60 = add nsw i32 %46, %59
  %61 = load i32*, i32** %6, align 8
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %29, %14
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %64, 1000
  store i32 %65, i32* %63, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
