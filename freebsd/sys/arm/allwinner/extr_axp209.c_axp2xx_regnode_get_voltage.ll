; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_axp209.c_axp2xx_regnode_get_voltage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_axp209.c_axp2xx_regnode_get_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regnode = type { i32 }
%struct.axp2xx_reg_sc = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regnode*, i32*)* @axp2xx_regnode_get_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp2xx_regnode_get_voltage(%struct.regnode* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regnode*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.axp2xx_reg_sc*, align 8
  %7 = alloca i32, align 4
  store %struct.regnode* %0, %struct.regnode** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.regnode*, %struct.regnode** %4, align 8
  %9 = call %struct.axp2xx_reg_sc* @regnode_get_softc(%struct.regnode* %8)
  store %struct.axp2xx_reg_sc* %9, %struct.axp2xx_reg_sc** %6, align 8
  %10 = load %struct.axp2xx_reg_sc*, %struct.axp2xx_reg_sc** %6, align 8
  %11 = getelementptr inbounds %struct.axp2xx_reg_sc, %struct.axp2xx_reg_sc* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENXIO, align 4
  store i32 %17, i32* %3, align 4
  br label %38

18:                                               ; preds = %2
  %19 = load %struct.axp2xx_reg_sc*, %struct.axp2xx_reg_sc** %6, align 8
  %20 = getelementptr inbounds %struct.axp2xx_reg_sc, %struct.axp2xx_reg_sc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.axp2xx_reg_sc*, %struct.axp2xx_reg_sc** %6, align 8
  %23 = getelementptr inbounds %struct.axp2xx_reg_sc, %struct.axp2xx_reg_sc* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @axp2xx_read(i32 %21, i32 %26, i32* %7, i32 1)
  %28 = load %struct.axp2xx_reg_sc*, %struct.axp2xx_reg_sc** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.axp2xx_reg_sc*, %struct.axp2xx_reg_sc** %6, align 8
  %31 = getelementptr inbounds %struct.axp2xx_reg_sc, %struct.axp2xx_reg_sc* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %29, %34
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @axp2xx_regnode_reg_to_voltage(%struct.axp2xx_reg_sc* %28, i32 %35, i32* %36)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %18, %16
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.axp2xx_reg_sc* @regnode_get_softc(%struct.regnode*) #1

declare dso_local i32 @axp2xx_read(i32, i32, i32*, i32) #1

declare dso_local i32 @axp2xx_regnode_reg_to_voltage(%struct.axp2xx_reg_sc*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
