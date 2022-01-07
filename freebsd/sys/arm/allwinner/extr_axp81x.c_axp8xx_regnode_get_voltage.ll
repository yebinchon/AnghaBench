; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_axp81x.c_axp8xx_regnode_get_voltage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_axp81x.c_axp8xx_regnode_get_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regnode = type { i32 }
%struct.axp8xx_reg_sc = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@AXP_VOLTCTL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regnode*, i32*)* @axp8xx_regnode_get_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp8xx_regnode_get_voltage(%struct.regnode* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regnode*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.axp8xx_reg_sc*, align 8
  %7 = alloca i32, align 4
  store %struct.regnode* %0, %struct.regnode** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.regnode*, %struct.regnode** %4, align 8
  %9 = call %struct.axp8xx_reg_sc* @regnode_get_softc(%struct.regnode* %8)
  store %struct.axp8xx_reg_sc* %9, %struct.axp8xx_reg_sc** %6, align 8
  %10 = load %struct.axp8xx_reg_sc*, %struct.axp8xx_reg_sc** %6, align 8
  %11 = getelementptr inbounds %struct.axp8xx_reg_sc, %struct.axp8xx_reg_sc* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.axp8xx_reg_sc*, %struct.axp8xx_reg_sc** %6, align 8
  %18 = getelementptr inbounds %struct.axp8xx_reg_sc, %struct.axp8xx_reg_sc* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %16, %2
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %3, align 4
  br label %41

25:                                               ; preds = %16
  %26 = load %struct.axp8xx_reg_sc*, %struct.axp8xx_reg_sc** %6, align 8
  %27 = getelementptr inbounds %struct.axp8xx_reg_sc, %struct.axp8xx_reg_sc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.axp8xx_reg_sc*, %struct.axp8xx_reg_sc** %6, align 8
  %30 = getelementptr inbounds %struct.axp8xx_reg_sc, %struct.axp8xx_reg_sc* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @axp8xx_read(i32 %28, i32 %33, i32* %7, i32 1)
  %35 = load %struct.axp8xx_reg_sc*, %struct.axp8xx_reg_sc** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @AXP_VOLTCTL_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @axp8xx_regnode_reg_to_voltage(%struct.axp8xx_reg_sc* %35, i32 %38, i32* %39)
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %25, %23
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.axp8xx_reg_sc* @regnode_get_softc(%struct.regnode*) #1

declare dso_local i32 @axp8xx_read(i32, i32, i32*, i32) #1

declare dso_local i32 @axp8xx_regnode_reg_to_voltage(%struct.axp8xx_reg_sc*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
