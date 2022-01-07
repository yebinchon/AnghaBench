; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_mp.c_imx6_mp_setmaxid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_mp.c_imx6_mp_setmaxid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mp_ncpus = common dso_local global i32 0, align 4
@fdtbus_bs_tag = common dso_local global i32 0, align 4
@SCU_PHYSBASE = common dso_local global i32 0, align 4
@SCU_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Couldn't map the SCU\0A\00", align 1
@SCU_CONFIG_REG = common dso_local global i32 0, align 4
@SCU_CONFIG_REG_NCPU_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"hw.ncpu\00", align 1
@mp_maxid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @imx6_mp_setmaxid(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @mp_ncpus, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %45

10:                                               ; preds = %1
  %11 = load i32, i32* @fdtbus_bs_tag, align 4
  %12 = load i32, i32* @SCU_PHYSBASE, align 4
  %13 = load i32, i32* @SCU_SIZE, align 4
  %14 = call i64 @bus_space_map(i32 %11, i32 %12, i32 %13, i32 0, i32* %3)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %10
  %19 = load i32, i32* @fdtbus_bs_tag, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @SCU_CONFIG_REG, align 4
  %22 = call i32 @bus_space_read_4(i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @SCU_CONFIG_REG_NCPU_MASK, align 4
  %25 = and i32 %23, %24
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* @fdtbus_bs_tag, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @SCU_SIZE, align 4
  %30 = call i32 @bus_space_unmap(i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %5, align 4
  %32 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %5)
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 1
  br i1 %34, label %39, label %35

35:                                               ; preds = %18
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35, %18
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %39, %35
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* @mp_ncpus, align 4
  %43 = load i32, i32* %5, align 4
  %44 = sub nsw i32 %43, 1
  store i32 %44, i32* @mp_maxid, align 4
  br label %45

45:                                               ; preds = %41, %9
  ret void
}

declare dso_local i64 @bus_space_map(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @bus_space_read_4(i32, i32, i32) #1

declare dso_local i32 @bus_space_unmap(i32, i32, i32) #1

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
