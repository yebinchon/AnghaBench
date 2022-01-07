; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_as3722_regulators.c_as3722_regnode_get_volt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_as3722_regulators.c_as3722_regnode_get_volt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regnode = type { i32 }
%struct.as3722_reg_sc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32 }

@AS3722_REG_ID_LDO6 = common dso_local global i64 0, align 8
@AS3722_LDO6_SEL_BYPASS = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regnode*, i32*)* @as3722_regnode_get_volt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as3722_regnode_get_volt(%struct.regnode* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regnode*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.as3722_reg_sc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.regnode* %0, %struct.regnode** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.regnode*, %struct.regnode** %4, align 8
  %10 = call %struct.as3722_reg_sc* @regnode_get_softc(%struct.regnode* %9)
  store %struct.as3722_reg_sc* %10, %struct.as3722_reg_sc** %6, align 8
  %11 = load %struct.as3722_reg_sc*, %struct.as3722_reg_sc** %6, align 8
  %12 = call i32 @as3722_read_sel(%struct.as3722_reg_sc* %11, i64* %7)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %46

17:                                               ; preds = %2
  %18 = load %struct.as3722_reg_sc*, %struct.as3722_reg_sc** %6, align 8
  %19 = getelementptr inbounds %struct.as3722_reg_sc, %struct.as3722_reg_sc* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AS3722_REG_ID_LDO6, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @AS3722_LDO6_SEL_BYPASS, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @ENOENT, align 4
  store i32 %30, i32* %3, align 4
  br label %46

31:                                               ; preds = %25, %17
  %32 = load %struct.as3722_reg_sc*, %struct.as3722_reg_sc** %6, align 8
  %33 = getelementptr inbounds %struct.as3722_reg_sc, %struct.as3722_reg_sc* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.as3722_reg_sc*, %struct.as3722_reg_sc** %6, align 8
  %38 = getelementptr inbounds %struct.as3722_reg_sc, %struct.as3722_reg_sc* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @regulator_range_sel8_to_volt(i32 %36, i32 %41, i64 %42, i32* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %31, %29, %15
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.as3722_reg_sc* @regnode_get_softc(%struct.regnode*) #1

declare dso_local i32 @as3722_read_sel(%struct.as3722_reg_sc*, i64*) #1

declare dso_local i32 @regulator_range_sel8_to_volt(i32, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
