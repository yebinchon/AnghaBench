; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk805.c_rk805_regnode_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk805.c_rk805_regnode_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regnode = type { i32 }
%struct.rk805_reg_sc = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"%sabling regulator %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"En\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Dis\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regnode*, i32, i32*)* @rk805_regnode_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk805_regnode_enable(%struct.regnode* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.regnode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.rk805_reg_sc*, align 8
  %8 = alloca i32, align 4
  store %struct.regnode* %0, %struct.regnode** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.regnode*, %struct.regnode** %4, align 8
  %10 = call %struct.rk805_reg_sc* @regnode_get_softc(%struct.regnode* %9)
  store %struct.rk805_reg_sc* %10, %struct.rk805_reg_sc** %7, align 8
  %11 = load %struct.rk805_reg_sc*, %struct.rk805_reg_sc** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %16 = load %struct.rk805_reg_sc*, %struct.rk805_reg_sc** %7, align 8
  %17 = getelementptr inbounds %struct.rk805_reg_sc, %struct.rk805_reg_sc* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dprintf(%struct.rk805_reg_sc* %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %15, i32 %20)
  %22 = load %struct.rk805_reg_sc*, %struct.rk805_reg_sc** %7, align 8
  %23 = getelementptr inbounds %struct.rk805_reg_sc, %struct.rk805_reg_sc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.rk805_reg_sc*, %struct.rk805_reg_sc** %7, align 8
  %26 = getelementptr inbounds %struct.rk805_reg_sc, %struct.rk805_reg_sc* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @rk805_read(i32 %24, i32 %29, i32* %8, i32 1)
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %3
  %34 = load %struct.rk805_reg_sc*, %struct.rk805_reg_sc** %7, align 8
  %35 = getelementptr inbounds %struct.rk805_reg_sc, %struct.rk805_reg_sc* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %8, align 4
  br label %50

41:                                               ; preds = %3
  %42 = load %struct.rk805_reg_sc*, %struct.rk805_reg_sc** %7, align 8
  %43 = getelementptr inbounds %struct.rk805_reg_sc, %struct.rk805_reg_sc* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %41, %33
  %51 = load %struct.rk805_reg_sc*, %struct.rk805_reg_sc** %7, align 8
  %52 = getelementptr inbounds %struct.rk805_reg_sc, %struct.rk805_reg_sc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.rk805_reg_sc*, %struct.rk805_reg_sc** %7, align 8
  %55 = getelementptr inbounds %struct.rk805_reg_sc, %struct.rk805_reg_sc* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @rk805_write(i32 %53, i32 %58, i32 %59)
  %61 = load i32*, i32** %6, align 8
  store i32 0, i32* %61, align 4
  ret i32 0
}

declare dso_local %struct.rk805_reg_sc* @regnode_get_softc(%struct.regnode*) #1

declare dso_local i32 @dprintf(%struct.rk805_reg_sc*, i8*, i8*, i32) #1

declare dso_local i32 @rk805_read(i32, i32, i32*, i32) #1

declare dso_local i32 @rk805_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
