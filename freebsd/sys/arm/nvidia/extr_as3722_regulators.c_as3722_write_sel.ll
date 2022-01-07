; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_as3722_regulators.c_as3722_write_sel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_as3722_regulators.c_as3722_write_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as3722_reg_sc = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.as3722_reg_sc*, i32)* @as3722_write_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as3722_write_sel(%struct.as3722_reg_sc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.as3722_reg_sc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.as3722_reg_sc* %0, %struct.as3722_reg_sc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.as3722_reg_sc*, %struct.as3722_reg_sc** %4, align 8
  %8 = getelementptr inbounds %struct.as3722_reg_sc, %struct.as3722_reg_sc* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ffs(i32 %11)
  %13 = sub nsw i32 %12, 1
  %14 = load i32, i32* %5, align 4
  %15 = shl i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load %struct.as3722_reg_sc*, %struct.as3722_reg_sc** %4, align 8
  %17 = getelementptr inbounds %struct.as3722_reg_sc, %struct.as3722_reg_sc* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load %struct.as3722_reg_sc*, %struct.as3722_reg_sc** %4, align 8
  %24 = getelementptr inbounds %struct.as3722_reg_sc, %struct.as3722_reg_sc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.as3722_reg_sc*, %struct.as3722_reg_sc** %4, align 8
  %27 = getelementptr inbounds %struct.as3722_reg_sc, %struct.as3722_reg_sc* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.as3722_reg_sc*, %struct.as3722_reg_sc** %4, align 8
  %32 = getelementptr inbounds %struct.as3722_reg_sc, %struct.as3722_reg_sc* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @RM1(i32 %25, i32 %30, i32 %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %2
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %44

42:                                               ; preds = %2
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @RM1(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
