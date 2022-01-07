; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk805.c_rk805_regnode_set_voltage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk805.c_rk805_regnode_set_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regnode = type { i32 }
%struct.rk805_reg_sc = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Setting %s to %d<->%d uvolts\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Regulator %s set to %d uvolt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regnode*, i32, i32, i32*)* @rk805_regnode_set_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk805_regnode_set_voltage(%struct.regnode* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.regnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.rk805_reg_sc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.regnode* %0, %struct.regnode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load %struct.regnode*, %struct.regnode** %6, align 8
  %14 = call %struct.rk805_reg_sc* @regnode_get_softc(%struct.regnode* %13)
  store %struct.rk805_reg_sc* %14, %struct.rk805_reg_sc** %10, align 8
  %15 = load %struct.rk805_reg_sc*, %struct.rk805_reg_sc** %10, align 8
  %16 = getelementptr inbounds %struct.rk805_reg_sc, %struct.rk805_reg_sc* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %5, align 4
  br label %81

23:                                               ; preds = %4
  %24 = load %struct.rk805_reg_sc*, %struct.rk805_reg_sc** %10, align 8
  %25 = load %struct.rk805_reg_sc*, %struct.rk805_reg_sc** %10, align 8
  %26 = getelementptr inbounds %struct.rk805_reg_sc, %struct.rk805_reg_sc* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 (%struct.rk805_reg_sc*, i8*, i32, i32, ...) @dprintf(%struct.rk805_reg_sc* %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30, i32 %31)
  %33 = load %struct.rk805_reg_sc*, %struct.rk805_reg_sc** %10, align 8
  %34 = getelementptr inbounds %struct.rk805_reg_sc, %struct.rk805_reg_sc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.rk805_reg_sc*, %struct.rk805_reg_sc** %10, align 8
  %37 = getelementptr inbounds %struct.rk805_reg_sc, %struct.rk805_reg_sc* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @rk805_read(i32 %35, i32 %40, i32* %11, i32 1)
  %42 = load %struct.rk805_reg_sc*, %struct.rk805_reg_sc** %10, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i64 @rk805_regnode_voltage_to_reg(%struct.rk805_reg_sc* %42, i32 %43, i32 %44, i32* %11)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %23
  %48 = load i32, i32* @ERANGE, align 4
  store i32 %48, i32* %5, align 4
  br label %81

49:                                               ; preds = %23
  %50 = load %struct.rk805_reg_sc*, %struct.rk805_reg_sc** %10, align 8
  %51 = getelementptr inbounds %struct.rk805_reg_sc, %struct.rk805_reg_sc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.rk805_reg_sc*, %struct.rk805_reg_sc** %10, align 8
  %54 = getelementptr inbounds %struct.rk805_reg_sc, %struct.rk805_reg_sc* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @rk805_write(i32 %52, i32 %57, i32 %58)
  %60 = load %struct.rk805_reg_sc*, %struct.rk805_reg_sc** %10, align 8
  %61 = getelementptr inbounds %struct.rk805_reg_sc, %struct.rk805_reg_sc* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.rk805_reg_sc*, %struct.rk805_reg_sc** %10, align 8
  %64 = getelementptr inbounds %struct.rk805_reg_sc, %struct.rk805_reg_sc* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @rk805_read(i32 %62, i32 %67, i32* %11, i32 1)
  %69 = load i32*, i32** %9, align 8
  store i32 0, i32* %69, align 4
  %70 = load %struct.rk805_reg_sc*, %struct.rk805_reg_sc** %10, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @rk805_regnode_reg_to_voltage(%struct.rk805_reg_sc* %70, i32 %71, i32* %12)
  %73 = load %struct.rk805_reg_sc*, %struct.rk805_reg_sc** %10, align 8
  %74 = load %struct.rk805_reg_sc*, %struct.rk805_reg_sc** %10, align 8
  %75 = getelementptr inbounds %struct.rk805_reg_sc, %struct.rk805_reg_sc* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %12, align 4
  %80 = call i32 (%struct.rk805_reg_sc*, i8*, i32, i32, ...) @dprintf(%struct.rk805_reg_sc* %73, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %78, i32 %79)
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %49, %47, %21
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local %struct.rk805_reg_sc* @regnode_get_softc(%struct.regnode*) #1

declare dso_local i32 @dprintf(%struct.rk805_reg_sc*, i8*, i32, i32, ...) #1

declare dso_local i32 @rk805_read(i32, i32, i32*, i32) #1

declare dso_local i64 @rk805_regnode_voltage_to_reg(%struct.rk805_reg_sc*, i32, i32, i32*) #1

declare dso_local i32 @rk805_write(i32, i32, i32) #1

declare dso_local i32 @rk805_regnode_reg_to_voltage(%struct.rk805_reg_sc*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
