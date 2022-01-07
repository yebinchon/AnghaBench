; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_axp81x.c_axp8xx_regnode_set_voltage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_axp81x.c_axp8xx_regnode_set_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regnode = type { i32 }
%struct.axp8xx_reg_sc = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32, i32 }

@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Setting %s (%s) to %d<->%d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regnode*, i32, i32, i32*)* @axp8xx_regnode_set_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp8xx_regnode_set_voltage(%struct.regnode* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.regnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.axp8xx_reg_sc*, align 8
  %11 = alloca i32, align 4
  store %struct.regnode* %0, %struct.regnode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.regnode*, %struct.regnode** %6, align 8
  %13 = call %struct.axp8xx_reg_sc* @regnode_get_softc(%struct.regnode* %12)
  store %struct.axp8xx_reg_sc* %13, %struct.axp8xx_reg_sc** %10, align 8
  %14 = load i64, i64* @bootverbose, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %4
  %17 = load %struct.axp8xx_reg_sc*, %struct.axp8xx_reg_sc** %10, align 8
  %18 = getelementptr inbounds %struct.axp8xx_reg_sc, %struct.axp8xx_reg_sc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.regnode*, %struct.regnode** %6, align 8
  %21 = call i32 @regnode_get_name(%struct.regnode* %20)
  %22 = load %struct.axp8xx_reg_sc*, %struct.axp8xx_reg_sc** %10, align 8
  %23 = getelementptr inbounds %struct.axp8xx_reg_sc, %struct.axp8xx_reg_sc* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @device_printf(i32 %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %16, %4
  %31 = load %struct.axp8xx_reg_sc*, %struct.axp8xx_reg_sc** %10, align 8
  %32 = getelementptr inbounds %struct.axp8xx_reg_sc, %struct.axp8xx_reg_sc* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* @ENXIO, align 4
  store i32 %38, i32* %5, align 4
  br label %59

39:                                               ; preds = %30
  %40 = load %struct.axp8xx_reg_sc*, %struct.axp8xx_reg_sc** %10, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i64 @axp8xx_regnode_voltage_to_reg(%struct.axp8xx_reg_sc* %40, i32 %41, i32 %42, i32* %11)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @ERANGE, align 4
  store i32 %46, i32* %5, align 4
  br label %59

47:                                               ; preds = %39
  %48 = load %struct.axp8xx_reg_sc*, %struct.axp8xx_reg_sc** %10, align 8
  %49 = getelementptr inbounds %struct.axp8xx_reg_sc, %struct.axp8xx_reg_sc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.axp8xx_reg_sc*, %struct.axp8xx_reg_sc** %10, align 8
  %52 = getelementptr inbounds %struct.axp8xx_reg_sc, %struct.axp8xx_reg_sc* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @axp8xx_write(i32 %50, i32 %55, i32 %56)
  %58 = load i32*, i32** %9, align 8
  store i32 0, i32* %58, align 4
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %47, %45, %37
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local %struct.axp8xx_reg_sc* @regnode_get_softc(%struct.regnode*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @regnode_get_name(%struct.regnode*) #1

declare dso_local i64 @axp8xx_regnode_voltage_to_reg(%struct.axp8xx_reg_sc*, i32, i32, i32*) #1

declare dso_local i32 @axp8xx_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
