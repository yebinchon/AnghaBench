; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_as3722_regulators.c_as3722_regnode_set_volt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_as3722_regulators.c_as3722_regnode_set_volt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regnode = type { i32 }
%struct.as3722_reg_sc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regnode*, i32, i32, i32*)* @as3722_regnode_set_volt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as3722_regnode_set_volt(%struct.regnode* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.regnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.as3722_reg_sc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.regnode* %0, %struct.regnode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load %struct.regnode*, %struct.regnode** %6, align 8
  %14 = call %struct.as3722_reg_sc* @regnode_get_softc(%struct.regnode* %13)
  store %struct.as3722_reg_sc* %14, %struct.as3722_reg_sc** %10, align 8
  %15 = load i32*, i32** %9, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct.as3722_reg_sc*, %struct.as3722_reg_sc** %10, align 8
  %17 = getelementptr inbounds %struct.as3722_reg_sc, %struct.as3722_reg_sc* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.as3722_reg_sc*, %struct.as3722_reg_sc** %10, align 8
  %22 = getelementptr inbounds %struct.as3722_reg_sc, %struct.as3722_reg_sc* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @regulator_range_volt_to_sel8(i32 %20, i32 %25, i32 %26, i32 %27, i32* %11)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %5, align 4
  br label %38

33:                                               ; preds = %4
  %34 = load %struct.as3722_reg_sc*, %struct.as3722_reg_sc** %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @as3722_write_sel(%struct.as3722_reg_sc* %34, i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %33, %31
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local %struct.as3722_reg_sc* @regnode_get_softc(%struct.regnode*) #1

declare dso_local i32 @regulator_range_volt_to_sel8(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @as3722_write_sel(%struct.as3722_reg_sc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
