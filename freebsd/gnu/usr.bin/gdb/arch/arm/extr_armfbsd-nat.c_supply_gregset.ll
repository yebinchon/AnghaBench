; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/arch/arm/extr_armfbsd-nat.c_supply_gregset.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/arch/arm/extr_armfbsd-nat.c_supply_gregset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg = type { i32, i32, i32, i32, i32* }

@ARM_A1_REGNUM = common dso_local global i32 0, align 4
@ARM_SP_REGNUM = common dso_local global i32 0, align 4
@ARM_LR_REGNUM = common dso_local global i32 0, align 4
@ARM_PC_REGNUM = common dso_local global i32 0, align 4
@arm_apcs_32 = common dso_local global i64 0, align 8
@ARM_PS_REGNUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @supply_gregset(%struct.reg* %0) #0 {
  %2 = alloca %struct.reg*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.reg* %0, %struct.reg** %2, align 8
  %5 = load i32, i32* @ARM_A1_REGNUM, align 4
  store i32 %5, i32* %3, align 4
  br label %6

6:                                                ; preds = %20, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @ARM_SP_REGNUM, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %6
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.reg*, %struct.reg** %2, align 8
  %13 = getelementptr inbounds %struct.reg, %struct.reg* %12, i32 0, i32 4
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = bitcast i32* %17 to i8*
  %19 = call i32 @supply_register(i32 %11, i8* %18)
  br label %20

20:                                               ; preds = %10
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %6

23:                                               ; preds = %6
  %24 = load i32, i32* @ARM_SP_REGNUM, align 4
  %25 = load %struct.reg*, %struct.reg** %2, align 8
  %26 = getelementptr inbounds %struct.reg, %struct.reg* %25, i32 0, i32 3
  %27 = bitcast i32* %26 to i8*
  %28 = call i32 @supply_register(i32 %24, i8* %27)
  %29 = load i32, i32* @ARM_LR_REGNUM, align 4
  %30 = load %struct.reg*, %struct.reg** %2, align 8
  %31 = getelementptr inbounds %struct.reg, %struct.reg* %30, i32 0, i32 2
  %32 = bitcast i32* %31 to i8*
  %33 = call i32 @supply_register(i32 %29, i8* %32)
  %34 = load i32, i32* @ARM_PC_REGNUM, align 4
  %35 = load %struct.reg*, %struct.reg** %2, align 8
  %36 = getelementptr inbounds %struct.reg, %struct.reg* %35, i32 0, i32 0
  %37 = bitcast i32* %36 to i8*
  %38 = call i32 @supply_register(i32 %34, i8* %37)
  %39 = load i64, i64* @arm_apcs_32, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %23
  %42 = load i32, i32* @ARM_PS_REGNUM, align 4
  %43 = load %struct.reg*, %struct.reg** %2, align 8
  %44 = getelementptr inbounds %struct.reg, %struct.reg* %43, i32 0, i32 1
  %45 = bitcast i32* %44 to i8*
  %46 = call i32 @supply_register(i32 %42, i8* %45)
  br label %53

47:                                               ; preds = %23
  %48 = load i32, i32* @ARM_PS_REGNUM, align 4
  %49 = load %struct.reg*, %struct.reg** %2, align 8
  %50 = getelementptr inbounds %struct.reg, %struct.reg* %49, i32 0, i32 0
  %51 = bitcast i32* %50 to i8*
  %52 = call i32 @supply_register(i32 %48, i8* %51)
  br label %53

53:                                               ; preds = %47, %41
  ret void
}

declare dso_local i32 @supply_register(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
