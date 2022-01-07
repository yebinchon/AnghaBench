; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_as3722_regulators.c_as3722_regnode_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_as3722_regulators.c_as3722_regnode_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regnode = type { i32 }
%struct.as3722_reg_sc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regnode*, i32, i32*)* @as3722_regnode_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as3722_regnode_enable(%struct.regnode* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.regnode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.as3722_reg_sc*, align 8
  %8 = alloca i32, align 4
  store %struct.regnode* %0, %struct.regnode** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.regnode*, %struct.regnode** %4, align 8
  %10 = call %struct.as3722_reg_sc* @regnode_get_softc(%struct.regnode* %9)
  store %struct.as3722_reg_sc* %10, %struct.as3722_reg_sc** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load %struct.as3722_reg_sc*, %struct.as3722_reg_sc** %7, align 8
  %15 = call i32 @as3722_reg_enable(%struct.as3722_reg_sc* %14)
  store i32 %15, i32* %8, align 4
  br label %19

16:                                               ; preds = %3
  %17 = load %struct.as3722_reg_sc*, %struct.as3722_reg_sc** %7, align 8
  %18 = call i32 @as3722_reg_disable(%struct.as3722_reg_sc* %17)
  store i32 %18, i32* %8, align 4
  br label %19

19:                                               ; preds = %16, %13
  %20 = load %struct.as3722_reg_sc*, %struct.as3722_reg_sc** %7, align 8
  %21 = getelementptr inbounds %struct.as3722_reg_sc, %struct.as3722_reg_sc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %6, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %8, align 4
  ret i32 %24
}

declare dso_local %struct.as3722_reg_sc* @regnode_get_softc(%struct.regnode*) #1

declare dso_local i32 @as3722_reg_enable(%struct.as3722_reg_sc*) #1

declare dso_local i32 @as3722_reg_disable(%struct.as3722_reg_sc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
