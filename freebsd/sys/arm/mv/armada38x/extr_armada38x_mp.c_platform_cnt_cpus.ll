; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/armada38x/extr_armada38x_mp.c_platform_cnt_cpus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/armada38x/extr_armada38x_mp.c_platform_cnt_cpus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"/cpus\00", align 1
@mp_ncpus = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@fdtbus_bs_tag = common dso_local global i32 0, align 4
@MV_SCU_BASE = common dso_local global i64 0, align 8
@MV_SCU_REGS_LEN = common dso_local global i32 0, align 4
@MV_SCU_REG_CONFIG = common dso_local global i32 0, align 4
@SCU_CFG_REG_NCPU_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @platform_cnt_cpus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @platform_cnt_cpus() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [16 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = call i32 @OF_finddevice(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %14

13:                                               ; preds = %0
  store i32 1, i32* @mp_ncpus, align 4
  store i32 0, i32* %1, align 4
  br label %68

14:                                               ; preds = %0
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @OF_child(i32 %15)
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %37, %14
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %17
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %22 = call i32 @memset(i8* %21, i32 0, i32 16)
  %23 = load i32, i32* %4, align 4
  %24 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %25 = call i32 @OF_getprop(i32 %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %24, i32 15)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %37

29:                                               ; preds = %20
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %31 = call i64 @strcmp(i8* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %37

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %34, %33, %28
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @OF_peer(i32 %38)
  store i32 %39, i32* %4, align 4
  br label %17

40:                                               ; preds = %17
  %41 = load i32, i32* @fdtbus_bs_tag, align 4
  %42 = load i64, i64* @MV_SCU_BASE, align 8
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* @MV_SCU_REGS_LEN, align 4
  %45 = call i32 @bus_space_map(i32 %41, i32 %43, i32 %44, i32 0, i32* %2)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store i32 1, i32* @mp_ncpus, align 4
  store i32 0, i32* %1, align 4
  br label %68

49:                                               ; preds = %40
  %50 = load i32, i32* @fdtbus_bs_tag, align 4
  %51 = load i32, i32* %2, align 4
  %52 = load i32, i32* @MV_SCU_REG_CONFIG, align 4
  %53 = call i32 @bus_space_read_4(i32 %50, i32 %51, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* @fdtbus_bs_tag, align 4
  %55 = load i32, i32* %2, align 4
  %56 = load i32, i32* @MV_SCU_REGS_LEN, align 4
  %57 = call i32 @bus_space_unmap(i32 %54, i32 %55, i32 %56)
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @SCU_CFG_REG_NCPU_MASK, align 4
  %60 = and i32 %58, %59
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @min(i32 %62, i32 %63)
  store i32 %64, i32* @mp_ncpus, align 4
  %65 = load i32, i32* @mp_ncpus, align 4
  %66 = call i32 @max(i32 1, i32 %65)
  store i32 %66, i32* @mp_ncpus, align 4
  %67 = load i32, i32* @mp_ncpus, align 4
  store i32 %67, i32* %1, align 4
  br label %68

68:                                               ; preds = %49, %48, %13
  %69 = load i32, i32* %1, align 4
  ret i32 %69
}

declare dso_local i32 @OF_finddevice(i8*) #1

declare dso_local i32 @OF_child(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @OF_getprop(i32, i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @OF_peer(i32) #1

declare dso_local i32 @bus_space_map(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @bus_space_read_4(i32, i32, i32) #1

declare dso_local i32 @bus_space_unmap(i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
