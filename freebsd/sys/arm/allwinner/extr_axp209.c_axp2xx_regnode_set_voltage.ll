; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_axp209.c_axp2xx_regnode_set_voltage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_axp209.c_axp2xx_regnode_set_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regnode = type { i32 }
%struct.axp2xx_reg_sc = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regnode*, i32, i32, i32*)* @axp2xx_regnode_set_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp2xx_regnode_set_voltage(%struct.regnode* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.regnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.axp2xx_reg_sc*, align 8
  %11 = alloca i32, align 4
  store %struct.regnode* %0, %struct.regnode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.regnode*, %struct.regnode** %6, align 8
  %13 = call %struct.axp2xx_reg_sc* @regnode_get_softc(%struct.regnode* %12)
  store %struct.axp2xx_reg_sc* %13, %struct.axp2xx_reg_sc** %10, align 8
  %14 = load %struct.axp2xx_reg_sc*, %struct.axp2xx_reg_sc** %10, align 8
  %15 = getelementptr inbounds %struct.axp2xx_reg_sc, %struct.axp2xx_reg_sc* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @ENXIO, align 4
  store i32 %21, i32* %5, align 4
  br label %42

22:                                               ; preds = %4
  %23 = load %struct.axp2xx_reg_sc*, %struct.axp2xx_reg_sc** %10, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @axp2xx_regnode_voltage_to_reg(%struct.axp2xx_reg_sc* %23, i32 %24, i32 %25, i32* %11)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @ERANGE, align 4
  store i32 %29, i32* %5, align 4
  br label %42

30:                                               ; preds = %22
  %31 = load %struct.axp2xx_reg_sc*, %struct.axp2xx_reg_sc** %10, align 8
  %32 = getelementptr inbounds %struct.axp2xx_reg_sc, %struct.axp2xx_reg_sc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.axp2xx_reg_sc*, %struct.axp2xx_reg_sc** %10, align 8
  %35 = getelementptr inbounds %struct.axp2xx_reg_sc, %struct.axp2xx_reg_sc* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @axp2xx_write(i32 %33, i32 %38, i32 %39)
  %41 = load i32*, i32** %9, align 8
  store i32 0, i32* %41, align 4
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %30, %28, %20
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local %struct.axp2xx_reg_sc* @regnode_get_softc(%struct.regnode*) #1

declare dso_local i64 @axp2xx_regnode_voltage_to_reg(%struct.axp2xx_reg_sc*, i32, i32, i32*) #1

declare dso_local i32 @axp2xx_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
