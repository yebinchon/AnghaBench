; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_axp81x.c_axp8xx_regnode_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_axp81x.c_axp8xx_regnode_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regnode = type { i32 }
%struct.axp8xx_reg_sc = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"%sable %s (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"En\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Dis\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regnode*, i32, i32*)* @axp8xx_regnode_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp8xx_regnode_enable(%struct.regnode* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.regnode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.axp8xx_reg_sc*, align 8
  %8 = alloca i32, align 4
  store %struct.regnode* %0, %struct.regnode** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.regnode*, %struct.regnode** %4, align 8
  %10 = call %struct.axp8xx_reg_sc* @regnode_get_softc(%struct.regnode* %9)
  store %struct.axp8xx_reg_sc* %10, %struct.axp8xx_reg_sc** %7, align 8
  %11 = load i64, i64* @bootverbose, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %3
  %14 = load %struct.axp8xx_reg_sc*, %struct.axp8xx_reg_sc** %7, align 8
  %15 = getelementptr inbounds %struct.axp8xx_reg_sc, %struct.axp8xx_reg_sc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %21 = load %struct.regnode*, %struct.regnode** %4, align 8
  %22 = call i32 @regnode_get_name(%struct.regnode* %21)
  %23 = load %struct.axp8xx_reg_sc*, %struct.axp8xx_reg_sc** %7, align 8
  %24 = getelementptr inbounds %struct.axp8xx_reg_sc, %struct.axp8xx_reg_sc* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @device_printf(i32 %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %20, i32 %22, i32 %27)
  br label %29

29:                                               ; preds = %13, %3
  %30 = load %struct.axp8xx_reg_sc*, %struct.axp8xx_reg_sc** %7, align 8
  %31 = getelementptr inbounds %struct.axp8xx_reg_sc, %struct.axp8xx_reg_sc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.axp8xx_reg_sc*, %struct.axp8xx_reg_sc** %7, align 8
  %34 = getelementptr inbounds %struct.axp8xx_reg_sc, %struct.axp8xx_reg_sc* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @axp8xx_read(i32 %32, i32 %37, i32* %8, i32 1)
  %39 = load %struct.axp8xx_reg_sc*, %struct.axp8xx_reg_sc** %7, align 8
  %40 = getelementptr inbounds %struct.axp8xx_reg_sc, %struct.axp8xx_reg_sc* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %29
  %50 = load %struct.axp8xx_reg_sc*, %struct.axp8xx_reg_sc** %7, align 8
  %51 = getelementptr inbounds %struct.axp8xx_reg_sc, %struct.axp8xx_reg_sc* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %8, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %8, align 4
  br label %82

57:                                               ; preds = %29
  %58 = load %struct.axp8xx_reg_sc*, %struct.axp8xx_reg_sc** %7, align 8
  %59 = getelementptr inbounds %struct.axp8xx_reg_sc, %struct.axp8xx_reg_sc* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %57
  %65 = load %struct.axp8xx_reg_sc*, %struct.axp8xx_reg_sc** %7, align 8
  %66 = getelementptr inbounds %struct.axp8xx_reg_sc, %struct.axp8xx_reg_sc* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %8, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %8, align 4
  br label %81

72:                                               ; preds = %57
  %73 = load %struct.axp8xx_reg_sc*, %struct.axp8xx_reg_sc** %7, align 8
  %74 = getelementptr inbounds %struct.axp8xx_reg_sc, %struct.axp8xx_reg_sc* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %8, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %72, %64
  br label %82

82:                                               ; preds = %81, %49
  %83 = load %struct.axp8xx_reg_sc*, %struct.axp8xx_reg_sc** %7, align 8
  %84 = getelementptr inbounds %struct.axp8xx_reg_sc, %struct.axp8xx_reg_sc* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.axp8xx_reg_sc*, %struct.axp8xx_reg_sc** %7, align 8
  %87 = getelementptr inbounds %struct.axp8xx_reg_sc, %struct.axp8xx_reg_sc* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @axp8xx_write(i32 %85, i32 %90, i32 %91)
  %93 = load i32*, i32** %6, align 8
  store i32 0, i32* %93, align 4
  ret i32 0
}

declare dso_local %struct.axp8xx_reg_sc* @regnode_get_softc(%struct.regnode*) #1

declare dso_local i32 @device_printf(i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @regnode_get_name(%struct.regnode*) #1

declare dso_local i32 @axp8xx_read(i32, i32, i32*, i32) #1

declare dso_local i32 @axp8xx_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
