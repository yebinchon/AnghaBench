; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_axp209.c_axp2xx_regnode_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_axp209.c_axp2xx_regnode_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regnode = type { i32 }
%struct.axp2xx_reg_sc = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regnode*, i32, i32*)* @axp2xx_regnode_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp2xx_regnode_enable(%struct.regnode* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.regnode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.axp2xx_reg_sc*, align 8
  %8 = alloca i32, align 4
  store %struct.regnode* %0, %struct.regnode** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.regnode*, %struct.regnode** %4, align 8
  %10 = call %struct.axp2xx_reg_sc* @regnode_get_softc(%struct.regnode* %9)
  store %struct.axp2xx_reg_sc* %10, %struct.axp2xx_reg_sc** %7, align 8
  %11 = load %struct.axp2xx_reg_sc*, %struct.axp2xx_reg_sc** %7, align 8
  %12 = getelementptr inbounds %struct.axp2xx_reg_sc, %struct.axp2xx_reg_sc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.axp2xx_reg_sc*, %struct.axp2xx_reg_sc** %7, align 8
  %15 = getelementptr inbounds %struct.axp2xx_reg_sc, %struct.axp2xx_reg_sc* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @axp2xx_read(i32 %13, i32 %18, i32* %8, i32 1)
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %3
  %23 = load %struct.axp2xx_reg_sc*, %struct.axp2xx_reg_sc** %7, align 8
  %24 = getelementptr inbounds %struct.axp2xx_reg_sc, %struct.axp2xx_reg_sc* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %8, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %8, align 4
  br label %39

30:                                               ; preds = %3
  %31 = load %struct.axp2xx_reg_sc*, %struct.axp2xx_reg_sc** %7, align 8
  %32 = getelementptr inbounds %struct.axp2xx_reg_sc, %struct.axp2xx_reg_sc* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %30, %22
  %40 = load %struct.axp2xx_reg_sc*, %struct.axp2xx_reg_sc** %7, align 8
  %41 = getelementptr inbounds %struct.axp2xx_reg_sc, %struct.axp2xx_reg_sc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.axp2xx_reg_sc*, %struct.axp2xx_reg_sc** %7, align 8
  %44 = getelementptr inbounds %struct.axp2xx_reg_sc, %struct.axp2xx_reg_sc* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @axp2xx_write(i32 %42, i32 %47, i32 %48)
  %50 = load i32*, i32** %6, align 8
  store i32 0, i32* %50, align 4
  ret i32 0
}

declare dso_local %struct.axp2xx_reg_sc* @regnode_get_softc(%struct.regnode*) #1

declare dso_local i32 @axp2xx_read(i32, i32, i32*, i32) #1

declare dso_local i32 @axp2xx_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
